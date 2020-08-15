import Koa from "koa";
import Router from "koa-router";

// import * as logger from "koa-logger";
// import * as json from "koa-json";

const app = new Koa();
const router = new Router();

router.get("/", (ctx: Koa.context) => {
  ctx.body = "Hello There!";
  // await next();
});

// app.use(json());
// app.use(logger());

app.use(router.routes());
// app.use(router.routes()).use(router.allowedMethods());

export = app;
