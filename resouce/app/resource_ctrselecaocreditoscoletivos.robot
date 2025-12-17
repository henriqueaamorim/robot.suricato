*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Coletivo

# SCREEN
Acessar Tela Abrangência
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Abrangência
  ${APPNAME}     Set Variable  ctrselecaocreditoscoletivos 
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Switch Window  locator=NEW
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Cargo
  ${ELEMENT}  Set Variable  id=cap_codcar

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Escala
  ${ELEMENT}  Set Variable  id=cap_codesc

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="numemp[]"]  ${EMPRESA}

Selecionar uma opção no campo Tipo de Colaborador "${TIPO}"
	Select From List By Label  xpath=//*[@name="tipcol[]"]  ${TIPO}

Preencher o campo Matrícula "${MATRICULA}"
	Input Text  xpath=//*[@name="numcad"][@type="text"]  ${MATRICULA}
	
Selecionar uma opção no campo Filial "${FILIAL}"
	Select From List By Label  xpath=//*[@name="codfil[]"]  ${FILIAL}

Selecionar uma opção no campo Local "${LOCAL}"
	Select From List By Label  xpath=//*[@name="numloc[]"]  ${LOCAL}

Preencher o campo Cargo "${CARGO}"
	Input Text  xpath=//*[@name="codcar"][@type="text"]  ${CARGO}
	
Preencher o campo Escala "${ESCALA}"
	Input Text  xpath=//*[@name="codesc"][@type="text"]  ${ESCALA}
	