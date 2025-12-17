*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Keywords ***

# SCREEN
${ARGUMENTO} Acessar a Tela Pré-Cadastro de Crachá (Consulta)
#Acessar Tela: Pré-Cadastro de Crachá (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consprecadastrocracha
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Pré-Cadastro de Crachá
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Pré-Cadastro de Crachá
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}    10s
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
${ARGUMENTO} Acessar Tela Pré-Cadastro de Crachá (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consprecadastrocracha
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Pré-Cadastro de Crachá
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Pré-Cadastro de Crachá
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  #Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}    10s
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.

#FIELD
E Selecionar uma opção no campo Tipo do Crachá "${CRA}"
  Select from list by label  xpath=//*[@name="usofaixcrac"]  ${CRA}
E Preencher o campo Crachá "${CRACHA}"
  Input Text  xpath=//*[@name="icard"][@type="text"]  ${CRACHA}

#VERIFY LABELS

Verificar a label Crachá
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Crachá')]
	Element Should Contain  ${LABEL}  Crachá

Verificar a label Tipo do Crachá
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo do Crachá')]
	Element Should Contain  ${LABEL}  Tipo do Crachá


#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable   xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}  Pesquisa

Verificar o campo Tipo do Crachá	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo do Crachá')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Tipo do Crachá	
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single 

Verificar o campo Crachá	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Crachá')]
	${CAMPO}      Set Variable  xpath=//input[@name='icard']
	Element Should Contain             ${LABEL}   Crachá	
 	Element Attribute Value Should Be  ${CAMPO}   name  icard
