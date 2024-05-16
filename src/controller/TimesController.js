const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();



class TimesController{
    async create(request, response){
        try{
       const { anoDeFundacao, pais, tecnico } = request.body

       const time = await prisma.time.create({
           data: {
            anoDeFundacao,
            pais,
            tecnico
           },
       })
     
       response.json(time)
       }catch (err) {
           return response.status(409).send()
       }
  }

  async show(request, response){
    try{
        const times = await prisma.time.findMany();

        response.json(times)
      
    }catch (err) { 
        return response.status(409).send()
    }
}

async update(request, response){
 try{

    const { id , anoDeFundacao, pais, tecnico, idDoJogador } = request.body
       
    

  await prisma.time.update({
          where:{
              id:id
           }, 
          data: {
            anoDeFundacao,
             pais,
              tecnico,
              idDoJogador
           }            
       });

       return response.status(200).send()

   }catch (err) { 
      console.log(err);
       return response.status(409).send()
 }

}

async delete(request, response){
   try{
       const { id } = request.body

       await prisma.time.delete({
           where: {
               id: id
           },
       })

       return response.status(200).send()

   }catch (err) { 
       return response.status(409).send()
  }

}

async pegaJogadores(request, response){
    try{
        const { id } = request.body
 
        const elenco = await prisma.jogadorTime.findMany({
            where: {
                idDoTime: id
            },
        })

        response.json(elenco)
    }catch (err) { 
        return response.status(409).send()
   }
 
 }

 async adicionaJogadores(request, response){
    try{
        const { idDoJogador, idDoTime } = request.body
        console.log( request.body)
        await prisma.jogadorTime.create({
            data:{
                idDoJogador,
                idDoTime
            } 
        })
 
        return response.status(200).send()
 
    }catch (err) { 
        console.log(err)

        return response.status(409).send()
   }
 
 }
}



module.exports = TimesController