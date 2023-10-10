import "reflect-metadata"
import app from "./app";
import { PORT } from "./config";
import { AppDataSource } from "./ormconfig";

async function main() {
  try {
    await AppDataSource.initialize();
    app.listen(PORT);
    console.log("Server on port", PORT);
  } catch (error) {
    console.error(error);
  }
}

main();