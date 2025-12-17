*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Benefício | Atribuição

# SCREEN
Acessar Tela Abrangência
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Abrangência
  ${APPNAME}     Set Variable  ctrselecaodevedoresbeneficios
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Switch Window  locator=NEW
  Maximize Browser Window
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#FIELD
Preencher o campo Empresa "${EMPRESA}"
	Input Text  xpath=//*[@name="numemp"][@type="text"]  ${EMPRESA}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="id_label_numemp"]
	
Selecionar uma opção no campo Tipo de Colaborador "${TIPO}"
	Select From List By Label  xpath=//*[@name="tipcol[]"]  ${TIPO}

Preencher o campo Colaborador "${COLABORADOR}"
	Input Text  xpath=//*[@name="numcad"][@type="text"]  ${COLABORADOR}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="id_label_numemp"]