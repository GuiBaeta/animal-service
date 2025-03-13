-- Cachorros
INSERT
INTO
   animal
   (nome_provisorio, idade_estimada, especie, raca, data_entrada, condicoes_chegada, nome_recebedor, porte)
VALUES
   ('Cachorrinho da Ebac', '5', 'CACHORRO', 'SRD', current_date, 'Bem pulguento', 'Cleber', 'Pequeno');

INSERT
INTO
   animal
   (nome_provisorio, idade_estimada, especie, raca, data_entrada, condicoes_chegada, nome_recebedor, porte)
VALUES
   ('Outro Cachorrinho da Ebac', '10', 'CACHORRO', 'Rottweiler', current_date - 10, 'Bem velhinho', 'Renato', 'Grande');

INSERT
INTO
   animal
   (nome_provisorio, idade_estimada, especie, raca, data_entrada, condicoes_chegada, nome_recebedor, porte, data_adocao)
VALUES
   ('Totó', '2', 'CACHORRO', 'Pinscher', current_date, '50% tremedeira, 50% ódio', 'Giovanna', 'Pequeno', current_date);

INSERT INTO
    animal
    (nome_provisorio, idade_estimada, especie, raca, data_entrada, condicoes_chegada, nome_recebedor, porte)
VALUES ('Cachorrinho Feliz', '3', 'CACHORRO', 'Beagle', current_date, 'Bem disposto', 'Maria', 'Médio');

INSERT INTO
    animal
    (nome_provisorio, idade_estimada, especie, raca, data_entrada, condicoes_chegada, nome_recebedor, porte)
VALUES ('Peludo', '7', 'CACHORRO', 'Golden Retriever', current_date - 5, 'Peludo e animado', 'João', 'Grande');

-- Gatos
INSERT INTO
    animal
    (nome_provisorio, idade_estimada, especie, raca, data_entrada, condicoes_chegada, nome_recebedor, porte)
VALUES ('Miau', '1', 'GATO', 'Persa', current_date, 'Bem fofinho', 'Cláudia', 'Pequeno');

INSERT INTO
    animal
    (nome_provisorio, idade_estimada, especie, raca, data_entrada, condicoes_chegada, nome_recebedor, porte)
VALUES ('Gatinho Agressivo', '4', 'GATO', 'Siamês', current_date - 3, 'Desconfiado, mas carinhoso', 'Lucas', 'Médio');

INSERT INTO
    animal
    (nome_provisorio, idade_estimada, especie, raca, data_entrada, condicoes_chegada, nome_recebedor, porte)
VALUES ('Felix', '6', 'GATO', 'Maine Coon', current_date - 2, 'Acalmado e sociável', 'Carla', 'Grande');

INSERT INTO
    animal
    (nome_provisorio, idade_estimada, especie, raca, data_entrada, condicoes_chegada, nome_recebedor, porte)
VALUES ('Tigrinha', '3', 'GATO', 'Vira-lata', current_date - 7, 'Misteriosa e muito rápida', 'Renata', 'Pequeno');

INSERT INTO
    animal
    (nome_provisorio, idade_estimada, especie, raca, data_entrada, condicoes_chegada, nome_recebedor, porte)
VALUES ('Leãozinho', '2', 'GATO', 'Bengal', current_date - 1, 'Brincalhão e curioso', 'Fábio', 'Médio');
