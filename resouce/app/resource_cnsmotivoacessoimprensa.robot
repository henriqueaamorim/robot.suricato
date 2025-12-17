*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Candidato | Motivo de Acesso

# SCREEN
Acessar Tela: Motivo de Acesso de Candidato (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsmotivoacessoimprensa
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Motivo de Acesso de Candidato
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Motivos de Acesso de Candidato
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela: Motivo de Acesso de Candidato (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsmotivoacessoimprensa
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Motivo de Acesso de Candidato
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Motivos de Acesso de Candidato
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
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
	Element Should Contain  ${LABEL}  Código

Verificar a label: Motivo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Motivo')]
	Element Should Contain  ${LABEL}  Motivo

Verificar a label: Grupo de Acesso
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Grupo de Acesso')]
	Element Should Contain  ${LABEL}  Grupo de Acesso

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Código
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código')]
	${CAMPO}      Set Variable  xpath=//input[@name='tipoaces']
	Element Should Contain             ${LABEL}   Código
 	Element Attribute Value Should Be  ${CAMPO}   name   tipoaces

Verificar o campo: Motivo
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Motivo')]
	${CAMPO}      Set Variable  xpath=//input[@name='descaces']
	Element Should Contain             ${LABEL}   Motivo
 	Element Attribute Value Should Be  ${CAMPO}   name  descaces
