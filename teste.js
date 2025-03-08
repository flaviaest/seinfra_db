const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

async function main() {
  const usuarios = await prisma.usuario.findMany();  // Substitua 'cliente' pelo nome da sua tabela
  console.log(usuarios);
}

main()
  .catch(e => {
    throw e;
  })
  .finally(async () => {
    await prisma.$disconnect();
  });