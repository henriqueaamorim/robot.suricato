*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | LGPD

# SCREEN
Acessar Tela LGPD - Cadastro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  LGPD
  ${APPNAME}  Set Variable  frmLGPD
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[5]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela LGPD - Atualização
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  LGPD
  ${APPNAME}  Set Variable  frmLGPD
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[5]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="descricao"][@type="text"]  ${DESCRICAO}

Selecionar os usuários desejados
  Sleep  2s
#seleciona o primeiro registro
  Click Element    xpath=//*[@id="container"]/div/div/div/div[1]/ul/li[1]
#clica no botão incluir
  Click Element  xpath=//*[@id="container"]/div/div/div/div[2]/button[2]

Selecionar os campos desejados
#seleciona a data
  Click Element    xpath=//*[@id="grid_scroll"]/div[2]/input
  #seleciona a cidade
  Click Element    xpath=//*[@id="grid_scroll"]/div[3]/input




#VERIFY

Verificar o campo Descrição
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   descricao
