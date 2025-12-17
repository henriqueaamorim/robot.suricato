*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Relatórios | Ativar


# SCREEN
Acessar Tela Ativação de Relatório
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Ativação de Relatório
  ${APPNAME}     Set Variable  frmRelatoriosAtivacao
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#FIELD
Selecionar a opção NOME_DO_CAMPO 
	Click Element  xpath=//*[@name="ativ[]"]


#VERIFY

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Nome

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}   Descrição

Verificar o campo Ativo
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Ativo
 	Element Attribute Value Should Be  ${CHECKBOX}   name   ativ[]
