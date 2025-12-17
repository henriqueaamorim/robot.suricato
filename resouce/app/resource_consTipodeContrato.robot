*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Tipo de Contrato

# SCREEN
Acessar Tela Tipo de Contrato (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consTipodeContrato
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Tipo de Contrato
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Tipo de Contrato
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela de Tipo de Contrato (Filtro)
   ${OBJ}         Set Variable  SCN
   ${APPNAME}  Set Variable  consTipodeContrato
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
   ${SCREENNAME}  Set Variable    Tipo de Contrato
   ${ELEMENT}     Set Variable    xpath=(//td[contains(text(),'${SCREENNAME} ')])[1]
   ELSE
   ${SCREENNAME}  Set Variable  Consulta de Tipo de Contrato
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
Selecionar uma opção no campo Id Tipo de Contrato "${ID}"
  Select from list by label  xpath=//*[@name="tipocont_cond"]  ${ID}

Preencher o campo Id Tipo de Contrato "${ID}"
  Input Text  xpath=//*[@name="tipocont"][@type="text"]   "${ID}"

Selecionar uma opção no campo Descrição "${DESC}"
  Select from list by label  xpath=//*[@name="desctipocont_cond"]  ${DESC}

Preencher o campo Descrição "${DESC}"  
  Input Text  xpath=//*[@name="desctipocont"][@type="text"]  ${DESC}


#VERIFY LABELS

Verificar a label Tipo de Contrato
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo de Contrato')]
	Element Should Contain  ${LABEL}   Tipo de Contrato

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}   Descrição


#VERIFY CAMPOS

Verificar o campo Tipo de Contrato	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo de Contrato')]
	${CAMPO}      Set Variable  xpath=//input[@name='tipocont']
	Element Should Contain             ${LABEL}    Tipo de Contrato	
 	Element Attribute Value Should Be  ${CAMPO}    name   tipocont

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='desctipocont']
	Element Should Contain             ${LABEL}    Descrição
 	Element Attribute Value Should Be  ${CAMPO}    name   desctipocont  

  
