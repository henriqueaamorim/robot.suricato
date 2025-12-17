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
resource_report.Navegar no Relatório: Relatório de Consumo de Restaurante - Resumo

# SCREEN
Acessar Tela Relatório Refeitório Resumo
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatório Refeitório Resumo
  ${APPNAME}     Set Variable  cnsConsumoRestauranteResumo
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar a label Consumo de Refeitório - Resumo
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font
	Element Should Contain  ${LABEL}   Consumo de Refeitório - Resumo

Verificar a label Desjejum
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font
	Element Should Contain  ${LABEL}   Desjejum

Verificar a label R$ Desjejum
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font
	Element Should Contain  ${LABEL}   R$ Desjejum

Verificar a label Almoço
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font
	Element Should Contain  ${LABEL}   Almoço

Verificar a label R$ Almoço
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font
	Element Should Contain  ${LABEL}   R$ Almoço

Verificar a label Lanche
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font
	Element Should Contain  ${LABEL}   Lanche

Verificar a label R$ Lanche
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font
	Element Should Contain  ${LABEL}   R$ Lanche

Verificar a label Jantar
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[8]/font
	Element Should Contain  ${LABEL}   Jantar

Verificar a label R$ Jantar
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[9]/font
	Element Should Contain  ${LABEL}   R$ Jantar

Verificar a label Ceia
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[10]/font
	Element Should Contain  ${LABEL}   Ceia

Verificar a label R$ Ceia
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[11]/font
	Element Should Contain  ${LABEL}   R$ Ceia

Verificar a label R$ [total]
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[12]/font
	Element Should Contain  ${LABEL}   R$ [total]

Verificar a label Total Geral
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[1]/font
	Element Should Contain  ${LABEL}   Total Geral
