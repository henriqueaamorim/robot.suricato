*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Relatórios | Consulta Impressa
# REPORT
resource_report.Navegar no Relatório: Consulta Saldo de Benefícios nos Coletores

# SCREEN
Acessar Tela Consulta Benefícios (Busca Externa)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta Benefícios
  ${APPNAME}     Set Variable  cnsbeneficios
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#FIELD
Preencher o campo Código do Benefício "${CÓDIGO_DO_BENEFÍCIO}"
	Input Text  xpath=//*[@name="codibene"][@type="text"]  ${CÓDIGO_DO_BENEFÍCIO}

Preencher o campo Descrição"${DESCRIÇÃ}"
	Input Text  xpath=//*[@name="descbene"][@type="text"]  ${DESCRIÇÃ}

