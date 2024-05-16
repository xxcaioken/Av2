const { Router } = require('express');
const TimesController = require("../controller/timesController");
const timesRoutes = Router();

// Controller
const timesController = new TimesController();

// Rotas
timesRoutes.post('/create', timesController.create);
timesRoutes.get('/show', timesController.show);
timesRoutes.get('/showPlayers', timesController.pegaJogadores);
timesRoutes.post('/adicionaJogador', timesController.adicionaJogadores);
timesRoutes.put('/update', timesController.update);
timesRoutes.delete('/delete', timesController.delete);

// Exporta
module.exports = timesRoutes;
