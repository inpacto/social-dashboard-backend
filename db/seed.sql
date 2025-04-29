-- Dados de exemplo para a tabela posts
INSERT INTO posts (platform, author_name, author_handle, author_avatar_url, content, timestamp, impact_score, media_url)
VALUES
    (
        'twitter',
        'GloboNews',
        '@GloboNews',
        'https://pbs.twimg.com/profile_images/1480574944737386498/V63-X71Y_400x400.jpg', -- Placeholder URL
        'Apuração de @DanielLima... Lula amplia comitiva que vai ao velório do Papa Francisco e leva o ministro da Justiça, Ricardo Lewandowski. Estão confirmados também os presidentes da Câmara, do Senado e do STF -> Assista ao #ConexãoGloboNews: t.co/bPwcePLuU9 #GloboNews com/XZ71dZHPIS',
        NOW() - INTERVAL '8 hours',
        96,
        NULL
    ),
    (
        'twitter',
        'Câmara dos Deputados',
        '@camaradeputados',
        'https://pbs.twimg.com/profile_images/1661039349098659840/Gg3zXfnX_400x400.jpg', -- Placeholder URL
        'O presidente da Câmara, deputado HugoMottaPB, afirmou que vai dar celeridade à proposta de emenda constitucional que reformula o sistema de segurança pública, a PEC da Segurança Pública. No Palácio do Planalto, o presidente Lula entregou o texto. t.co/nE6gQhHFY',
        NOW() - INTERVAL '20 hours',
        94,
        NULL
    ),
    (
        'twitter',
        'BolsonaroSP',
        '@BolsonaroSP',
        'https://pbs.twimg.com/profile_images/1599778006800875521/Il14uS_S_400x400.jpg', -- Placeholder URL
        '@Metropoles A cadeia fez festa quando ele foi "eleito". Seu ministro da Justiça santos nem deus e dominados pelo sistema com dez...'
        , -- Conteúdo truncado na imagem
        NOW() - INTERVAL '1 day',
        92,
        NULL
    ),
    (
        'instagram',
        'lulaoficial',
        '@lulaoficial',
        'https://pbs.twimg.com/profile_images/1600191909400961024/fFp-Nw3G_400x400.jpg', -- Placeholder URL
        'Com a PEC da Segurança Pública, queremos dizer ao povo brasileiro que o Governo Federal assumiu definitivamente a responsabilidade de se colocar totalmente à disposição dos estados para cuidar da segurança do povo brasileiro e fazer com que o povo não ande assustado nas ruas desse país. Não vamos interferir na responsabilidade e na autonomia de...',
        NOW() - INTERVAL '21 hours',
        99,
        'https://via.placeholder.com/600x400.png?text=Instagram+Post+Image' -- Placeholder URL
    ),
    (
        'facebook',
        'GloboNews',
        'GloboNews',
        'https://pbs.twimg.com/profile_images/1480574944737386498/V63-X71Y_400x400.jpg', -- Placeholder URL
        'Depois de meses de elaboração e mudanças, o presidente Lula entregou ao Congresso Nacional a PEC que reformula as regras das forças de segurança pública em todo o Brasil. O presidente e o ministro da Justiça, Ricardo Lewandowski, falaram na cerimônia. #EmPauta -> Assista na GloboNews: glo.bo/399fXAu facebook.com...',
        NOW() - INTERVAL '21 hours',
        65,
        NULL
    ),
    (
        'facebook',
        'Facebook User',
        'Webhhost',
        NULL, -- Sem avatar na imagem
        'O escândalo no INSS, em operação da PF deflagrada hoje, pode ser o maior da história do instituto. E está só no começo. O ministro da Justiça, o diretor da PF, o ministro da CGU e o ministro da previdência deram entrevista coletiva hoje. O tom das perguntas foi sempre de associar o governo Lula a essa corrupção, que começou em 2019, passou a ser...',
        NOW() - INTERVAL '8 hours',
        30,
        NULL
    ),
    (
        'facebook',
        'Santíssimo Noticias RJ',
        'Santíssimo Noticias RJ',
        NULL, -- Sem avatar na imagem
        '...' , -- Conteúdo não visível
        NOW() - INTERVAL '9 hours',
        30,
        NULL
    );

