instalar as dependencias 'npm install'
configurar a conexão com o bd no arquivo '.env' DATABASE_URL = "postgresql://nome_usuario:senha@localhost@5432/nomebd
5432 é a porta padrão, ja o nome do bd pode colocar projeto_dbseinfra
'npx prisma migrate deploy' para rodar as migrações ou alguma q esteja pendente(se necessario)
'npx prisma generate' atualiza as mudanças feitas no bd


