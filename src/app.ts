import express from "express";
import morgan from "morgan";
import cors from "cors";

import cardRoutes from "./routes/card.routes";
import tableRoutes from "./routes/table.routes";

const app = express();
const apiRoute = "/api/v1"

app.use(cors());
app.use(morgan("dev"));
app.use(express.json());

app.use(apiRoute, cardRoutes);
app.use(apiRoute, tableRoutes);

export default app;