# Script para ser utilizado nos testcases VERIFY, necessário construir somente o campo *** Test Cases *** e inserir os 
# locators e xpaths dentro do arquivo de resource (também é possivel, caso os xpaths sigam um padrão, colar o xpath e
# substituir o número referente a posição do item pela variável "cont"). 
# Antes de usar, é necessário alterar os paths nas variáveis de leitura para o path da SUA pasta do repositório do robot.
# Modo de Uso: No final do arquivo passar o nome da aplicação, o número da pasta e pronto!
# Qualquer coisa perguntar pro Brian :D


def build_resource(app, num):
	linhas_verificar_testcase = []
	linhas_tratadas_testcase = []
	linhas_verificar_resource = []
	linhas_tratadas_resource = []
	chave_esq = "{"
	chave_dir = "}"

# CONSTRUÇÃO TESTCASE #
	# leitura do arquivo
	leitura_testcase = open(f"C:\\Users\\Administrador\\Desktop\\Robot-NEW\\tests\\AppTest\\{app}\\{num}\\testcase.robot", mode="r", encoding="utf-8")
	 
	# guardando linhas que possuem "verificar" dentro de uma lista
	conteudo = leitura_testcase.readlines()

	for linha in conteudo:
		if "E verificar" in linha:
			linhas_verificar_testcase.append(linha)

	# split do conteudo
	for linha in linhas_verificar_testcase:
			print(linha)
			crop_linha = linha.split("\n")
			crop_linha = crop_linha[0].split("  ")
			linhas_tratadas_testcase.append(crop_linha[1])

	# fechando leitura do arquivo testcase
	leitura_testcase.close()

	escrita_testcase = open(f"C:\\Users\\Administrador\\Desktop\\Robot-NEW\\tests\\AppTest\\{app}\\{num}\\testcase.robot", mode="a", encoding="utf-8")
	
	for linha in linhas_tratadas_testcase:
		crop_linha = linha.replace("E verificar", "Verificar")
		if "Teste" not in crop_linha:
			escrita_testcase.write(f"""\n{linha}
  resource_{app}.{crop_linha}\n""")
	
	escrita_testcase.write(f"""\n{linha}
  resource_utils.Verificar Campo Teste na Tela "${chave_esq}SCREENNAME{chave_dir}" da Aplicação "${chave_esq}APPNAME{chave_dir}"\n""")

# fechando escrita do arquivo testcase
	escrita_testcase.close()

	# CONSTRUÇÃO RESOURCE #
	# leitura do arquivo
	arquivo_testcase = open(f"C:\\Users\\Administrador\\Desktop\\Robot-NEW\\tests\\AppTest\\{app}\\{num}\\testcase.robot", mode="r", encoding="utf-8")
	 
	# guardando linhas que possuem "verificar" dentro de uma lista
	conteudo = arquivo_testcase.readlines()

	for linha in conteudo:
		if "resource" in linha and "Verificar" in linha and "Teste" not in linha:
			linhas_verificar_resource.append(linha)

	# split do conteudo
	for linha in linhas_verificar_resource:
		crop_linha = linha.split(".")
		crop_linha = crop_linha[1].split("\n")
		linhas_tratadas_resource.append(crop_linha[0])
	
	# fechando arquivo testcase
	arquivo_testcase.close()

	# Abertura do arquivo de recurso
	arquivo_resource = open(f"C:\\Users\\Administrador\\Desktop\\Robot-NEW\\resource\\app\\resource_{app}.robot", mode="a", encoding='utf8')
	
	# Adicionando comentário verify
	arquivo_resource.write(f"\n\n\n#VERIFY\n")

	cont = 1
	for linha in linhas_tratadas_resource:
		if "campo" in linha:
			crop_label = linha.split("campo")
			arquivo_resource.write(f"""\n{linha}
	${chave_esq}LABEL{chave_dir}      Set Variable  xpath=
	${chave_esq}CAMPO{chave_dir}      Set Variable  xpath=

	Element Should Contain             ${chave_esq}LABEL{chave_dir}  {crop_label[1]}
 	Element Attribute Value Should Be  ${chave_esq}CAMPO{chave_dir}   name   \n""")
	
		elif "label" in linha:
			crop_label = linha.split("label")
			arquivo_resource.write(f"""\n{linha}
	${chave_esq}LABEL{chave_dir}   Set Variable  xpath=
	Element Should Contain  ${chave_esq}LABEL{chave_dir}  {crop_label[1]}\n""")

		cont += 1
	
	
build_resource("frmAmbiente", "teste")
