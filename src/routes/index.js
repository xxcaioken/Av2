const { Router } = require('express')


const jogadoresRoutes = require('./jogadores.routes')
const timesRoutes = require('./times.routes')
 const partidasRoutes = require('./partidas.routes')

const routes = Router()


// Rotas dos controllers
routes.use('/jogadores', jogadoresRoutes)
routes.use('/times', timesRoutes)
 routes.use('/partidas', partidasRoutes)



module.exports = routes