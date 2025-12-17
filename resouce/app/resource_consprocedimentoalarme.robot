*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Alarme | Procedimento de Alarme

# SCREEN
Acessar Tela Consulta de Procedimentos para Tratamento de Alarmes
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Procedimento de Alarme
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Procedimentos para Tratamento de Alarmes
  END
  ${APPNAME}     Set Variable  consprocedimentoalarme
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Procedimento de Alarme (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Procedimento de Alarme (Filtro)
  ${APPNAME}     Set Variable  consprocedimentoalarme
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Selecionar uma opção no campo Tipo do Crachá "${COD}"
  Select from list by label  xpath=//*[@name="usofaixcrac"]  ${COD}

Preencher o campo Crachá "${CRA}"
  Input Text  xpath=//*[@name="icard"][@type="text"]  ${CRA}


#VERIFY LABELS CONSULTA  

Verificar a label Código Alarme
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código Alarme')]

	Element Should Contain  ${LABEL}   Código Alarme 

Verificar a label Descrição Alarme
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição Alarme')]

	Element Should Contain  ${LABEL}   Descrição Alarme 

Verificar a label Procedimento
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Procedimento')]

	Element Should Contain  ${LABEL}   Procedimento


#VERIFY CAMPOS FILTRO  

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]

  sleep  2s
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Código Alarme	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Código Alarme')]
  ${CAMPO}   Set Variable  xpath=//input[@name='codisind_autocomp']

  sleep  2s
	Element Should Contain  ${LABEL}   Código Alarme	
  Element Attribute Value Should Be  ${CAMPO}   name   codisind_autocomp


