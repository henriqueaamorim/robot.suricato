*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Comando | Acesso

# SCREEN
Acessar Tela Comandos do Acesso On-Line
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Comandos do Acesso On-Line
  ${APPNAME}  Set Variable  ctrAcessos
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


# VERIFY
Verificar o campo Planta* 
      ${LABEL_PLANTA}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${CAMPO_PLANTA}  Set Variable  xpath=//span[@id='select2-id_sc_field_codiplan-container']
  Element Attribute Value Should Be  ${CAMPO_PLANTA}  id  select2-id_sc_field_codiplan-container
  ELSE 
      ${CAMPO_PLANTA}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[2]/select | //span[@id='select2-id_sc_field_codiplan-container']
  Element Attribute Value Should Be  ${CAMPO_PLANTA}  name  codiplan
  END
  Element Should Contain  ${LABEL_PLANTA}  Planta
  

Verificar o campo Gateway
      ${LABEL_GATEWAY}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${CAMPO_GATEWAY}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codigereaces_obj']
  Element Attribute Value Should Be  ${CAMPO_GATEWAY}  class   select2-selection select2-selection--single css_codigereaces_obj
  ELSE
      ${CAMPO_GATEWAY}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[2]/select
  Element Attribute Value Should Be  ${CAMPO_GATEWAY}  name  codigereaces
  END 
  Element Should Contain  ${LABEL_GATEWAY}  Gateway
  

Verificar o campo Código do Codin
      ${LABEL_COD_CODIN}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[3]/td[1]
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
     ${CAMPO_COD_CODIN}  Set Variable  xpath=//span[@class='select2-selection select2-selection--multiple css_codicole_obj']
  Element Attribute Value Should Be  ${CAMPO_COD_CODIN}  class  select2-selection select2-selection--multiple css_codicole_obj
  ELSE
      ${CAMPO_COD_CODIN}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[3]/td[2]/select
  Element Attribute Value Should Be  ${CAMPO_COD_CODIN}  name  codicole[]
  END
  Element Should Contain  ${LABEL_COD_CODIN}  Código do Codin
  


#FIELD
Selecionar uma opção no campo Planta "${PLANTA}"
	Select From List By Label  xpath=//*[@name="codiplan"]  ${PLANTA}

Selecionar uma opção no campo Gateway "${GATEWAY}"
	Select From List By Label  xpath=//*[@name="codigereaces"]  ${GATEWAY}

Selecionar uma opção no campo Código do Codin "${CÓDIGO_DO_CODIN}"
	Select From List By Label  xpath=//*[@name="codicole[]"]  ${CÓDIGO_DO_CODIN}

