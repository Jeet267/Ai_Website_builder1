import mongoose from "mongoose";

let connectionPromise = null;

export async function connectToDatabase() {
    if (mongoose.connection.readyState === 1) return;

    if (!connectionPromise) {
        connectionPromise = mongoose
            .connect(process.env.MONGODB_URI, { serverSelectionTimeoutMS: 5000 })
            .then(() => console.log("Successfully connected to MongoDB."))
            .catch((err) => {
                connectionPromise = null;
                throw err;
            });
    }
    await connectionPromise;
}