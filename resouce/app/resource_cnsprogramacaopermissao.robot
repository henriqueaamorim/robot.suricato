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
Acessar Tela Consulta de Permissões
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Permissões
  ${APPNAME}     Set Variable  cnsprogramacaopermissao
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "nmsc_iframe_cnsprogramacaopermissao_5"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#VERIFY

Verificar a label Data Inicial
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[1]/font/b
	Element Should Contain  ${LABEL}   Data Inicial

Verificar a label Hora Final
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[4]/font/b
	Element Should Contain  ${LABEL}   Hora Final

Verificar a label Dias Normais
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[5]/font/b
	Element Should Contain  ${LABEL}   Dias
	Element Should Contain  ${LABEL}   Normais

Verificar a label Sábado 
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[7]/font/b
	Element Should Contain  ${LABEL}   Sábado 

Verificar a label Domingo
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[8]/font/b
	Element Should Contain  ${LABEL}   Domingo
