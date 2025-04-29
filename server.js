require('dotenv').config();
const express = require('express');
const cors = require('cors');
const { Pool } = require('pg');

const app = express();
const porta = process.env.PORT || 5000;

app.use(cors());

const banco = new Pool({
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  database: process.env.DB_NAME,
  password: process.env.DB_PASSWORD,
  port: process.env.DB_PORT,
});

app.get('/', (requisicao, resposta) => {
  resposta.send('Backend do Social Dashboard está rodando!');
});

const criarRota = (caminho, nomeTabela) => {
  app.get(`/api/${caminho}`, async (requisicao, resposta) => {
    try {
      const resultado = await banco.query(`SELECT * FROM ${nomeTabela}`);
      resposta.json(resultado.rows);
    } catch (erro) {
      console.error(`Erro ao buscar dados da tabela ${nomeTabela}:`, erro);
      resposta.status(500).json({ erro: 'Erro interno do servidor' });
    }
  });
};

criarRota('posts', 'posts');
criarRota('news', 'news');
criarRota('top-authors', 'top_authors ORDER BY rank ASC');
criarRota('top-sites', 'top_sites ORDER BY rank ASC');
criarRota('data-sources', 'data_sources');
criarRota('regions', 'regions');
criarRota('main-topics', 'main_topics ORDER BY mentions_count DESC');
criarRota('hashtags', 'hashtags ORDER BY frequency DESC');
criarRota('word-cloud-terms', 'word_cloud_terms ORDER BY frequency DESC');
criarRota('mentions-overview', 'mentions_overview');
criarRota('mentions-hourly', 'mentions_hourly ORDER BY timestamp_hour ASC');
criarRota('real-time-topics', 'real_time_topics ORDER BY size_score DESC');

app.listen(porta, '0.0.0.0', () => {
  console.log(`Servidor backend rodando na porta ${porta}`);
});
