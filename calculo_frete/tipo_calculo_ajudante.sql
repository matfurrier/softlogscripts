INSERT INTO scr_tabelas_tipo_calculo (id_tipo_calculo, descricao, ativo, tipo)
VALUES(201,'Ajudante',1,'C');

UPDATE scr_tabelas_tipo_calculo SET dividir_por = 1 WHERE dividir_por = 0;