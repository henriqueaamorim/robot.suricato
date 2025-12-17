*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Liberação de Nível


# SCREEN
Acessar Tela Consulta de Histórico de Liberação de Nível - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Histórico de Liberação de Nível
  ${APPNAME}     Set Variable  cnsLiberacaoNivel
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   
  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Consulta de Histórico de Liberação de Nível
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Histórico de Liberação de Nível
  ${APPNAME}     Set Variable  cnsLiberacaoNivel
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   
  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
  Select from list by label  xpath=//*[@name="codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Tipo do Colaborador "${TIPCOL}"
  Select from list by label  xpath=//*[@name="tipocola"]  ${TIPCOL}  

Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME}

Preencher o campo Apelido "${APL}"
  Input Text  xpath=//*[@name="apelcola"][@type="text"]  ${APL}

Preencher o campo Matrícula "${MAT}"
  Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MAT}

Preencher o campo PIS "${PIS}"
  Input Text  xpath=//*[@name="numepis"][@type="text"]  ${PIS}

Preencher o campo Número do CPF "${CPF}"
  Input Text  xpath=//*[@name="numecpf"][@type="text"]  ${CPF}

Preencher o campo Ramal "${RAMAL}"
  Input Text  xpath=//*[@name="numram"][@type="text"]  ${RAMAL}

Preencher o campo Chave Externa "${EXTCHAVE}" 
  Input Text  xpath=//*[@name="external_key"][@type="text"]  ${EXTCHAVE}




#BUTTON


#VERIFY (Filtro)

Verificar o campo Empresa
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span/select

	Element Should Contain  ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   codiempr

Verificar o campo Tipo do Colaborador
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select

	Element Should Contain  ${LABEL}   Tipo do Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   tipocola

Verificar o campo Nome
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input

	Element Should Contain  ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name   nomepess

Verificar o campo Apelido
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input

	Element Should Contain  ${LABEL}   Apelido
 	Element Attribute Value Should Be  ${CAMPO}   name   apelcola

Verificar o campo Matrícula
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input

	Element Should Contain  ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   codimatr

Verificar o campo PIS
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/input

	Element Should Contain  ${LABEL}   PIS
 	Element Attribute Value Should Be  ${CAMPO}   name   numepis

Verificar o campo Número do CPF
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/input

	Element Should Contain  ${LABEL}   Número do CPF
 	Element Attribute Value Should Be  ${CAMPO}   name   numecpf

Verificar o campo Ramal
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/input

	Element Should Contain  ${LABEL}   Ramal
 	Element Attribute Value Should Be  ${CAMPO}   name   numram

Verificar o campo Chave Externa
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[2]/table/tbody/tr/td/input

	Element Should Contain  ${LABEL}   Chave Externa
 	Element Attribute Value Should Be  ${CAMPO}   name   external_key



#VERIFY

Verificar a label Código do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[1]/font/b
	Element Should Contain  ${LABEL}   Código do Colaborador

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b
	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b
	Element Should Contain  ${LABEL}   Nome

Verificar a label Crachá
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b
	Element Should Contain  ${LABEL}   Crachá

Verificar a label Nível Anterior
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[7]/font/b
	Element Should Contain  ${LABEL}   Nível Anterior

Verificar a label Nível Novo
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[8]/font/b
	Element Should Contain  ${LABEL}   Nível Novo

Verificar a label Justificativa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[9]/font/b
	Element Should Contain  ${LABEL}   Justificativa

Verificar a label Data Alteração
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[10]/font/b
	Element Should Contain  ${LABEL}   Data Alteração

Verificar a label Hora Alteração
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[11]/font/b
	Element Should Contain  ${LABEL}   Hora Alteração
