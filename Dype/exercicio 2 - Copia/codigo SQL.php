SELECT EXTRACT(YEAR_MONTH FROM t.data_cadastro), p.id_pessoa, t.titulo FROM pessoa_trabalho pt, trabalho t, pessoa p WHERE pt.id_pessoa = p.id_pessoa AND pt.id_trabalho = t.id_trabalho