-- Dados de exemplo para a tabela news
INSERT INTO news (source_name, source_icon_url, title, snippet, url, timestamp, impact_score)
VALUES
    ('msn.com', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/MSN_Messenger_Icon.png/48px-MSN_Messenger_Icon.png', 'EX-MALHAÇÃO CONCLUI MESTRADO EM LITERATURA, E MARIDO A HOMENAGEIA', '...escrevendo. O rapaz ainda exaltou o fato de Fernanda Nobre ter múltiplos talentos. "Não cabo em mim de tanta admiração e emoção, ainda mais por ver Fernanda não cabendo num...', 'https://example.com/news1', NOW() - INTERVAL '3 hours', 46),
    ('msn.com', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/MSN_Messenger_Icon.png/48px-MSN_Messenger_Icon.png', 'CARLINHOS BROWN LAMENTA MORTE DE EX-THE VOICE KIDS: VEJA QUEM SÃO OS FAMOSOS QUE NOS DEIXARAM EM 2023', '...um AVC hemorrágico. Ela estava internada no Hospital São João Batista, em Volta Redonda, no Rio de Janeiro, informação divulgada pela assessoria de imprensa da artista nas redes sociais: Karen...', 'https://example.com/news2', NOW() - INTERVAL '4 hours', 46),
    ('msn.com', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/MSN_Messenger_Icon.png/48px-MSN_Messenger_Icon.png', 'INSS: DEVOLUÇÕES A APOSENTADOS PODEM LEVAR GASTO BILIONÁRIO AO GOVERNO', '...restituir os brasileiros prejudicados pela fraude. Segundo o ministro Ricardo Lewandowski, da Justiça e Segurança Pública, cada caso será examinado individualmente e o dinheiro terá que ser... Enquanto são investigados...', 'https://example.com/news3', NOW() - INTERVAL '4 hours', 46),
    ('msn.com', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/MSN_Messenger_Icon.png/48px-MSN_Messenger_Icon.png', 'FRAUDE NO INSS: VEJA LISTA DE 11 ENTIDADES INVESTIGADAS POR DESCONTOS INDEVIDOS EM BENEFÍCIOS', '...Alessandro Stefanutto, e de outros quatro integrantes da cúpula do órgão. Segundo o diretor-geral da Polícia Federal, Andrei Rodrigues, não houve medidas efetivas por parte do INSS para coibr...', 'https://example.com/news4', NOW() - INTERVAL '7 hours', 46),
    ('msn.com', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/MSN_Messenger_Icon.png/48px-MSN_Messenger_Icon.png', 'MINISTÉRIO COM PROTOCOLO PARA MELHORAR CONFORTO TÉRMICO DOS TRIBUNAIS E PRISÕES', 'O Ministério da Justiça assinou hoje um protocolo com o Ministério do Ambiente e Ação Climática para que seja "mais simples" ao primeiro concorrer a fundos europeus para obras que...', 'https://example.com/news5', NOW() - INTERVAL '9 hours', 46),
    ('msn.com', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/MSN_Messenger_Icon.png/48px-MSN_Messenger_Icon.png', 'DIREÇÃO-GERAL PROPÕE SUSPENSÃO DE DIRETOR, CHEFE E SETE GUARDAS DE VALE DE JUDEUS', '...aquele organismo. A Direção-Geral de Reinserção e Serviços Prisionais (DGRSP) propôs a suspensão do diretor, um chefe e sete guardas em funções na prisão de Vale de Judeus aquando da...', 'https://example.com/news6', NOW() - INTERVAL '9 hours', 46),
    ('msn.com', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/MSN_Messenger_Icon.png/48px-MSN_Messenger_Icon.png', 'INSS: DESCONTO ILEGAL TERÁ QUE SER RESTITUÍDO A APOSENTADOS', 'A Polícia Federal (PF) e a Controladoria-Geral da União (CGU) deflagraram, nesta quarta-feira (23), a Operação Sem Desconto, que investiga um esquema de descontos não autorizados em aposentadorias e pensões...', 'https://example.com/news7', NOW() - INTERVAL '10 hours', 46),
    ('msn.com', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/MSN_Messenger_Icon.png/48px-MSN_Messenger_Icon.png', '"O PODER POLÍTICO NÃO SE PREOCUPA COM A JUSTIÇA. POR ISSO É QUE NÃO INVESTE"', '...Ministério da Justiça, a grande percentagem das despesas dos tribunais é suportada pelos registos e pelos emolumentos dos registos. Eu acho que temos um problema maior, porque a suborçamentação e...', 'https://example.com/news8', NOW() - INTERVAL '10 hours', 46);

-- Dados de exemplo para a tabela top_authors
INSERT INTO top_authors (rank, name, handle, avatar_url, impact_score)
VALUES
    (1, 'lulaoficial', '@lulaoficial', 'https://pbs.twimg.com/profile_images/1600191909400961024/fFp-Nw3G_400x400.jpg', 99.4),
    (2, 'globonews', '@globonews', 'https://pbs.twimg.com/profile_images/1480574944737386498/V63-X71Y_400x400.jpg', 94.9),
    (3, 'GloboNews', NULL, 'https://pbs.twimg.com/profile_images/1480574944737386498/V63-X71Y_400x400.jpg', 94.2),
    (4, 'jornaloglobo', '@jornaloglobo', 'https://pbs.twimg.com/profile_images/1577300813866885121/Q5Q4Q3v4_400x400.jpg', 93.7),
    (5, 'BolsonaroSP', '@BolsonaroSP', 'https://pbs.twimg.com/profile_images/1599778006800875521/Il14uS_S_400x400.jpg', 93.4);

-- Dados de exemplo para a tabela top_sites
INSERT INTO top_sites (rank, domain, volume, change_percentage)
VALUES
    (1, 'twitter.com', 8956, 125.0),
    (2, 'youtube.com', 116, 8.0),
    (3, 'globo.com', 47, -31.0),
    (4, 'omedionorte.com.br', 47, NULL),
    (5, 'correiodematogrosso.com.br', 30, NULL);

-- Dados de exemplo para a tabela data_sources
INSERT INTO data_sources (name, percentage, color)
VALUES
    ('X', 76.7, '#FFA500'), -- Orange
    ('Online News', 20.8, '#FFD700'), -- Gold
    ('YouTube', 1.1, '#90EE90'), -- LightGreen
    ('Blogs', 0.4, '#ADD8E6'), -- LightBlue
    ('Facebook', 0.3, '#87CEEB'), -- SkyBlue
    ('Instagram', 0.2, '#FFC0CB'), -- Pink
    ('Forums', 0.2, '#DDA0DD'), -- Plum
    ('Reddit', 0.2, '#E6E6FA'), -- Lavender
    ('Tumblr', 0.1, '#F5F5DC'); -- Beige

-- Dados de exemplo para a tabela regions
INSERT INTO regions (name, type, percentage, color)
VALUES
    ('São Paulo, São Paulo, Brazil', 'city', 23.0, '#FFA500'), -- Orange
    ('Brasília, Distrito Federal, Brazil', 'city', 4.9, '#FFD700'), -- Gold
    ('Fortaleza, Ceará, Brazil', 'city', 3.7, '#90EE90'), -- LightGreen
    ('Recife, Pernambuco, Brazil', 'city', 3.3, '#ADD8E6'), -- LightBlue
    ('Goiânia, Goiás, Brazil', 'city', 2.2, '#87CEEB'), -- SkyBlue
    ('Belo Horizonte, Minas Gerais, Brazil', 'city', 5.6, '#FFC0CB'), -- Pink
    ('Porto Alegre, Rio Grande do Sul, Brazil', 'city', 4.2, '#DDA0DD'), -- Plum
    ('Curitiba, Paraná, Brazil', 'city', 3.7, '#E6E6FA'), -- Lavender
    ('San Salvador, San Salvador, El Salvador', 'city', 2.4, '#F5F5DC'), -- Beige
    ('Florianópolis, Santa Catarina, Brazil', 'city', 1.8, '#FF6347'), -- Tomato
    ('Other', 'other', 45.2, '#D3D3D3'); -- LightGray

-- Dados de exemplo para a tabela main_topics
INSERT INTO main_topics (name, mentions_count)
VALUES
    ('PEC DA SEGURANÇA PUB...', 5100),
    ('CARTEIRA DE IDENTIDA...', 300),
    ('ENFRENTAMENTO A VIOL...', 250),
    ('TRÁFICO DE PESSOAS', 200),
    ('CÂMERAS CORPORAIS', 180),
    ('CELULAR SEGURO', 150),
    ('CONVIVE', 120),
    ('PRESÍDIOS FEDERAIS', 100),
    ('PL ANTIMÁFIA', 80),
    ('USO PROGRESSIVO DA F...', 50);

-- Dados de exemplo para a tabela hashtags
INSERT INTO hashtags (tag, frequency)
VALUES
    ('#globonews', 150),
    ('#conexãoglobonews', 120),
    ('#brasil', 100),
    ('#em pauta', 90),
    ('#pecdasegurançapública', 85),
    ('#lula', 80),
    ('#incra', 75),
    ('#stfvergonhamundial', 70),
    ('#quedaviolência', 65),
    ('#conflitosagrários', 60),
    ('#jornaldamanhã', 55),
    ('#cgu', 50),
    ('#delegado', 45),
    ('#tvbrasil', 40),
    ('#inss', 35),
    ('#selva', 30),
    ('#governolula', 25),
    ('#revistafórum', 20),
    ('#carnaval2026', 18),
    ('#combateaocrime', 16),
    ('#forum', 14),
    ('#ricardolewandowski', 12),
    ('#política', 10),
    ('#policiafederal', 8),
    ('#lulanacadeia', 6),
    ('#balançogeralrj', 5),
    ('#lulaédesgraçaedestruição', 4),
    ('#foralula', 3);

-- Dados de exemplo para a tabela word_cloud_terms
INSERT INTO word_cloud_terms (term, frequency, sentiment)
VALUES
    ('Segurança Pública ao Congresso Nacional', 100, 'neutral'),
    ('Governo Federal assumiu', 90, 'neutral'),
    ('disposição dos estados', 80, 'neutral'),
    ('irmão do Lula está envolvido', 75, 'negative'),
    ('PEC da Segurança Pública ao Congresso', 70, 'neutral'),
    ('Polícia Federal', 65, 'neutral'),
    ('Mato Grosso', 60, 'neutral'),
    ('crime organizado', 55, 'negative'),
    ('governo Lula', 50, 'neutral'),
    ('aposentados e pensionistas', 45, 'neutral'),
    ('entrega da PEC da Segurança Pública', 40, 'positive'),
    ('responsabilidade de se colocar totalmente', 35, 'positive'),
    ('cuidar da segurança do povo brasileiro', 30, 'positive'),
    ('queremos dizer ao povo', 25, 'positive'),
    ('Proposta de Emenda à Constituição', 20, 'neutral'),
    ('estados para cuidar da segurança', 18, 'positive'),
    ('presidente Luiz Inácio Lula da Silva', 16, 'neutral'),
    ('Controladoria Geral da União', 14, 'neutral'),
    ('Câmara dos Deputados', 12, 'neutral'),
    ('Rodoviária Federal', 10, 'neutral'),
    ('Operação Sem Desconto', 8, 'negative'),
    ('assustado nas ruas', 6, 'negative');

-- Dados de exemplo para a tabela mentions_overview
INSERT INTO mentions_overview (total_mentions, mentions_change_percentage, aggregated_reach, reach_change_percentage)
VALUES
    (11580, 68.0, 18650000, -8.0);

-- Dados de exemplo para a tabela mentions_hourly (aproximado do gráfico)
-- Gerando 24 pontos de dados para as últimas 24 horas
INSERT INTO mentions_hourly (timestamp_hour, mentions_count, queries_count, provincial_reach)
VALUES
    (NOW() - INTERVAL '23 hours', 800, 600, 200),
    (NOW() - INTERVAL '22 hours', 1100, 800, 300),
    (NOW() - INTERVAL '21 hours', 700, 500, 200),
    (NOW() - INTERVAL '20 hours', 400, 300, 100),
    (NOW() - INTERVAL '19 hours', 300, 200, 100),
    (NOW() - INTERVAL '18 hours', 200, 150, 50),
    (NOW() - INTERVAL '17 hours', 250, 180, 70),
    (NOW() - INTERVAL '16 hours', 350, 250, 100),
    (NOW() - INTERVAL '15 hours', 450, 350, 100),
    (NOW() - INTERVAL '14 hours', 600, 450, 150),
    (NOW() - INTERVAL '13 hours', 750, 550, 200),
    (NOW() - INTERVAL '12 hours', 500, 400, 100),
    (NOW() - INTERVAL '11 hours', 650, 500, 150),
    (NOW() - INTERVAL '10 hours', 800, 600, 200),
    (NOW() - INTERVAL '9 hours', 700, 550, 150),
    (NOW() - INTERVAL '8 hours', 550, 400, 150),
    (NOW() - INTERVAL '7 hours', 600, 450, 150),
    (NOW() - INTERVAL '6 hours', 700, 500, 200),
    (NOW() - INTERVAL '5 hours', 850, 650, 200),
    (NOW() - INTERVAL '4 hours', 900, 700, 200),
    (NOW() - INTERVAL '3 hours', 750, 550, 200),
    (NOW() - INTERVAL '2 hours', 600, 450, 150),
    (NOW() - INTERVAL '1 hour', 500, 400, 100),
    (NOW(), 400, 300, 100);

-- Dados de exemplo para a tabela real_time_topics
INSERT INTO real_time_topics (name, size_score)
VALUES
    ('cuidar da segurança do povo brasil', 100),
    ('crime organizad', 80),
    ('Rodoviária Federal', 75),
    ('assustado nas rua', 70),
    ('Câmara dos Deputados', 65),
    ('Segurança Pública ao Congresso N', 60),
    ('Governo Federal assumiu', 55),
    ('cuidar da segurança do p', 50),
    ('Segurança Pública ao Congresso Nacional', 45);

