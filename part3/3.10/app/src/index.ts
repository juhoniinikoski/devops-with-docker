import { Hono } from "hono";
import { serve } from "@hono/node-server";

const app = new Hono();

app.get("/ping", (c) => c.text("pong"));

const port = 4000;
console.log(`Server is running on port ${port}`);

serve({
  fetch: app.fetch,
  port,
});
