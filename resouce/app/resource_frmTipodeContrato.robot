*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Tipo de Contrato

# SCREEN
Acessar Tela Cadastro de Tipo de Contrato
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Tipo de Contrato
  ${APPNAME}  Set Variable  frmTipodeContrato
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.


#FIELD
Preencher o campo Id Tipo de Contrato "${ID}"
  Input Text  xpath=//*[@name="tipocont"][@type="text"]  ${ID}

Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="desctipocont"][@type="text"]  ${DESCRICAO}


#VERIFY

E verificar o campo Id Tipo de Contrato 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}  Id Tipo de Contrato 
	Element Attribute Value Should Be  ${CAMPO}  name  tipocont

E verificar o campo Descrição 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}  Descrição
	Element Attribute Value Should Be  ${CAMPO}  name  desctipocont