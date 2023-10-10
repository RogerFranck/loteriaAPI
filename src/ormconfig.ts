import { DataSource } from "typeorm";
import { Card } from "./entities/Card";
import { Table } from "./entities/Table";

export const AppDataSource = new DataSource({
  type: "mysql",
  host: "localhost",
  port: 3306,
  username: "root",
  password: "",
  database: "loteriadb",
  synchronize: true,
  entities: [Card, Table],
  logging: true,
});