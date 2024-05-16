const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();



class PartidasController{

  
    async create(request, response){
        try{
     
       const { Data, Local, Placar, TimeDaCasa, TimeVisitante } = request.body
          console.log(request.body);
       const partida = await prisma.partida.create({
           data: {
            Data, Local, Placar, TimeDaCasa, TimeVisitante
           },
       })
     
       response.json(partida)
       }catch (err) {
           return response.status(409).send()
       }
  }

   async show(request, response){
     try{
         const partida = await prisma.partida.findMany();

         response.json(partida)
       
     }catch (err) { 
         return response.status(409).send()
     }
}
}



module.exports = PartidasController