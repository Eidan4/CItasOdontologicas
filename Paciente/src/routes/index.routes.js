import { Router } from "express";
const router = Router();

import { renderIndex } from "../controllers/index.conroller";
import {renderNostros,renderContactos,renderRedAtencion} from "../controllers/index.conroller";

router.get("/", renderIndex);
router.get("/contactos", renderContactos);
router.get("/nosotros",renderNostros);
router.get("/redAtencion", renderRedAtencion);

export default router;
