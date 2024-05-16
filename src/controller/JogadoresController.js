const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();



class JogadoresController{

   async create(request, response){
         try{
      
        const { name, idade, posicao, nacionalidade, time } = request.body
           console.log(time);
        const jogador = await prisma.jogador.create({
            data: {
             name,
             idade,
             posicao,
             nacionalidade,
             time
            },
        })
      
        response.json(jogador)
        }catch (err) {
            console.log(err)
            return response.status(409).send()
        }
   }

    async show(request, response){
      try{
          const users = await prisma.jogador.findMany();

          response.json(users)
        
      }catch (err) { 
          return response.status(409).send()
      }
 }

async update(request, response){
   try{
    console.log(request.body);
    const { id, name, idade, posicao, nacionalidade } = request.body
         
    await prisma.jogador.update({
            where:{
                id:id
             }, 
            data: {
                name,
                idade,
                posicao,
                nacionalidade
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

         await prisma.jogador.delete({
             where: {
                 id: id
             },
         })

         return response.status(200).send()

     }catch (err) { 
         return response.status(409).send()
    }

}

async pegaTimes(request, response){
    try{
        const { id } = request.body
 
        const elenco = await prisma.jogadorTime.findMany({
            where: {
                idDoJogador: id
            },
        })

        response.json(elenco)
    }catch (err) { 
        return response.status(409).send()
   }
 
 }

 async adicionaTimes(request, response){
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



module.exports = JogadoresController