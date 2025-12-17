*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Grupo de Acessos

# SCREEN
Acessar Tela Consulta de Grupos
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Grupo
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Grupos
  END
  ${APPNAME}  Set Variable  conspermissaoacessobusca
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Filtro de Grupos
  ${OBJ}         Set Variable   SCN
  ${SCREENNAME}  Set Variable   Grupo
  ${APPNAME}     Set Variable   conspermissaoacessobusca
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),' ${SCREENNAME} ')]

  Sleep  3s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

  

#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código "${COD}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COD}

Preencher o campo Descrição "${DESC}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${DESC}

Selecionar uma opção no campo Tipo "${TIP}"
  Select from list by label  xpath=//*[@name="idcolab"]  ${TIP}


#VERIFY LABELS

Verificar a label Código
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]
  
	Element Should Contain  ${LABEL}   Código

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
  
	Element Should Contain  ${LABEL}   Descrição

Verificar a label Tipo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo')]
  
	Element Should Contain  ${LABEL}   Tipo


#VERIFY CAMPOS

Verificar o campo Código
   ${LABEL}      Set Variable   xpath=//td[contains(text(),'Código')]
	 ${CAMPO}      Set Variable   xpath=//input[@name='codiperm']
  
   Sleep  5s
   Element Should Contain              ${LABEL}   Código
   Element Attribute Value Should Be   ${CAMPO}   name   codiperm

Verificar o campo Descrição
	 ${LABEL}      Set Variable   xpath=//td[contains(text(),'Descrição')]
	 ${CAMPO}      Set Variable   xpath=//input[@name='descperm']

   Sleep  2s
   Element Should Contain             ${LABEL}  Descrição
   Element Attribute Value Should Be  ${CAMPO}  name   descperm 

Verificar o campo Tipo
	 ${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo')]
	 ${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
  
   Sleep  2s
   Element Should Contain             ${LABEL}   Tipo
   Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single 
 