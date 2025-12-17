*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Cadastro

# SCREEN
Acessar Tela Multas (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Multas (Atualização)
  ${APPNAME}     Set Variable  frmocorrenciasinfracoes
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "nmsc_iframe_frmocorrenciasinfracoes_2"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Multas (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Multas (Inclusão)
  ${APPNAME}     Set Variable  frmocorrenciasinfracoes
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   
  Mudar Frame Aplicação "nmsc_iframe_frmocorrenciasinfracoes_2"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Cód. Infração
  ${ELEMENT}  Set Variable  id=cap_codiinfrtran1

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window


#FIELD
Preencher o campo Cód. Infração "${COD}"
  Input Text  xpath=//*[@name="codiinfrtran1"][@type="text"]  ${COD}



#VERIFY

Verificar a label SEQ
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   SEQ

Verificar a label Cód. Infração
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[3]
	Element Should Contain  ${LABEL}   Cód. Infração

Verificar o campo Cód. Infração
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[3]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[3]/input[1]

  Element Should Contain  ${LABEL}  Cód. Infração
  Element Attribute Value Should Be  ${CAMPO}  name  codiinfrtran1