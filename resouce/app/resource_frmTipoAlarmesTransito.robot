*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Grupo de Cameras | Cadastro de Tipos de Alarmes de Trânsito

# SCREEN
Acessar Tela Cadastro de Tipos de Alarmes de Trânsito - Consulta
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Tipos de Alarmes de Trânsito
  ${APPNAME}  Set Variable  frmTipoAlarmesTransito
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Cadastro de Tipos de Alarmes de Trânsito
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Tipo de Alarmes de Trânsito
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de Tipos de Alarmes de Trânsito
  END
  ${APPNAME}  Set Variable  frmTipoAlarmesTransito
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON



#FIELD
Preencher o campo Tipo de Alarme "${TIPO}"
  Input Text  xpath=//*[@name="tipoalartran"][@type="text"]  ${TIPO}

Preencher o campo Descrição do Alarme "${DESCRICAO}"
  Input Text  xpath=//*[@name="desctipoalartran"][@type="text"]  ${DESCRICAO}

Preencher o campo Procedimento "${PROCEDIMENTO}"
  Input Text  xpath=//*[@name="procsinaalar"][@type="text"]  ${PROCEDIMENTO}


#VERIFY 

E verificar o campo Tipo de Alarme 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}  Tipo de Alarme  
	Element Attribute Value Should Be  ${CAMPO}  name  tipoalartran

E verificar o campo Descrição do Alarme  
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}  Descrição do Alarme
	Element Attribute Value Should Be  ${CAMPO}  name  desctipoalartran

E verificar o campo Procedimento 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/textarea
	
	Element Should Contain  ${LABEL}  Procedimento
	Element Attribute Value Should Be  ${CAMPO}  name  procsinaalar