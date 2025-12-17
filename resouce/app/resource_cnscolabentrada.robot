*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

# SCREEN
Acessar Tela Entrada de Visitante - Colaborador Visitado - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Entrada de Visitante - Colaborador Visitado
  ${APPNAME}     Set Variable  cnscolabentrada
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Switch Window  locator=NEW
  Maximize Browser Window

  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Entrada de Visitante - Colaborador Visitado
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Entrada de Visitante - Colaborador Visitado
  ${APPNAME}     Set Variable  cnscolabentrada
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"




#BUTTON
#resource_btn.



#FIELD
Preencher o campo Nome "${NOME}"
	Input Text  xpath=//*[@name="tbpessoa_nomepess"][@type="text"]  ${NOME}

Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="tbcolab_codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Tipo de Colaborador "${TIPO_DE_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="tbcolab_tipocola"]  ${TIPO_DE_COLABORADOR}

Preencher o campo Matrícula "${MATRÍCULA}"
	Input Text  xpath=//*[@name="tbcolab_codimatr"][@type="text"]  ${MATRÍCULA}

Preencher o campo Ramal "${RAMAL}"
	Input Text  xpath=//*[@name="numeramal"][@type="text"]  ${RAMAL}

