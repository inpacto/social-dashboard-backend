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

app.get('/', (req, res) => {
  res.send('Backend do Social Dashboard está rodando!');
});

const criarRota = (caminho, nomeTabela) => {
  app.get(`/api/${caminho}`, async (req, res) => {
    try {
      const resultado = await banco.query(`SELECT * FROM ${nomeTabela}`);
      res.json(resultado.rows);
    } catch (erro) {
      console.error(`Erro ao buscar dados da tabela ${nomeTabela}:`, erro);
      res.status(500).json({ erro: 'Erro interno do servidor' });
    }
  });
};

app.get('/api/mentions-overview', async (req, res) => {
  try {
    const sumResult = await banco.query(`
      SELECT
        COALESCE(SUM(mentions_count), 0) AS total_mentions,
        COALESCE(SUM(provincial_reach), 0) AS provincial_reach
      FROM mentions_hourly
    `);
    const totalMentions = sumResult.rows[0].total_mentions;
    const provincialReach = sumResult.rows[0].provincial_reach;

    // Busca últimas duas horas para calcular variação
    const lastTwoHoursResult = await banco.query(`
      SELECT mentions_count, provincial_reach
      FROM mentions_hourly
      ORDER BY timestamp_hour DESC
        LIMIT 2
    `);
    const counts = lastTwoHoursResult.rows.map(r => r.mentions_count);
    const reaches = lastTwoHoursResult.rows.map(r => r.provincial_reach);

    let mentionsChangePercentage = 0;
    let reachChangePercentage = 0;

    if (counts.length === 2 && counts[1] > 0) {
      mentionsChangePercentage = ((counts[0] - counts[1]) / counts[1]) * 100;
    }

    if (reaches.length === 2 && reaches[1] > 0) {
      reachChangePercentage = ((reaches[0] - reaches[1]) / reaches[1]) * 100;
    }

    const response = [{
      total_mentions: totalMentions,
      mentions_change_percentage: Math.round(mentionsChangePercentage * 100) / 100,
      aggregated_reach: provincialReach,  // ← renomeado para o front
      reach_change_percentage: Math.round(reachChangePercentage * 100) / 100
    }];

    console.log('mentions-overview response:', response);
    res.json(response);

  } catch (erro) {
    console.error(`Erro ao buscar dados para mentions-overview:`, erro);
    res.status(500).json({ erro: 'Erro interno do servidor' });
  }
});

// Rotas automáticas para outras tabelas
criarRota('posts', 'posts');
criarRota('news', 'news');
criarRota('top-authors', 'top_authors ORDER BY rank ASC');
criarRota('top-sites', 'top_sites ORDER BY rank ASC');
criarRota('data-sources', 'data_sources');
criarRota('regions', 'regions');
criarRota('main-topics', 'main_topics ORDER BY mentions_count DESC');
criarRota('hashtags', 'hashtags ORDER BY frequency DESC');
criarRota('word-cloud-terms', 'word_cloud_terms ORDER BY frequency DESC');
criarRota('mentions-hourly', 'mentions_hourly ORDER BY timestamp_hour ASC');
criarRota('real-time-topics', 'real_time_topics ORDER BY size_score DESC');

app.listen(porta, '0.0.0.0', () => {
  console.log(`Servidor backend rodando na porta ${porta}`);
});
