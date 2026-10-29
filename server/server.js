import express from "express";
import "dotenv/config";
import cors from "cors";
import cookieParser from "cookie-parser";
import { connectToDatabase } from "./config/db.js";
import authRouter from "./routes/authRoutes.js";
import projectRouter from "./routes/projectRoutes.js";

const app = express();

app.use(cors({ origin: (process.env.ORIGINS || "").split(","), credentials: true }));
app.use(cookieParser());
app.use(express.json());

app.get("/", (req, res) => res.send("Server is Live!"));

app.use(async (req, res, next) => {
    try {
        await connectToDatabase();
        next();
    } catch (err) {
        next(err);
    }
});

app.use("/api/auth", authRouter);
app.use("/api/projects", projectRouter);

app.use((err, _req, res, _next) => {
    console.error(`[Error] ${err.message}`);
    res.status(500).json({ error: err.message });
});

if (!process.env.VERCEL) {
    const port = process.env.PORT || 3000;
    app.listen(port, () => console.log(`Server is running at http://localhost:${port}`));
}

export default app;