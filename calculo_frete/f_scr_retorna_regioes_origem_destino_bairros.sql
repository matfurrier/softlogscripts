-- Function: public.f_scr_retorna_regioes_origem_destino(integer, integer, text)
--SELECT f_scr_retorna_regioes_origem_destino_bairros(5505,49142,'0010010000001')
-- DROP FUNCTION public.f_scr_retorna_regioes_origem_destino(integer, integer, text);


CREATE OR REPLACE FUNCTION public.f_scr_retorna_regioes_origem_destino_bairros(
    vIdCidadeOrigem integer,
    vIdBairroDestino integer,
    vTabelaFrete text)
  RETURNS json AS
$BODY$
DECLARE
	vTipoTabela		integer;
	vRegioes 		json;

	vIdRegiaoOrigem		integer;
	vIdRegiaoDestino	integer;

	vTipoRota		integer; -- 1 - Cidade, 2 - Regi�o, 0 - Sem rota
BEGIN	

	-- Recupera a origem e o destino caso o tipo de rota seja por regi�o.	
	-- Verifica se a cidade de origem est� em alguma regi�o de origem da tabela de frete
	SELECT 
		tod.id_origem
	INTO 
		vIdRegiaoOrigem		
	FROM 
		scr_tabelas_origem_destino tod
		LEFT JOIN scr_tabelas t 	ON t.id_tabela_frete = tod.id_tabela_frete
		LEFT JOIN regiao rco	ON tod.id_origem = rco.id_regiao
	WHERE 
		t.numero_tabela_frete 	= vTabelaFrete
		AND tod.tipo_rota 	= 2
		AND rco.id_cidade_polo 	= vIdCidadeOrigem;

	-- Se n�o foi encontrado nenhuma regi�o de origem da cidade de origem, ent�o:
	-- 	Verifica se a cidade de origem est� em alguma regi�o de destino, cadastrada na tabela
	IF vIdRegiaoOrigem IS NULL THEN 
		SELECT 
			tod.id_destino
		INTO 
			vIdRegiaoOrigem
		FROM
			scr_tabelas_origem_destino tod
			LEFT JOIN scr_tabelas t 
				ON t.id_tabela_frete = tod.id_tabela_frete
			LEFT JOIN regiao rcd
				ON tod.id_destino = rcd.id_regiao
		WHERE
			t.numero_tabela_frete 	= vTabelaFrete
			AND tod.tipo_rota 	= 2
			AND rcd.id_cidade_polo	= vIdCidadeOrigem;

		-- Se a cidade de origem n�o est� em nenhuma regi�o origem ou destino da tabela, ent�o:
		-- 	N�o h� como determinar a regi�o de origem, retorna -1;
		IF vIdRegiaoOrigem IS NULL THEN
			vIdRegiaoOrigem = -1;
			vIdRegiaoDestino = -1;
		END IF;		
	END IF;

	-- Se a Regi�o de Origem for diferente de -1, ou seja, foi encontrado uma regi�o de origem, ent�o:
	-- 	verifica se a cidade de destino est� em alguma regi�o de destino, 
	-- 	cuja regi�o de origem seja a encontrada.
	IF vIdRegiaoOrigem > -1 THEN
		-- Verifica se a cidade de origem est� em alguma regi�o de origem da tabela de frete
		SELECT 
			tod.id_destino
		INTO 
			vIdRegiaoDestino		
		FROM 
			scr_tabelas_origem_destino tod
			LEFT JOIN scr_tabelas t 	
				ON t.id_tabela_frete = tod.id_tabela_frete
			LEFT JOIN v_regiao_bairros rbo	
				ON tod.id_destino = rbo.id_regiao
		WHERE 
			t.numero_tabela_frete 	= vTabelaFrete
			AND tod.tipo_rota 	= 2
			AND tod.id_origem	= vIdRegiaoOrigem
			AND rbo.id_bairro 	= vIdBairroDestino;


		-- Se n�o foi encontrada numa regi�o de destino da tabela, ent�o:
		--	Verifica se a cidade de destino est�  
		-- 	est� em alguma regi�o de origem, cuja regi�o de destino 
		--      seja igual � Regi�o de origem encontrada
		IF vIdRegiaoDestino IS NULL THEN 
			SELECT 
				tod.id_origem
			INTO 
				vIdRegiaoDestino		
			FROM 
				scr_tabelas_origem_destino tod
				LEFT JOIN scr_tabelas t 	
					ON t.id_tabela_frete = tod.id_tabela_frete
				LEFT JOIN v_regiao_bairros rbd	
					ON tod.id_origem = rbd.id_regiao
			WHERE 
				t.numero_tabela_frete 	= vTabelaFrete
				AND tod.tipo_rota 	= 2
				AND tod.id_destino	= vIdRegiaoOrigem
				AND rbd.id_bairro 	= vIdBairroDestino;
			

			-- Se a cidade de origem n�o est� em nenhuma regi�o origem ou destino da tabela, ent�o:
			-- 	N�o h� como determinar a regi�o de origem, retorna -1;
			IF vIdRegiaoDestino IS NULL THEN
				vIdRegiaoDestino = -1;				
			END IF;				
			
		END IF;
	END IF;

	vRegioes = ('{"id_regiao_origem":' || vIdRegiaoOrigem::text || ',"id_regiao_destino":' || vIdRegiaoDestino::text || '}')::json; 

	RETURN vRegioes;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

