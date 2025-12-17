*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Processo | Layout de Relatório

# SCREEN
Acessar Tela Modelo de Relatório para Processo Automático
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Modelo de Relatório para Processo Automático
  ${APPNAME}  Set Variable  cnsReport
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Modelo de Relatório para Processo Automático - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Modelo de Relatório para Processo Automático
  ${APPNAME}  Set Variable  cnsReport
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

  

#BUTTON
#resource_btn.


#FIELD
Preencher o campo Nome "${NOME}"
  Input Text  name=name  ${NOME}


#VERIFY LABELS

Verificar a label: Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	Element Should Contain  ${LABEL}   Nome

Verificar a label: Título
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Título')]
	Element Should Contain  ${LABEL}     Título


#VERIFY CAMPOS

Verificar o campo Nome
    ${LABEL}  Set Variable  xpath=//td[contains(text(),'Nome')]
    ${CAMPO}  Set Variable  xpath=//input[@name='name']
    Element Should Contain  ${LABEL}  Nome
    Element Attribute Value Should Be  ${CAMPO}  name  name
 
Verificar o campo Título
    ${LABEL}  Set Variable  xpath=//td[contains(text(),'Título')]
    ${CAMPO}  Set Variable  xpath=//input[@name='titlename']
    Element Should Contain  ${LABEL}  Título
    Element Attribute Value Should Be  ${CAMPO}  name  titlename

