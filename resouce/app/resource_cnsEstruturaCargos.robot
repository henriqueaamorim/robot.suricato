*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Cargo

# SCREEN

Acessar Tela Consulta de Grupo de Cargo
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsEstruturaCargos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Grupo de Cargo
    ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Grupo de Cargos
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
    Switch Window  locator=NEW
    Maximize Browser Window
  END
  Sleep  2s
  Mudar Frame Aplicação "iframe_mnu"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Consulta de Grupo de Cargos (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsEstruturaCargos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
    ${SCREENNAME}  Set Variable  Grupo de Cargo 
    ${ELEMENT}     Set Variable  xpath=//td[@class="scFilterHeaderFont"][4]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Grupo de Cargos
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#FIELD

Preencher o campo Código do Grupo "${CÓDIGO_DO_GRUPO}"
	Input Text  xpath=//*[@name="codiestrcarg"][@type="text"]  ${CÓDIGO_DO_GRUPO}

Preencher o campo Descrição do Grupo "${DESCRIÇÃO_DO_GRUPO}"
	Input Text  xpath=//*[@name="nomeestrcarg"][@type="text"]  ${DESCRIÇÃO_DO_GRUPO}


#VERIFY

Verificar a label Código do Grupo
	${LABEL}   Set Variable    xpath=(//*[contains(text(),'Código do Grupo')])[2]
	Element Should Contain     ${LABEL}   Código do Grupo

Verificar a label Descrição do Grupo
	${LABEL}   Set Variable     xpath=(//*[contains(text(),'Descrição do Grupo')])[2]
	Element Should Contain     ${LABEL}   Descrição do Grupo



#VERIFY (Filtro)

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Código do Grupo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
    ${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
    ${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/input
  ELSE
	  ${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	  ${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
  END
  
	Element Should Contain             ${LABEL}   Código do Grupo
 	Element Attribute Value Should Be  ${CAMPO}   name   codiestrcarg

Verificar o campo Descrição do Grupo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
    ${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
    ${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
  ELSE
	  ${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	  ${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
  END

	Element Should Contain             ${LABEL}   Descrição do Grupo
 	Element Attribute Value Should Be  ${CAMPO}   name   nomeestrcarg
