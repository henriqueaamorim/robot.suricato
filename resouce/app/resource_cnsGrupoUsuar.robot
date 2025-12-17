*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Usuários | Grupo de Usuário

# SCREEN
Acessar Tela: Grupo de Usuários (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsGrupoUsuar
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Grupo de Usuários
    ${ELEMENT}  Set Variable      xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta para Grupo de Usuários
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END  
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Grupo de Usuários (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsGrupoUsuar
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable    Grupo de Usuários
    ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta para Grupo de Usuários
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END  
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#VERIFY LABELS

Verificar a label: Identificação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Identificação')]
	Element Should Contain  ${LABEL}   Identificação

Verificar a label: Nome do Grupo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome do Grupo')]
	Element Should Contain  ${LABEL}   Nome do Grupo

#VERIFY CAMPOS

Verificar o campo: Identificação
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Identificação')]
	${CAMPO}      Set Variable  xpath=//input[@name='idgrupousuar']
	Element Should Contain             ${LABEL}   Identificação
 	Element Attribute Value Should Be  ${CAMPO}   name  idgrupousuar

Verificar o campo: Nome do Grupo	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome do Grupo')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomegrup']
	Element Should Contain             ${LABEL}   Nome do Grupo	
 	Element Attribute Value Should Be  ${CAMPO}   name    nomegrup


#FIELD
Preencher o campo Identificação "${NUM}"
  Input Text   xpath=//*[@name="idgrupousuar"][@type="text"]   ${NUM}

Preencher o campo Nome do Grupo "${NOME}"
  Input Text   xpath=//*[@name="nomegrup"][@type="text"]   ${NOME}