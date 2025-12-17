*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.resource_mnu.Clicar No Menu Relatórios | Consulta Impressa
# REPORT
resource_report.Navegar no Relatório: Ficha Complementar Colaborador

# SCREEN
Acessar Tela Ficha Complementar Colaborador - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Ficha Complementar Colaborador
  ${APPNAME}     Set Variable  consrelfichacomplementarservidor
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   
  Sleep  5s
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Ficha Complementar de Colaboradores
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Ficha Complementar de Colaboradores
  ${APPNAME}     Set Variable  consrelfichacomplementarservidor
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Código da Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Código da Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   tbempre_codiempr[]

Verificar o campo Tipo de Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Tipo de Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_tipocola[]

Verificar o campo Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_codimatr

Verificar o campo Nome
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name   tbpessoa_nomepess

Verificar o campo Exibir Usuário:
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Exibir Usuário:
 	Element Attribute Value Should Be  ${CAMPO}   name   filtroexibeusuario



#VERIFY

Verificar a label Código da Empresa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[1]/td[1]/font/b
	Element Should Contain  ${LABEL}   Código da Empresa

Verificar a label Nome da Empresa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[2]/td[1]/font/b
	Element Should Contain  ${LABEL}   Nome da Empresa

Verificar a label Tipo de Colaborador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[3]/td[1]/font/b
	Element Should Contain  ${LABEL}   Tipo de Colaborador

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[4]/td[1]/font/b
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Apelido
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[5]/td[1]/font/b
	Element Should Contain  ${LABEL}   Apelido

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[6]/td[1]/font/b
	Element Should Contain  ${LABEL}   Nome

Verificar a label Endereço
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[7]/td[1]/font/b
	Element Should Contain  ${LABEL}   Endereço

Verificar a label Número
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[8]/td[1]/font/b
	Element Should Contain  ${LABEL}   Número

Verificar a label Complemento
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[9]/td[1]/font/b
	Element Should Contain  ${LABEL}   Complemento

Verificar a label Bairro
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[10]/td[1]/font/b
	Element Should Contain  ${LABEL}   Bairro

Verificar a label Cidade
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[11]/td[1]/font/b
	Element Should Contain  ${LABEL}   Cidade

Verificar a label Estado
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[12]/td[1]/font/b
	Element Should Contain  ${LABEL}   Estado

Verificar a label CEP
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[13]/td[1]/font/b
	Element Should Contain  ${LABEL}   CEP

Verificar a label Telefone
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[14]/td[1]/font/b
	Element Should Contain  ${LABEL}   Telefone

Verificar a label Ramal
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[15]/td[1]/font/b
	Element Should Contain  ${LABEL}   Ramal

Verificar a label E-Mail Pessoal
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[16]/td[1]/font/b
	Element Should Contain  ${LABEL}   E-Mail Pessoal

Verificar a label E-Mail Comercial
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[17]/td[1]/font/b
	Element Should Contain  ${LABEL}   E-Mail Comercial

Verificar a label Número RG
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[18]/td[1]/font/b
	Element Should Contain  ${LABEL}   Número RG

Verificar a label Órgão Emissor RG
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[19]/td[1]/font/b
	Element Should Contain  ${LABEL}   Órgão Emissor RG

Verificar a label Estado Emissor RG
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[20]/td[1]/font/b
	Element Should Contain  ${LABEL}   Estado Emissor RG

Verificar a label Data Expedição RG
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[21]/td[1]/font/b
	Element Should Contain  ${LABEL}   Data Expedição RG

Verificar a label Número CNH
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[22]/td[1]/font/b
	Element Should Contain  ${LABEL}   Número CNH

Verificar a label Categoria CNH
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[23]/td[1]/font/b
	Element Should Contain  ${LABEL}   Categoria CNH

Verificar a label Data 1º CNH
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[24]/td[1]/font/b
	Element Should Contain  ${LABEL}   Data 1º CNH

Verificar a label Vencimento CNH
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[25]/td[1]/font/b
	Element Should Contain  ${LABEL}   Vencimento CNH

Verificar a label Número CTPS
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[26]/td[1]/font/b
	Element Should Contain  ${LABEL}   Número CTPS

Verificar a label Série CTPS
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[27]/td[1]/font/b
	Element Should Contain  ${LABEL}   Série CTPS

Verificar a label Nome do Pai
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[28]/td[1]/font/b
	Element Should Contain  ${LABEL}   Nome do Pai

Verificar a label Nome da Mãe
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[29]/td[1]/font/b
	Element Should Contain  ${LABEL}   Nome da Mãe

Verificar a label Cidade de Nascimento
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[4]/td/table/tbody/tr[30]/td[1]/font/b
	Element Should Contain  ${LABEL}   Cidade de Nascimento
