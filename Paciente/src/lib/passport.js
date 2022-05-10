import passport from "passport";
import { Strategy as LocalStrategy } from "passport-local";

import pool from "../database";
import * as helpers from "./helpers";

passport.use(
  "local.signin",
  new LocalStrategy(
    {
      usernameField: "username",
      passwordField: "password",
      passReqToCallback: true,
    },
    async (req, username, password, done) => {
      const [rows] = await pool.query(
        "SELECT * FROM pacientes WHERE username = ?",
        [username]
      );
      if (rows.length > 0) {
        const paciente = rows[0];
        const validPassword = await helpers.matchPassword(
          password,
          paciente.password
        );
        if (validPassword) {
          done(null, paciente, req.flash("success", "Welcome " + paciente.username));
        } else {
          done(null, false, req.flash("message", "Incorrect Password "));
        }
      } else {
        return done(
          null,
          false,
          req.flash("message", "The username does not exists.")
        );
      }
    }
  )
);

passport.use(
  "local.signup",
  new LocalStrategy(
    {
      usernameField: "username",
      passwordField: "password",
      passReqToCallback: true,
    },
    async (req,username, password, done) => {
      const { pa_nombre,pa_apellido,idgenero,pa_direccion,pa_ciudad,idestadocivil,pa_paisorigen,
        idrh,pa_correo, pa_telefonocelular,pa_telefonooficiona, idtipoidentidad,pa_fechanacimiento } = req.body;

      let newUser = {
        pa_nombre,
        pa_apellido,
        idgenero,
        pa_direccion,
        pa_ciudad,
        idestadocivil,
        pa_paisorigen,
        idrh,
        pa_correo,
        pa_telefonocelular,
        pa_telefonooficiona,
        username,
        idtipoidentidad,
        pa_fechanacimiento,
        password,
      };

      newUser.password = await helpers.encryptPassword(password);

      // Saving in the Database
      const [result] = await pool.query("INSERT INTO pacientes SET ? ", newUser);
      newUser.id = result.insertId;
      return done(null, newUser);
    }
  )
);

passport.serializeUser((user, done) => {
  done(null, user.id);
});

passport.deserializeUser(async (id, done) => {
  const [rows] = await pool.query("SELECT * FROM pacientes WHERE id = ?", [id]);
  done(null, rows[0]);
});

