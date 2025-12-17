*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Tipo de Terceiro

# SCREEN
Acessar Tela Consulta de Tipos de Terceiros
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsTiposTerceiros
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"   
    ${SCREENNAME}  Set Variable  Tipo de Terceiro
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Tipos de Terceiros
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  3s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Tipo de Terceiro (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Tipo de Terceiro
  ${APPNAME}  Set Variable  cnsTiposTerceiros
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),' ${SCREENNAME} ')]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON
#resource_btn.


#FIELD
Preencher o campo Tipo de Terceiro "${TIPT}"
  Input Text  xpath=//*[@name="tipoterc"][@type="text"]  ${TIPT}

Preencher o campo Descrição "${DESC}" (Filtro)
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element  xpath=(//span[@class="select2-selection select2-selection--single"])[2]
    Input Text  xpath=//*[@id="grid_search"]/span/span/span[1]/input   ${DESC}
  ELSE  
    Input Text  xpath=//*[@name="desctipoterc"][@type="text"]  ${DESC}
  END  
 

#VERIFY LABELS (CONSULTA)

Verificar a label Tipo de Terceiro
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo de Terceiro')]

	Element Should Contain  ${LABEL}   Tipo de Terceiro

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]

	Element Should Contain  ${LABEL}     Descrição

#VERIFY CAMPOS (FILTRO)

Verificar a label Pesquisar
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisar')]

	Element Should Contain  ${LABEL}     Pesquisar

Verificar o campo Tipo de Terceiro	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo de Terceiro')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]
	Element Should Contain             ${LABEL}   Tipo de Terceiro	
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single    
 	
Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]
	Element Should Contain             ${LABEL}   Descrição
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single



  