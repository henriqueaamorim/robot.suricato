*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Histórico de Codin por Filial

# SCREEN
Acessar Tela Formulário de Histórico de Codin por Filial
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Formulário de Histórico de Codin por Filial
  ${APPNAME}  Set Variable  frmHistoricoExternalKeyFilial
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código da Filial "${CODIGO}"
  Input Text  xpath=//*[@name="codifili"][@type="text"]  ${CODIGO}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Codin "${CODIN}"
  Input Text  xpath=//*[@name="codicole"][@type="text"]  ${CODIN}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]
  
Preencher o campo Chave Externa "${CHAVE}"
  Input Text  xpath=//*[@name="external_key"][@type="text"]  ${CHAVE}


#VERIFY 

E verificar o campo Código da Filial 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Código da Filial 
	Element Attribute Value Should Be  ${CAMPO}  name  codifili

E verificar o campo Codin 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Codin 
	Element Attribute Value Should Be  ${CAMPO}  name  codicole

E verificar o campo Chave Externa 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}  Chave Externa 
	Element Attribute Value Should Be  ${CAMPO}  name  external_key