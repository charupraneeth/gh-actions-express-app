const express = require("express");
const morgan = require("morgan");

const app = express();
/* eslint-disable */
const port = process.env.PORT || 1337;
/* eslint-enable */
app.use(morgan("combined"));

app.get("/", (req, res) => {
  res.json({
    message: "hello 👋 from the index route ",
  });
});

function notFound(req, res, next) {
  res.status(404);
  const error = new Error(`Not found - ${req.originalUrl}`);
  next(error);
}

function errorHandler(err, req, res, next) {
  res.status(res.statusCode || 500);
  res.json({
    message: err.message,
    stack: process.env.NODE_ENV == "development" ? err.stack : "🍔",
  });
}

app.use(notFound);
app.use(errorHandler);

app.listen(port, () => console.log(`app listening at port : ${port}`));
