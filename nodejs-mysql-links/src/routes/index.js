import { Router } from "express";
import auth from "./auth.routes";
import index from "./index.routes";
import links from "./links.routes";
import user from "./user.routes";
import odontologo from "./odontologo.routes"
import pacientes from "./pacientes.routes";

const router = Router();

router.use(index);
router.use(auth);
router.use(odontologo);
router.use(user);
router.use("/links", links);
router.use("/pacientes", pacientes);

export default router;
