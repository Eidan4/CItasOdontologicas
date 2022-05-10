import { Router } from "express";
import { isLoggedInod } from "../lib/auth";
import { renderOdontologoProfile } from "../controllers/odontologo.controller";


const router = Router();

router.get("/profileod", isLoggedInod, renderOdontologoProfile);

export default router;
