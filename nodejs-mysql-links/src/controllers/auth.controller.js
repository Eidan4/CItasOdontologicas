import passport from "passport";

//Pacientes
export const renderSignUp = (req, res) => {
  res.render("auth/signup");
};

export const signUp = passport.authenticate("local.signup", {
  successRedirect: "/profile",
  failureRedirect: "/signup",
  failureFlash: true,
});

export const renderSignIn = (req, res, next) => {
  res.render("auth/signin");
};

export const signIn = passport.authenticate("local.signin", {
  successRedirect: "/profile",
  failureRedirect: "/signin",
  failureFlash: true,
});

//SALIR
export const logout = (req, res, next) => {
  req.logout();
  res.redirect("/");
};


//Odontologo
export const renderSignUpod = (req, res) => {
  res.render("auth/signupod");
};

export const signUpod = passport.authenticate("local.signupod", {
  successRedirect: "/profileod",
  failureRedirect: "/signupod",
  failureFlash: true,
});

export const renderSignInod = (req, res, next) => {
  res.render("auth/signinod");
};

export const signInod = passport.authenticate("local.signinod", {
  successRedirect: "/profileod",
  failureRedirect: "/signinod",
  failureFlash: true,
});