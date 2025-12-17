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
Acessar Tela Consulta de Programações
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Programações
  ${APPNAME}     Set Variable  cnsprogramacoes
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_cnsprogramacoes_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#VERIFY

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font/b
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo de Pessoa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font/b
	Element Should Contain  ${LABEL}   Tipo de Pessoa

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font/b/a/font
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font/b/a/font
	Element Should Contain  ${LABEL}   Nome

Verificar a segunda label Empresa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]/b/font
	Element Should Contain  ${LABEL}   Empresa

Verificar a segunda label Tipo de Pessoa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]/b/font
	Element Should Contain  ${LABEL}   Tipo de Pessoa

Verificar a segunda label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]/b/font
	Element Should Contain  ${LABEL}   Matrícula

Verificar a segunda label Nome
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]/b/font
	Element Should Contain  ${LABEL}   Nome
