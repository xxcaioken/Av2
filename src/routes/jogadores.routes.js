const { Router } = require('express');
const JogadoresController = require("../controller/JogadoresController");
const jogadoresRoutes = Router();

// Controller
const jogadoresController = new JogadoresController();

// Rotas
jogadoresRoutes.post('/create', jogadoresController.create);
jogadoresRoutes.get('/show', jogadoresController.show);
jogadoresRoutes.put('/update', jogadoresController.update);
jogadoresRoutes.delete('/delete', jogadoresController.delete);
jogadoresRoutes.get('/showTeams', jogadoresController.pegaTimes);
jogadoresRoutes.post('/adicionaTimes', jogadoresController.adicionaTimes);

// Exporta
module.exports = jogadoresRoutes;
