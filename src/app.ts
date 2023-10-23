import express, { Express } from "express";
import cookieParser from 'cookie-parser'
import cors from "cors";

import * as middlewares from "./middlewares";
import * as api from "./api/routes";

require("dotenv").config();

const app: Express = express();
const port = process.env.PORT;

app.set("json spaces", 2);
app.use(express.urlencoded({ extended: true }));
app.use(cors());
app.use(express.json());
app.use(cookieParser())

// API Endpoints
app.use("/collection", api.collectionRoutes);
app.use("/assets/nft", api.nftRoutes);
app.use("/auth", api.authRoutes);

// Middlewares
app.use(middlewares.notFound);
app.use(middlewares.errorHandler);

// Starting Server
app.listen(port, () => {
  console.log(`[server]: The server is running at http://localhost:${port}`);
});

export default app;
