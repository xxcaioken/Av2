const { Router } = require('express');
const PartidasController = require("../controller/partidasController");
const partidasRoutes = Router();

// Controller
const partidasController = new PartidasController();

// Rotas
partidasRoutes.post('/create', partidasController.create);
partidasRoutes.get('/show', partidasController.show);

// Exporta
module.exports = partidasRoutes;
