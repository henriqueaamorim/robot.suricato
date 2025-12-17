*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Alarme | Notificações

# SCREEN
Acessar Tela Consulta Notificações Alarme REP
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Notificações Alarme REP
  ELSE
    ${SCREENNAME}  Set Variable  Consulta Notificações Alarme REP
  END
  ${APPNAME}  Set Variable  cnsGrupoNotifica
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Filtro Notificações Alarme REP
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Notificações Alarme REP
  ${APPNAME}  Set Variable  cnsGrupoNotifica
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

Preencher o campo Código "${COD}"
  Input Text  xpath=//*[@name="idgrupoemailrep"][@type="text"]   ${COD}

Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="nome"][@type="text"]   ${DESCRICAO}

Preencher o campo E-mail "${EMAIL}"
  Input Text  xpath=//*[@name="email"][@type="text"]   ${EMAIL}


#VEIFY LABELS CONSULTA

Verificar a label Código
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]

	Element Should Contain  ${LABEL}  Código

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]

	Element Should Contain  ${LABEL}  Descrição

Verificar a label E-mail
	${LABEL}   Set Variable  xpath=//div[contains(text(),'E-mail')]

	Element Should Contain  ${LABEL}      E-mail


#VERIFY CAMPOS FILTRO

Verificar o campo Código
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]

	Element Should Contain             ${LABEL}   Código
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single

Verificar o campo Descrição	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]

	Element Should Contain             ${LABEL}   Descrição
  Element Attribute Value Should Be  ${CAMPO}   class  	select2-selection select2-selection--single

Verificar o campo E-mail	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'E-mail')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[3]

	Element Should Contain             ${LABEL}   E-mail	  
  Element Attribute Value Should Be  ${CAMPO}   class  	select2-selection select2-selection--single  
