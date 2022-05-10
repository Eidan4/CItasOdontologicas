import { Router } from "express";
import { isLoggedInod } from "../lib/auth";
import {
  renderAddLink,
  addLink,
  renderLinks,
  deleteLink,
  editLink,
  renderEditLink,
} from "../controllers/pacientes.controller";

const router = Router();
// Authorization
router.use(isLoggedInod);

// Routes
router.get("/add", renderAddLink);
router.post("/add", addLink);
router.get("/", isLoggedInod, renderLinks);
router.get("/delete/:id", deleteLink);
router.get("/edit/:id", renderEditLink);
router.post("/edit/:id", editLink);

export default router;