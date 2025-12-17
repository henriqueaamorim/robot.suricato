*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Cadastro de Guarda-Volumes


# SCREEN
Acessar Tela Cadastro de Guarda-Volumes (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsGuardaVolumes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Guarda-Volume
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Cadastro de Guarda-Volumes
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela:Guarda-Volume (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsGuardaVolumes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Guarda-Volume
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Cadastro de Guarda-Volumes
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME} ')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Número do Guarda-Volumes "${NUM}"
  Input Text  xpath=//*[@name="codiguarvolu"][@type="text"]  ${NUM}

Preencher o campo Descrição do Guarda-Volumes "${DESCRICAO}"
  Input Text  xpath=//*[@name="descguarvolu"][@type="text"]  ${DESCRICAO}

#VERIFY LABELS

Verificar a label: Número do Guarda-Volumes
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Número do Guarda-Volumes')]
	Element Should Contain  ${LABEL}  Número do Guarda-Volumes

Verificar a label: Descrição do Guarda-Volumes
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição do Guarda-Volumes')]
	Element Should Contain  ${LABEL}  Descrição do Guarda-Volumes

#VERIFY CAMPOS

Verificar o campo: Número do Guarda-Volumes	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Número do Guarda-Volumes')]
	${CAMPO}      Set Variable  xpath=//input[@name='codiguarvolu']
  Sleep  2s
	Element Should Contain             ${LABEL}   Número do Guarda-Volumes	
 	Element Attribute Value Should Be  ${CAMPO}   name  codiguarvolu

Verificar o campo: Descrição do Guarda-Volumes	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição do Guarda-Volumes')]
	${CAMPO}      Set Variable  xpath=//input[@name='descguarvolu']
	Element Should Contain             ${LABEL}   Descrição do Guarda-Volumes	
 	Element Attribute Value Should Be  ${CAMPO}   name    descguarvolu
