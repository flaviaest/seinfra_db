import pkg from 'pg';
const { Client } = pkg;

const client = new Client({
  connectionString: "postgresql://dbseinfra_owner:npg_lTdCswy8p9NK@ep-plain-dew-acvv5w91-pooler.sa-east-1.aws.neon.tech/dbseinfra?sslmode=require",
});

client.connect()
  .then(() => console.log("Conectado ao banco!"))
  .then(() => client.query("SELECT table_name FROM information_schema.tables WHERE table_schema='public'"))
  .then(res => console.log("Tabelas:", res.rows))
  .catch(err => console.error("Erro:", err))
  .finally(() => client.end());
