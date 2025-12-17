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
Acessar Tela Tipos de Terceiros (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmTiposTerceiros
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Tipo de Terceiro
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Tipos de Terceiros (Inclusão)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Tipos de Terceiros (Edição)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmTiposTerceiros
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Tipo de Terceiro
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Tipos de Terceiros (Atualização)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON


#FIELD
Editar o campo Descrição "${DESC}" (Edição)
  Input Text  xpath=//*[@name="desctipoterc"][@type="text"]  ${DESC}


#VERIFY
Verificar o campo: Tipo de Terceiro	
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_tipoterc']
  ${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_tipoterc']
  Element Should Contain  ${LABEL}  Tipo de Terceiro 
  Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_tipoterc


Verificar o campo: Descrição
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_desctipoterc']
	${CAMPO}  Set Variable  xpath=//input[@name='desctipoterc']
	
	Element Should Contain  ${LABEL}  Descrição 
	Element Attribute Value Should Be  ${CAMPO}  name  desctipoterc
