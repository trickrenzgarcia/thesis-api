import { Router } from "express";

import * as controller from "../controllers";

const collectionRoutes = Router();

collectionRoutes.get("/", controller.getCollection);

collectionRoutes.get("/:address", controller.getCollection);

collectionRoutes.post("/:address", controller.createCollection);

export { collectionRoutes };
