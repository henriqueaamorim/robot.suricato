*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.resource_mnu.Clicar No Menu Relatórios | Consulta Impressa
# REPORT
resource_report.Navegar no Relatório: Consulta de Programações

# SCREEN
Acessar Tela Consulta de Horários
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Horários
  ${APPNAME}     Set Variable  cnsprogramacaohorario
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_cnsprogramacaohorario_2"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#VERIFY

Verificar a label Data da Troca
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[1]/font/b
	Element Should Contain  ${LABEL}   Data da Troca

Verificar a label Código do Novo Horário
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[2]/font/b
	Element Should Contain  ${LABEL}   Código do Novo Horário

Verificar a label Novo Horário
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[3]/font/b
	Element Should Contain  ${LABEL}   Novo Horário
