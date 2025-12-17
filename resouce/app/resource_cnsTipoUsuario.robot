*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Tipo de Usuário

# SCREEN
Acessar Tela: Tipo de Usuário (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsTipoUsuario
  IF    "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"
  ${SCREENNAME}  Set Variable  Tipo de Usuário
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable 
  ${ELEMENT}  Set Variable    xpath=/
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Tipo de Usuário (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsTipoUsuario
  IF    "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"
  ${SCREENNAME}  Set Variable  Tipo de Usuário
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable 
  ${ELEMENT}  Set Variable    xpath=/
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.

#VERIFY LABELS

Verificar a label Id
	${LABEL}   Set Variable  xpath=//div[@class='css_idtipousuar_label']
	Element Should Contain  ${LABEL}   Id

Verificar a label Tipo Usuário
	${LABEL}   Set Variable  xpath=//div[@class='css_tipousuar_label']
	Element Should Contain  ${LABEL}   Tipo Usuário

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Id
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Id')]
	${CAMPO}      Set Variable  xpath=//input[@name='idtipousuar']
	Element Should Contain             ${LABEL}   Id
 	Element Attribute Value Should Be  ${CAMPO}   name   idtipousuar

Verificar o campo Tipo Usuário	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo Usuário')]
	${CAMPO}      Set Variable  xpath=//input[@name='tipousuar']
	Element Should Contain             ${LABEL}   Tipo Usuário
 	Element Attribute Value Should Be  ${CAMPO}   name   tipousuar    
