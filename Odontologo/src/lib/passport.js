/*import passport from "passport";
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
        "SELECT * FROM odontologo WHERE username = ?",
        [username]
      );
      if (rows.length > 0) {
        const user = rows[0];
        const validPassword = await helpers.matchPassword(
          password,
          user.password
        );
        if (validPassword) {
          done(null, user, req.flash("success", "Welcome " + user.username));
        } else {
          done(null, false, req.flash("message", "Incorrect Password"));
        }
      } else {
        return done(
          null,
          false,
          req.flash("message", "The Username does not exists.")
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
    async (req, username, password, done) => {
      const { od_nombre,od_apellido,idgenero,idrh,idtipoidentidad,idConsultorio,idestadocivil, od_fechanacimiento, od_telefonocelular,od_especialidad,od_NTP,od_correo,od_direccion } = req.body;

      let newUser = {
        od_nombre,od_apellido,idgenero,idrh,idtipoidentidad,idConsultorio,idestadocivil, od_fechanacimiento, od_telefonocelular,od_especialidad,od_NTP,od_correo,od_direccion,username,password
      };

      newUser.password = await helpers.encryptPassword(password);

      // Saving in the Database
      const [result] = await pool.query("INSERT INTO odontologo SET ? ", newUser);
      newUser.id = result.insertId;
      return done(null, newUser);
    }
  )
);

passport.serializeUser((user, done) => {
  done(null, user.id);
});

passport.deserializeUser(async (id, done) => {
  const [rows] = await pool.query("SELECT * FROM odontologo WHERE id = ?", [id]);
  done(null, rows[0]);
});*/
