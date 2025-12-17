# Script para ser utilizado nos testcases REGISTER, necessário construir somente o campo *** Test Cases *** e inserir os 
# "names" de cada campo dentro do arquivo de resource. 
# Antes de usar, é necessário alterar os paths nas variáveis de leitura para o path da SUA pasta do repositório do robot.
# Modo de Uso: No final do arquivo passar o nome da aplicação, o número da pasta e pronto!
# Qualquer coisa perguntar pro Brian :D

def build_resource(app, num):
	linhas_filtradas = []
	linhas_tratadas = []
	linhas_resource = []
	lista_variaveis = []
	chave_esq = "{"
	chave_dir = "}"

# CONSTRUÇÃO TESTCASE #
	# leitura do arquivo
	leitura_testcase = open(f"C:\\Users\\Administrador\\Desktop\\Robot-NEW\\tests\\AppTest\\{app}\\{num}\\testcase.robot", mode="r", encoding="utf-8")
	# Guardando linhas do arquivo em formato de lista
	conteudo = leitura_testcase.readlines()
	# Filtrando as linhas que serão utilizadas
	for linha in conteudo:
		if "E selecionar" in linha or "E preencher" in linha:
			linhas_filtradas.append(linha)

	# split do conteudo
	for linha in linhas_filtradas:
		crop_linha = linha.split("\n")
		crop_linha = crop_linha[0].split("  ")
		linhas_tratadas.append(crop_linha[1])

	# Fechando leitura do arquivo testcase
	leitura_testcase.close()

	# Abertura do arquivo de testcase para escrita
	escrita_testcase = open(f"C:\\Users\\Administrador\\Desktop\\Robot-NEW\\tests\\AppTest\\{app}\\{num}\\testcase.robot", mode="r", encoding="utf-8")
	
	# Tratamento das linhas a serem utilizadas
	for linha in linhas_tratadas:
		if "E preencher" in linha:
			linha_baixo_tratada = linha.replace("E preencher", "Preencher")
		elif "E selecionar" in linha:
			linha_baixo_tratada = linha.replace("E selecionar", "Selecionar")
		
		linha_cima_tratada = linha.split('"')
		crop_linha = linha_baixo_tratada.split('"')
		nome_campo = crop_linha[0].split('campo ')
	
	# Crop do nome da variável	
		nome_variavel = nome_campo[1][0:-1]
		nome_variavel = nome_variavel.replace(".", "")
		nome_variavel = nome_variavel.replace(" ", "_")
		
	# Guardando em uma lista para usar na construção do arquivo de recurso
		lista_variaveis.append(nome_variavel)
		linhas_resource.append(crop_linha[0])
	
	# Escrita do testcase
		if "preencher" in linha:
			if "Data" in linha and "Hora" not in linha:
				escrita_testcase.write(f"""\n{linha_cima_tratada[0]}"${chave_esq}DIA{chave_dir}/${chave_esq}MES{chave_dir}/${chave_esq}ANO{chave_dir}"
  resource_{app}.{crop_linha[0]}"${chave_esq}DIA{chave_dir}/${chave_esq}MES{chave_dir}/${chave_esq}ANO{chave_dir}"\n""")
			
			elif "Hora" in linha and "Data" not in linha:
				escrita_testcase.write(f"""\n{linha_cima_tratada[0]}"${chave_esq}HORA{chave_dir}:${chave_esq}MIN{chave_dir}"
  resource_{app}.{crop_linha[0]}"${chave_esq}HORA{chave_dir}:${chave_esq}MIN{chave_dir}"\n""")
			
			else:
				escrita_testcase.write(f"""\n{linha_cima_tratada[0]}"${chave_esq}{nome_variavel.upper()}{chave_dir}"
  resource_{app}.{crop_linha[0]}"${chave_esq}{nome_variavel.upper()}{chave_dir}"\n""")
		
		else:	
			escrita_testcase.write(f"""\n{linha_cima_tratada[0]}"${chave_esq}{nome_variavel.upper()}{chave_dir}"
  resource_{app}.{crop_linha[0]}"${chave_esq}{nome_variavel.upper()}{chave_dir}"\n""")

	# Fechamento do arquivo testcase
	escrita_testcase.close()

 	# Abertura do arquivo de recurso
	arquivo_resource = open(f"C:\\Users\\Administrador\\Desktop\\Robot-NEW\\resource\\app\\resource_{app}.robot", mode="a", encoding='utf8')
	
	# Escrita do resource
	arquivo_resource.write(f"\n\n\n#FIELD\n")
	
	i = 0
	for linha in linhas_resource:
		
		if "Preencher" in linha:
			if "Data" in linha and "Hora" not in linha:
				arquivo_resource.write(f"""{linha}"${chave_esq}DIA{chave_dir}/${chave_esq}MES{chave_dir}/${chave_esq}ANO{chave_dir}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${chave_esq}DIA{chave_dir}
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${chave_esq}MES{chave_dir}
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${chave_esq}ANO{chave_dir}\n\n""")
			
			elif "Hora" in linha and "Data" not in linha:
				arquivo_resource.write(f"""{linha}"${chave_esq}HORA{chave_dir}:${chave_esq}MIN{chave_dir}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${chave_esq}HORA{chave_dir}
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${chave_esq}MIN{chave_dir}\n\n""")
			
			else:
				arquivo_resource.write(f"""{linha}"${chave_esq}{lista_variaveis[i].upper()}{chave_dir}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${chave_esq}{lista_variaveis[i].upper()}{chave_dir}\n\n""")
		
		elif "Selecionar" in linha:
			arquivo_resource.write(f"""{linha}"${chave_esq}{lista_variaveis[i].upper()}{chave_dir}"
	Select From List By Label  xpath=//*[@name="NAME_DO_CAMPO"]  ${chave_esq}{lista_variaveis[i].upper()}{chave_dir}\n\n""")
		
		i += 1
	
	# Fechamento do arquivo de recurso
	arquivo_resource.close()

build_resource("frmAmbiente", "teste")