--SELECT * FROM efd_servicos
INSERT INTO efd_servicos 
WITH t AS (
	SELECT unnest(string_to_array('0101|An�lise e desenvolvimento de sistemas|01012019|
	0102|Programa��o|01012019|
	0103|Processamento, armazenamento ou hospedagem de dados, textos, imagens, v�deos, p�ginas eletr�nicas, aplicativos e sistemas de informa��o, entre outros formatos, e cong�neres|01012019|
	0104|Elabora��o de programas de computadores, inclusive de jogos eletr�nicos, independentemente da arquitetura construtiva da m�quina em que o programa ser� executado, incluindo tablets, smartphones e cong�neres|01012019|
	0105|Licenciamento ou cess�o de direito de uso de programas de computa��o|01012019|
	0106|Assessoria e consultoria em inform�tica|01012019|
	0107|Suporte t�cnico em inform�tica, inclusive instala��o, configura��o e manuten��o de programas de computa��o e bancos de dados|01012019|
	0108|Planejamento, confec��o, manuten��o e atualiza��o de p�ginas eletr�nicas|01012019|
	0109|Disponibiliza��o, sem cess�o definitiva, de conte�dos de �udio, v�deo, imagem e texto por meio da internet, respeitada a imunidade de livros, jornais e peri�dicos (exceto a distribui��o de conte�dos pelas prestadoras de Servi�o de Acesso Condicionado, de que trata a�Lei no�12.485, de 12 de setembro de 2011, sujeita ao ICMS)|01012019|
	0201|Servi�os de pesquisas e desenvolvimento de qualquer natureza|01012019|
	0302|Cess�o de direito de uso de marcas e de sinais de propaganda|01012019|
	0303|Explora��o de sal�es de festas, centro de conven��es, escrit�rios virtuais,�stands,�quadras esportivas, est�dios, gin�sios, audit�rios, casas de espet�culos, parques de divers�es, canchas e cong�neres, para realiza��o de eventos ou neg�cios de qualquer natureza|01012019|
	0304|Loca��o, subloca��o, arrendamento, direito de passagem ou permiss�o de uso, compartilhado ou n�o, de ferrovia, rodovia, postes, cabos, dutos e condutos de qualquer natureza|01012019|
	0305|Cess�o de andaimes, palcos, coberturas e outras estruturas de uso tempor�rio|01012019|
	0401|Medicina e biomedicina|01012019|
	0402|An�lises cl�nicas, patologia, eletricidade m�dica, radioterapia, quimioterapia, ultra-sonografia, resson�ncia magn�tica, radiologia, tomografia e cong�neres|01012019|
	0403|Hospitais, cl�nicas, laborat�rios, sanat�rios, manic�mios, casas de sa�de, prontos-socorros, ambulat�rios e cong�neres|01012019|
	0404|Instrumenta��o cir�rgica|01012019|
	0405|Acupuntura|01012019|
	0406|Enfermagem, inclusive servi�os auxiliares|01012019|
	0407|Servi�os farmac�uticos|01012019|
	0408|Terapia ocupacional, fisioterapia e fonoaudiologia|01012019|
	0409|Terapias de qualquer esp�cie destinadas ao tratamento f�sico, org�nico e mental|01012019|
	0410|Nutri��o|01012019|
	0411|Obstetr�cia|01012019|
	0412|Odontologia|01012019|
	0413|Ort�ptica|01012019|
	0414|Pr�teses sob encomenda|01012019|
	0415|Psican�lise|01012019|
	0416|Psicologia|01012019|
	0417|Casas de repouso e de recupera��o, creches, asilos e cong�neres|01012019|
	0418|Insemina��o artificial, fertiliza��o�in vitro�e cong�neres|01012019|
	0419|Bancos de sangue, leite, pele, olhos, �vulos, s�men e cong�neres|01012019|
	0420|Coleta de sangue, leite, tecidos, s�men, �rg�os e materiais biol�gicos de qualquer esp�cie|01012019|
	0421|Unidade de atendimento, assist�ncia ou tratamento m�vel e cong�neres|01012019|
	0422|Planos de medicina de grupo ou individual e conv�nios para presta��o de assist�ncia m�dica, hospitalar, odontol�gica e cong�neres|01012019|
	0423|Outros planos de sa�de que se cumpram atrav�s de servi�os de terceiros contratados, credenciados, cooperados ou apenas pagos pelo operador do plano mediante indica��o do benefici�rio|01012019|
	0501|Medicina veterin�ria e zootecnia|01012019|
	0502|Hospitais, cl�nicas, ambulat�rios, prontos-socorros e cong�neres, na �rea veterin�ria|01012019|
	0503|Laborat�rios de an�lise na �rea veterin�ria|01012019|
	0504|Insemina��o artificial, fertiliza��o�in vitro�e cong�neres|01012019|
	0505|Bancos de sangue e de �rg�os e cong�neres|01012019|
	0506|Coleta de sangue, leite, tecidos, s�men, �rg�os e materiais biol�gicos de qualquer esp�cie|01012019|
	0507|Unidade de atendimento, assist�ncia ou tratamento m�vel e cong�neres|01012019|
	0508|Guarda, tratamento, amestramento, embelezamento, alojamento e cong�neres|01012019|
	0509|Planos de atendimento e assist�ncia m�dico-veterin�ria|01012019|
	0601|Barbearia, cabeleireiros, manicuros, pedicuros e cong�neres|01012019|
	0602|Esteticistas, tratamento de pele, depila��o e cong�neres|01012019|
	0603|Banhos, duchas, sauna, massagens e cong�neres|01012019|
	0604|Gin�stica, dan�a, esportes, nata��o, artes marciais e demais atividades f�sicas|01012019|
	0605|Centros de emagrecimento,�spa�e cong�neres|01012019|
	0606|Aplica��o de tatuagens, piercings e cong�neres|01012019|
	0701|Engenharia, agronomia, agrimensura, arquitetura, geologia, urbanismo, paisagismo e cong�neres|01012019|
	0702|Execu��o, por administra��o, empreitada ou subempreitada, de obras de constru��o civil, hidr�ulica ou el�trica e de outras obras semelhantes, inclusive sondagem, perfura��o de po�os, escava��o, drenagem e irriga��o, terraplanagem, pavimenta��o, concretagem e a instala��o e montagem de produtos, pe�as e equipamentos (exceto o fornecimento de mercadorias produzidas pelo prestador de servi�os fora do local da presta��o dos servi�os, que fica sujeito ao ICMS)|01012019|
	0703|Elabora��o de planos diretores, estudos de viabilidade, estudos organizacionais e outros, relacionados com obras e servi�os de engenharia; elabora��o de anteprojetos, projetos b�sicos e projetos executivos para trabalhos de engenharia|01012019|
	0704|Demoli��o|01012019|
	0705|Repara��o, conserva��o e reforma de edif�cios, estradas, pontes, portos e cong�neres (exceto o fornecimento de mercadorias produzidas pelo prestador dos servi�os, fora do local da presta��o dos servi�os, que fica sujeito ao ICMS)|01012019|
	0706|Coloca��o e instala��o de tapetes, carpetes, assoalhos, cortinas, revestimentos de parede, vidros, divis�rias, placas de gesso e cong�neres, com material fornecido pelo tomador do servi�o|01012019|
	0707|Recupera��o, raspagem, polimento e lustra��o de pisos e cong�neres|01012019|
	0708|Calafeta��o|01012019|
	0709|Varri��o, coleta, remo��o, incinera��o, tratamento, reciclagem, separa��o e destina��o final de lixo, rejeitos e outros res�duos quaisquer|01012019|
	0710|Limpeza, manuten��o e conserva��o de vias e logradouros p�blicos, im�veis, chamin�s, piscinas, parques, jardins e cong�neres|01012019|
	0711|Decora��o e jardinagem, inclusive corte e poda de �rvores|01012019|
	0712|Controle e tratamento de efluentes de qualquer natureza e de agentes f�sicos, qu�micos e biol�gicos|01012019|
	0713|Dedetiza��o, desinfec��o, desinsetiza��o, imuniza��o, higieniza��o, desratiza��o, pulveriza��o e cong�neres|01012019|
	0716|Florestamento, reflorestamento, semeadura, aduba��o, repara��o de solo, plantio, silagem, colheita, corte e descascamento de �rvores, silvicultura, explora��o florestal e dos servi�os cong�neres indissoci�veis da forma��o, manuten��o e colheita de florestas, para quaisquer fins e por quaisquer meios|01012019|
	0717|Escoramento, conten��o de encostas e servi�os cong�neres|01012019|
	0718|Limpeza e dragagem de rios, portos, canais, ba�as, lagos, lagoas, represas, a�udes e cong�neres|01012019|
	0719|Acompanhamento e fiscaliza��o da execu��o de obras de engenharia, arquitetura e urbanismo|01012019|
	0720|Aerofotogrametria (inclusive interpreta��o), cartografia, mapeamento, levantamentos topogr�ficos, batim�tricos, geogr�ficos, geod�sicos, geol�gicos, geof�sicos e cong�neres|01012019|
	0721|Pesquisa, perfura��o, cimenta��o, mergulho, perfilagem, concreta��o, testemunhagem, pescaria, estimula��o e outros servi�os relacionados com a explora��o e explota��o de petr�leo, g�s natural e de outros recursos minerais|01012019|
	0722|Nuclea��o e bombardeamento de nuvens e cong�neres|01012019|
	0801|Ensino regular pr�-escolar, fundamental, m�dio e superior|01012019|
	0802|Instru��o, treinamento, orienta��o pedag�gica e educacional, avalia��o de conhecimentos de qualquer natureza|01012019|
	0901|Hospedagem de qualquer natureza em hot�is,�apart-service�condominiais,�flat, apart-hot�is, hot�is resid�ncia,�residence-service,�suite service, hotelaria mar�tima, mot�is, pens�es e cong�neres; ocupa��o por temporada com fornecimento de servi�o (o valor da alimenta��o e gorjeta, quando inclu�do no pre�o da di�ria, fica sujeito ao Imposto Sobre Servi�os)|01012019|
	0902|Agenciamento, organiza��o, promo��o, intermedia��o e execu��o de programas de turismo, passeios, viagens, excurs�es, hospedagens e cong�neres|01012019|
	0903|Guias de turismo|01012019|
	1001|Agenciamento, corretagem ou intermedia��o de c�mbio, de seguros, de cart�es de cr�dito, de planos de sa�de e de planos de previd�ncia privada|01012019|
	1002|Agenciamento, corretagem ou intermedia��o de t�tulos em geral, valores mobili�rios e contratos quaisquer|01012019|
	1003|Agenciamento, corretagem ou intermedia��o de direitos de propriedade industrial, art�stica ou liter�ria|01012019|
	1004|Agenciamento, corretagem ou intermedia��o de contratos de arrendamento mercantil (leasing), de franquia (franchising) e de faturiza��o (factoring)|01012019|
	1005|Agenciamento, corretagem ou intermedia��o de bens m�veis ou im�veis, n�o abrangidos em outros itens ou subitens, inclusive aqueles realizados no �mbito de Bolsas de Mercadorias e Futuros, por quaisquer meios|01012019|
	1006|Agenciamento mar�timo|01012019|
	1007|Agenciamento de not�cias|01012019|
	1008|Agenciamento de publicidade e propaganda, inclusive o agenciamento de veicula��o por quaisquer meios|01012019|
	1009|Representa��o de qualquer natureza, inclusive comercial|01012019|
	1010|Distribui��o de bens de terceiros|01012019|
	1101|Guarda e estacionamento de ve�culos terrestres automotores, de aeronaves e de embarca��es|01012019|
	1102|Vigil�ncia, seguran�a ou monitoramento de bens, pessoas e semoventes|01012019|
	1103|Escolta, inclusive de ve�culos e cargas|01012019|
	1104|Armazenamento, dep�sito, carga, descarga, arruma��o e guarda de bens de qualquer esp�cie|01012019|
	1201|Espet�culos teatrais|01012019|
	1202|Exibi��es cinematogr�ficas|01012019|
	1203|Espet�culos circenses|01012019|
	1204|Programas de audit�rio|01012019|
	1205|Parques de divers�es, centros de lazer e cong�neres|01012019|
	1206|Boates,�taxi-dancing�e cong�neres|01012019|
	1207|Shows,�ballet, dan�as, desfiles, bailes, �peras, concertos, recitais, festivais e cong�neres|01012019|
	1208|Feiras, exposi��es, congressos e cong�neres|01012019|
	1209|Bilhares, boliches e divers�es eletr�nicas ou n�o|01012019|
	1210|Corridas e competi��es de animais|01012019|
	1211|Competi��es esportivas ou de destreza f�sica ou intelectual, com ou sem a participa��o do espectador|01012019|
	1212|Execu��o de m�sica|01012019|
	1213|Produ��o, mediante ou sem encomenda pr�via, de eventos, espet�culos, entrevistas,�shows,�ballet, dan�as, desfiles, bailes, teatros, �peras, concertos, recitais, festivais e cong�neres|01012019|
	1214|Fornecimento de m�sica para ambientes fechados ou n�o, mediante transmiss�o por qualquer processo|01012019|
	1215|Desfiles de blocos carnavalescos ou folcl�ricos, trios el�tricos e cong�neres|01012019|
	1216|Exibi��o de filmes, entrevistas, musicais, espet�culos,�shows, concertos, desfiles, �peras, competi��es esportivas, de destreza intelectual ou cong�neres|01012019|
	1217|Recrea��o e anima��o, inclusive em festas e eventos de qualquer natureza|01012019|
	1302|Fonografia ou grava��o de sons, inclusive trucagem, dublagem, mixagem e cong�neres|01012019|
	1303|Fotografia e cinematografia, inclusive revela��o, amplia��o, c�pia, reprodu��o, trucagem e cong�neres|01012019|
	1304|Reprografia, microfilmagem e digitaliza��o|01012019|
	1305|Composi��o gr�fica, inclusive confec��o de impressos gr�ficos, fotocomposi��o, clicheria, zincografia, litografia e fotolitografia, exceto se destinados a posterior opera��o de comercializa��o ou industrializa��o, ainda que incorporados, de qualquer forma, a outra mercadoria que deva ser objeto de posterior circula��o, tais como bulas, r�tulos, etiquetas, caixas, cartuchos, embalagens e manuais t�cnicos e de instru��o, quando ficar�o sujeitos ao ICMS|01012019|
	1401|Lubrifica��o, limpeza, lustra��o, revis�o, carga e recarga, conserto, restaura��o, blindagem, manuten��o e conserva��o de m�quinas, ve�culos, aparelhos, equipamentos, motores, elevadores ou de qualquer objeto (exceto pe�as e partes empregadas, que ficam sujeitas ao ICMS)|01012019|
	1402|Assist�ncia t�cnica|01012019|
	1403|Recondicionamento de motores (exceto pe�as e partes empregadas, que ficam sujeitas ao ICMS)|01012019|
	1404|Recauchutagem ou regenera��o de pneus|01012019|
	1405|Restaura��o, recondicionamento, acondicionamento, pintura, beneficiamento, lavagem, secagem, tingimento, galvanoplastia, anodiza��o, corte, recorte, plastifica��o, costura, acabamento, polimento e cong�neres de objetos quaisquer|01012019|
	1406|Instala��o e montagem de aparelhos, m�quinas e equipamentos, inclusive montagem industrial, prestados ao usu�rio final, exclusivamente com material por ele fornecido|01012019|
	1407|Coloca��o de molduras e cong�neres|01012019|
	1408|Encaderna��o, grava��o e doura��o de livros, revistas e cong�neres|01012019|
	1409|Alfaiataria e costura, quando o material for fornecido pelo usu�rio final, exceto aviamento|01012019|
	1410|Tinturaria e lavanderia|01012019|
	1411|Tape�aria e reforma de estofamentos em geral|01012019|
	1412|Funilaria e lanternagem|01012019|
	1413|Carpintaria e serralheria|01012019|
	1414|Guincho intramunicipal, guindaste e i�amento|01012019|
	1501|Administra��o de fundos quaisquer, de cons�rcio, de cart�o de cr�dito ou d�bito e cong�neres, de carteira de clientes, de cheques pr�-datados e cong�neres|01012019|
	1502|Abertura de contas em geral, inclusive conta-corrente, conta de investimentos e aplica��o e caderneta de poupan�a, no Pa�s e no exterior, bem como a manuten��o das referidas contas ativas e inativas|01012019|
	1503|Loca��o e manuten��o de cofres particulares, de terminais eletr�nicos, de terminais de atendimento e de bens e equipamentos em geral|01012019|
	1504|Fornecimento ou emiss�o de atestados em geral, inclusive atestado de idoneidade, atestado de capacidade financeira e cong�neres|01012019|
	1505|Cadastro, elabora��o de ficha cadastral, renova��o cadastral e cong�neres, inclus�o ou exclus�o no Cadastro de Emitentes de Cheques sem Fundos � CCF ou em quaisquer outros bancos cadastrais|01012019|
	1506|Emiss�o, reemiss�o e fornecimento de avisos, comprovantes e documentos em geral; abono de firmas; coleta e entrega de documentos, bens e valores; comunica��o com outra ag�ncia ou com a administra��o central; licenciamento eletr�nico de ve�culos; transfer�ncia de ve�culos; agenciamento fiduci�rio ou deposit�rio; devolu��o de bens em cust�dia|01012019|
	1507|Acesso, movimenta��o, atendimento e consulta a contas em geral, por qualquer meio ou processo, inclusive por telefone, fac-s�mile, internet e telex, acesso a terminais de atendimento, inclusive vinte e quatro horas; acesso a outro banco e a rede compartilhada; fornecimento de saldo, extrato e demais informa��es relativas a contas em geral, por qualquer meio ou processo|01012019|
	1508|Emiss�o, reemiss�o, altera��o, cess�o, substitui��o, cancelamento e registro de contrato de cr�dito; estudo, an�lise e avalia��o de opera��es de cr�dito; emiss�o, concess�o, altera��o ou contrata��o de aval, fian�a, anu�ncia e cong�neres; servi�os relativos a abertura de cr�dito, para quaisquer fins|01012019|
	1509|Arrendamento mercantil (leasing) de quaisquer bens, inclusive cess�o de direitos e obriga��es, substitui��o de garantia, altera��o, cancelamento e registro de contrato, e demais servi�os relacionados ao arrendamento mercantil (leasing)|01012019|
	1510|Servi�os relacionados a cobran�as, recebimentos ou pagamentos em geral, de t�tulos quaisquer, de contas ou carn�s, de c�mbio, de tributos e por conta de terceiros, inclusive os efetuados por meio eletr�nico, autom�tico ou por m�quinas de atendimento; fornecimento de posi��o de cobran�a, recebimento ou pagamento; emiss�o de carn�s, fichas de compensa��o, impressos e documentos em geral|01012019|
	1511|Devolu��o de t�tulos, protesto de t�tulos, susta��o de protesto, manuten��o de t�tulos, reapresenta��o de t�tulos, e demais servi�os a eles relacionados|01012019|
	1512|Cust�dia em geral, inclusive de t�tulos e valores mobili�rios|01012019|
	1513|Servi�os relacionados a opera��es de c�mbio em geral, edi��o, altera��o, prorroga��o, cancelamento e baixa de contrato de c�mbio; emiss�o de registro de exporta��o ou de cr�dito; cobran�a ou dep�sito no exterior; emiss�o, fornecimento e cancelamento de cheques de viagem; fornecimento, transfer�ncia, cancelamento e demais servi�os relativos a carta de cr�dito de importa��o, exporta��o e garantias recebidas; envio e recebimento de mensagens em geral relacionadas a opera��es de c�mbio|01012019|
	1514|Fornecimento, emiss�o, reemiss�o, renova��o e manuten��o de cart�o magn�tico, cart�o de cr�dito, cart�o de d�bito, cart�o sal�rio e cong�neres|01012019|
	1515|Compensa��o de cheques e t�tulos quaisquer; servi�os relacionados a dep�sito, inclusive dep�sito identificado, a saque de contas quaisquer, por qualquer meio ou processo, inclusive em terminais eletr�nicos e de atendimento|01012019|
	1516|Emiss�o, reemiss�o, liquida��o, altera��o, cancelamento e baixa de ordens de pagamento, ordens de cr�dito e similares, por qualquer meio ou processo; servi�os relacionados � transfer�ncia de valores, dados, fundos, pagamentos e similares, inclusive entre contas em geral|01012019|
	1517|Emiss�o, fornecimento, devolu��o, susta��o, cancelamento e oposi��o de cheques quaisquer, avulso ou por tal�o|01012019|
	1518|Servi�os relacionados a cr�dito imobili�rio, avalia��o e vistoria de im�vel ou obra, an�lise t�cnica e jur�dica, emiss�o, reemiss�o, altera��o, transfer�ncia e renegocia��o de contrato, emiss�o e reemiss�o do termo de quita��o e demais servi�os relacionados a cr�dito imobili�rio|01012019|
	1601|Servi�os de transporte coletivo municipal rodovi�rio, metrovi�rio, ferrovi�rio e aquavi�rio de passageiros|01012019|
	1602|Outros servi�os de transporte de natureza municipal|01012019|
	1701|Assessoria ou consultoria de qualquer natureza, n�o contida em outros itens desta lista; an�lise, exame, pesquisa, coleta, compila��o e fornecimento de dados e informa��es de qualquer natureza, inclusive cadastro e similares|01012019|
	1702|Datilografia, digita��o, estenografia, expediente, secretaria em geral, resposta aud�vel, reda��o, edi��o, interpreta��o, revis�o, tradu��o, apoio e infra-estrutura administrativa e cong�neres|01012019|
	1703|Planejamento, coordena��o, programa��o ou organiza��o t�cnica, financeira ou administrativa|01012019|
	1704|Recrutamento, agenciamento, sele��o e coloca��o de m�o-de-obra|01012019|
	1705|Fornecimento de m�o-de-obra, mesmo em car�ter tempor�rio, inclusive de empregados ou trabalhadores, avulsos ou tempor�rios, contratados pelo prestador de servi�o|01012019|
	1706|Propaganda e publicidade, inclusive promo��o de vendas, planejamento de campanhas ou sistemas de publicidade, elabora��o de desenhos, textos e demais materiais publicit�rios|01012019|
	1708|Franquia (franchising)|01012019|
	1709|Per�cias, laudos, exames t�cnicos e an�lises t�cnicas|01012019|
	1710|Planejamento, organiza��o e administra��o de feiras, exposi��es, congressos e cong�neres|01012019|
	1711|Organiza��o de festas e recep��es; buf� (exceto o fornecimento de alimenta��o e bebidas, que fica sujeito ao ICMS)|01012019|
	1712|Administra��o em geral, inclusive de bens e neg�cios de terceiros|01012019|
	1713|Leil�o e cong�neres|01012019|
	1714|Advocacia|01012019|
	1715|Arbitragem de qualquer esp�cie, inclusive jur�dica|01012019|
	1716|Auditoria|01012019|
	1717|An�lise de Organiza��o e M�todos|01012019|
	1718|Atu�ria e c�lculos t�cnicos de qualquer natureza|01012019|
	1719|Contabilidade, inclusive servi�os t�cnicos e auxiliares|01012019|
	1720|Consultoria e assessoria econ�mica ou financeira|01012019|
	1721|Estat�stica|01012019|
	1722|Cobran�a em geral|01012019|
	1723|Assessoria, an�lise, avalia��o, atendimento, consulta, cadastro, sele��o, gerenciamento de informa��es, administra��o de contas a receber ou a pagar e em geral, relacionados a opera��es de faturiza��o (factoring)|01012019|
	1724|Apresenta��o de palestras, confer�ncias, semin�rios e cong�neres|01012019|
	1725|Inser��o de textos, desenhos e outros materiais de propaganda e publicidade, em qualquer meio (exceto em livros, jornais, peri�dicos e nas modalidades de servi�os de radiodifus�o sonora e de sons e imagens de recep��o livre e gratuita)|01012019|
	1801|Servi�os de regula��o de sinistros vinculados a contratos de seguros; inspe��o e avalia��o de riscos para cobertura de contratos de seguros; preven��o e ger�ncia de riscos segur�veis e cong�neres|01012019|
	1901|Servi�os de distribui��o e venda de bilhetes e demais produtos de loteria, bingos, cart�es, pules ou cupons de apostas, sorteios, pr�mios, inclusive os decorrentes de t�tulos de capitaliza��o e cong�neres|01012019|
	2001|Servi�os portu�rios, ferroportu�rios, utiliza��o de porto, movimenta��o de passageiros, reboque de embarca��es, rebocador escoteiro, atraca��o, desatraca��o, servi�os de praticagem, capatazia, armazenagem de qualquer natureza, servi�os acess�rios, movimenta��o de mercadorias, servi�os de apoio mar�timo, de movimenta��o ao largo, servi�os de armadores, estiva, confer�ncia, log�stica e cong�neres|01012019|
	2002|Servi�os aeroportu�rios, utiliza��o de aeroporto, movimenta��o de passageiros, armazenagem de qualquer natureza, capatazia, movimenta��o de aeronaves, servi�os de apoio aeroportu�rios, servi�os acess�rios, movimenta��o de mercadorias, log�stica e cong�neres|01012019|
	2003|Servi�os de terminais rodovi�rios, ferrovi�rios, metrovi�rios, movimenta��o de passageiros, mercadorias, inclusive���� suas opera��es, log�stica e cong�neres|01012019|
	2101|Servi�os de registros p�blicos, cartor�rios e notariais|01012019|
	2201|Servi�os de explora��o de rodovia mediante cobran�a de pre�o ou ped�gio dos usu�rios, envolvendo execu��o de servi�os de conserva��o, manuten��o, melhoramentos para adequa��o de capacidade e seguran�a de tr�nsito, opera��o, monitora��o, assist�ncia aos usu�rios e outros servi�os definidos em contratos, atos de concess�o ou de permiss�o ou em normas oficiais|01012019|
	2301|Servi�os de programa��o e comunica��o visual, desenho industrial e cong�neres|01012019|
	2401|Servi�os de chaveiros, confec��o de carimbos, placas, sinaliza��o visual,�banners, adesivos e cong�neres|01012019|
	2501|Funerais, inclusive fornecimento de caix�o, urna ou esquifes; aluguel de capela; transporte do corpo cadav�rico; fornecimento de flores, coroas e outros paramentos; desembara�o de certid�o de �bito; fornecimento de v�u, essa e outros adornos; embalsamento, embelezamento, conserva��o ou restaura��o de cad�veres|01012019|
	2502|Translado intramunicipal e crema��o de corpos e partes de corpos cadav�ricos|01012019|
	2503|Planos ou conv�nio funer�rios|01012019|
	2504|Manuten��o e conserva��o de jazigos e cemit�rios|01012019|
	2505|Cess�o de uso de espa�os em cemit�rios para sepultamento|01012019|
	2601|Servi�os de coleta, remessa ou entrega de correspond�ncias, documentos, objetos, bens ou valores, inclusive pelos correios e suas ag�ncias franqueadas;�courrier�e cong�neres|01012019|
	2701|Servi�os de assist�ncia social|01012019|
	2801|Servi�os de avalia��o de bens e servi�os de qualquer natureza|01012019|
	2901|Servi�os de biblioteconomia|01012019|
	3001|Servi�os de biologia, biotecnologia e qu�mica|01012019|
	3101|Servi�os t�cnicos em edifica��es, eletr�nica, eletrot�cnica, mec�nica, telecomunica��es e cong�neres|01012019|
	3201|Servi�os de desenhos t�cnicos|01012019|
	3301|Servi�os de desembara�o aduaneiro, comiss�rios, despachantes e cong�neres|01012019|
	3401|Servi�os de investiga��es particulares, detetives e cong�neres|01012019|
	3501|Servi�os de reportagem, assessoria de imprensa, jornalismo e rela��es p�blicas|01012019|
	3601|Servi�os de meteorologia|01012019|
	3701|Servi�os de artistas, atletas, modelos e manequins|01012019|
	3801|Servi�os de museologia|01012019|
	3901|Servi�os de ourivesaria e lapida��o (quando o material for fornecido pelo tomador do servi�o)|01012019|
	4001|Obras de arte sob encomenda|01012019|
	9999|Outros|01012019|',chr(13) || chr(10))) as linha
)
, t2 AS (
	SELECT 
		string_to_array(linha, '|') as linha
	FROM 
		t
) 
, t3 AS (
	SELECT 
		linha[1]::integer as id,
		RIGHT(trim(linha[1]::text,'"'),4) as codigo,
		retira_acento(linha[2]::text) as servico,
		(RIGHT(linha[3]::text,4) || '-' || substr(linha[3]::text,3,2) || '-' || LEFT(linha[3]::text,2))::date as data_vigencia
	FROM 
		t2
)
SELECT 
	id,
	codigo,
	servico,
	data_vigencia
FROM 
	t3
	