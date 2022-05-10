export const isLoggedIn = (req, res, next) => {
  if (req.isAuthenticated()) return next();
  res.redirect("/signin");
};

export const isLoggedInod = (req, res, next) => {
  if (req.isAuthenticated()) return next();
  res.redirect("/signinod");
};
