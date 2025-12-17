*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Tipo de Acesso


# SCREEN
Acessar Tela Consulta de Tipo de Acesso
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Tipo de Acesso
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Tipo de Acesso
  END
  ${APPNAME}     Set Variable  cnsTipoAcessocad
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Tipo de Acesso (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Tipo de Acesso (Filtro)
  ${APPNAME}     Set Variable  cnsTipoAcessocad
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]

  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
#resource_btn.

Preencher o campo Tipo de Acesso "${NUM}"
  Input Text  name=tipoaces   ${NUM}


#VERIFY LABELS

Verificar a label Tipo de Acesso
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo de Acesso')]

	Element Should Contain  ${LABEL}   Tipo de Acesso 

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]

	Element Should Contain  ${LABEL}   Descrição 


Verificar a label Ação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Ação')]

	Element Should Contain  ${LABEL}   Ação 

Verificar a label Cor Alarme
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Cor Alarme')]

	Element Should Contain  ${LABEL}   Cor Alarme

Verificar a label Exibir no Monitoramento
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Exibir no Monitoramento')]

	Element Should Contain  ${LABEL}   Exibir no Monitoramento

Verificar a label Tocar Som
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tocar Som')]

	Element Should Contain  ${LABEL}   Tocar Som


#VERIFY CAMPOS

Verificar o campo Tipo de Acesso	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo de Acesso')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']

  sleep  2s
  Element Should Contain  ${LABEL}  Tipo de Acesso	
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single  

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='desctipoaces']

  sleep  2s
  Element Should Contain             ${LABEL}   Descrição
  Element Attribute Value Should Be  ${CAMPO}   name   desctipoaces  
