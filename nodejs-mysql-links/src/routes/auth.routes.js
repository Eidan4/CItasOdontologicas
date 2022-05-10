import { Router } from "express";
const router = Router();

import {
  renderSignUp,
  signUp,
  renderSignIn,
  signIn,
  logout,
  renderSignUpod,
  signUpod,
  renderSignInod,
  signInod
} from "../controllers/auth.controller";

//Pacientes
// SIGNUP
router.get("/signup", renderSignUp);
router.post("/signup", signUp);

// SINGIN
router.get("/signin", renderSignIn);
router.post("/signin", signIn);

router.get("/logout", logout);

export default router;

//Odontologo
//SINGIN ODONTOLOGO
router.get("/signupod", renderSignUpod);
router.post("/signupod", signUpod);

//SINGUP ODONTOLOGO
router.get("/signinod", renderSignInod);
router.post("/signinod", signInod);
