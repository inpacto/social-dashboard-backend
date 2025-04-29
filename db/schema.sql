-- Tabela para posts de redes sociais
CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    platform VARCHAR(50) NOT NULL, -- 'twitter', 'instagram', 'facebook'
    author_name VARCHAR(255) NOT NULL,
    author_handle VARCHAR(255) NOT NULL,
    author_avatar_url TEXT, -- URL para o avatar do autor
    content TEXT NOT NULL,
    timestamp TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    impact_score INTEGER,
    media_url TEXT -- URL para mídia anexa (imagem, vídeo)
);

-- Tabela para notícias
CREATE TABLE news (
    id SERIAL PRIMARY KEY,
    source_name VARCHAR(255) NOT NULL,
    source_icon_url TEXT, -- URL para o ícone da fonte
    title TEXT NOT NULL,
    snippet TEXT,
    url TEXT, -- URL para a notícia completa
    timestamp TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    impact_score INTEGER
);

-- Tabela para autores principais
CREATE TABLE top_authors (
    id SERIAL PRIMARY KEY,
    rank INTEGER NOT NULL,
    name VARCHAR(255) NOT NULL,
    handle VARCHAR(255),
    avatar_url TEXT,
    impact_score NUMERIC(5, 1) NOT NULL
);

-- Tabela para sites principais
CREATE TABLE top_sites (
    id SERIAL PRIMARY KEY,
    rank INTEGER NOT NULL,
    domain VARCHAR(255) NOT NULL,
    volume INTEGER NOT NULL,
    change_percentage NUMERIC(5, 1) -- Pode ser positivo, negativo ou nulo
);

-- Tabela para fontes de dados (gráfico de pizza)
CREATE TABLE data_sources (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    percentage NUMERIC(4, 1) NOT NULL,
    color VARCHAR(7) -- Cor hexadecimal para o gráfico (ex: '#FFA500')
);

-- Tabela para volume por região (gráfico de pizza)
CREATE TABLE regions (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(50) DEFAULT 'city', -- 'city', 'state', 'country'
    percentage NUMERIC(4, 1) NOT NULL,
    color VARCHAR(7) -- Cor hexadecimal para o gráfico
);

-- Tabela para principais temas/ações (gráfico de barras)
CREATE TABLE main_topics (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    mentions_count INTEGER NOT NULL
);

-- Tabela para hashtags (nuvem de palavras)
CREATE TABLE hashtags (
    id SERIAL PRIMARY KEY,
    tag VARCHAR(255) NOT NULL UNIQUE,
    frequency INTEGER NOT NULL
);

-- Tabela para termos da nuvem de palavras geral
CREATE TABLE word_cloud_terms (
    id SERIAL PRIMARY KEY,
    term VARCHAR(255) NOT NULL UNIQUE,
    frequency INTEGER NOT NULL,
    sentiment VARCHAR(10) -- 'positive', 'negative', 'neutral' (para cor)
);

-- Tabela para visão geral de menções
CREATE TABLE mentions_overview (
    id SERIAL PRIMARY KEY,
    total_mentions INTEGER NOT NULL,
    mentions_change_percentage NUMERIC(4, 1),
    aggregated_reach BIGINT NOT NULL,
    reach_change_percentage NUMERIC(4, 1)
);

-- Tabela para menções por hora (gráfico de linha/barra)
CREATE TABLE mentions_hourly (
    id SERIAL PRIMARY KEY,
    timestamp_hour TIMESTAMPTZ NOT NULL UNIQUE,
    mentions_count INTEGER NOT NULL,
    queries_count INTEGER, -- Dados das 'Queries' na imagem
    provincial_reach INTEGER -- Dados do 'Provincial reach' na imagem (se aplicável)
);

-- Tabela para tópicos em tempo real (grid/treemap)
CREATE TABLE real_time_topics (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    size_score INTEGER -- Para determinar o tamanho no treemap
);

