const controller = require("../controllers/movie.controller");

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  app.post("/api/create", controller.create);
  app.get("/api/:id", controller.findOne);
  app.put("/api/:id", controller.update);
  app.delete("/api/:id", controller.delete);
}