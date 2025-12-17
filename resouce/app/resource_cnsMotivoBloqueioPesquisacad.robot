*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio

# SCREEN
Acessar Tela: Motivo de Bloqueio (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsMotivoBloqueioPesquisacad
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Motivo de Bloqueio
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Motivo de Bloqueio
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Motivo de Bloqueio (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsMotivoBloqueioPesquisacad
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Motivo de Bloqueio
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Motivo de Bloqueio
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Código do Motivo "${COD}"
  Input Text  xpath=//*[@name="codimoti"][@type="text"]   ${COD}

Preencher o campo Descrição "${DESC}"   
  Input Text  xpath=//*[@name="descmoti"][@type="text"]  ${DESC}

#VERIFY LABELS

Verificar a label: Código do Motivo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Motivo')]
	Element Should Contain  ${LABEL}   Código do Motivo

Verificar a label: Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}   Descrição

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Código do Motivo	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código do Motivo')]
	${CAMPO}      Set Variable  xpath=//input[@name='codimoti']
	Element Should Contain             ${LABEL}   Código do Motivo	
 	Element Attribute Value Should Be  ${CAMPO}   name   codimoti

Verificar o campo: Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='descmoti']
	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   descmoti     
