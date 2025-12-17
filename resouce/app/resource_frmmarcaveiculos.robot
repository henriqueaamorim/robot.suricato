*** Settings ***
Library         SeleniumLibrary
Library         ../../api/data/client/vehicle.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Cadastro | Marcas

# SCREEN
Acessar Tela Marcas de Veículos (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Marcas de Veículos (Atualização)
  ${APPNAME}     Set Variable  frmmarcaveiculos
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Marcas de Veículos (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Marcas de Veículos (Inclusão)
  ${APPNAME}     Set Variable  frmmarcaveiculos
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   
  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.

#FIELD
Preencher o campo Marca "${MARCA}"
  ${ELEMENT}  Set Variable  name=marcveic
  
  IF  '${MARCA}' == 'API'
    ${MARCA}  Run Keyword  Marca
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Input Text                     ${ELEMENT}  ${MARCA}

#VERIFY

Verificar o campo Marca *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr/td[2]/input
	
	Element Should Contain  ${LABEL}   Marca *
 	Element Attribute Value Should Be  ${CAMPO}   name   marcveic
