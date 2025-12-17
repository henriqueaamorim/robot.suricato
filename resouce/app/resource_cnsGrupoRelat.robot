*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Relatórios | Grupo de Relatório

# SCREEN
Acessar Tela Consulta Grupo de Relatório
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsGrupoRelat
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Grupo de Relatório
    ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta Grupo de Relatório
  END  
  
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Consulta Grupo de Relatório - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Grupo de Relatório
  ${APPNAME}     Set Variable  cnsGrupoRelat
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#VERIFY LABELS

Verificar a label: Código
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]
	Element Should Contain  ${LABEL}   Código

Verificar a label: Nome do Grupo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome do Grupo')]
	Element Should Contain  ${LABEL}   Nome do Grupo

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Nome do Grupo	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome do Grupo')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomegruporelat']
	Element Should Contain             ${LABEL}   Nome do Grupo	
 	Element Attribute Value Should Be  ${CAMPO}   name   nomegruporelat   



#FIELD
Preencher o campo Nome do Grupo "${NOME}"
  Input Text   xpath=//*[@name="nomegruporelat"][@type="text"]   ${NOME}