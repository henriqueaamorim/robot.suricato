*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Comando | Lote

# SCREEN
Acessar Tela Envio de Lote de Comandos
#(246)(249)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Envio de Lote de Comandos
  ${APPNAME}  Set Variable  ctrenviodelotes
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.


#VERIFY
Verificar o campo Código do Lote
      ${LABEL}  Set Variable  xpath=//span[contains(text(),'Código do Lote')]
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_codiloteaces-container']
  Element Attribute Value Should Be  ${CAMPO}  id  select2-id_sc_field_codiloteaces-container    
  ELSE
      ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[2]/span/select
  Element Attribute Value Should Be  ${CAMPO}  name  codiloteaces
  END
  Element Should Contain  ${LABEL}  Código do Lote
  

Verificar o BTN Mostrar
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${BTN}  Set Variable  xpath=//a[@id='sc_btnmostrar_top']
  Element Attribute Value Should Be  ${BTN}  id  sc_btnmostrar_top
  ELSE
      ${BTN}  Set Variable  xpath=//input[@id='sc_btnmostrar_bot']
  Element Attribute Value Should Be  ${BTN}  id  sc_btnmostrar_bot
  END


#FIELD
Selecionar uma opção no campo Código do Lote "${LOTE}"
  Select From List By Label  xpath=//*[@name"codiloteaces"]  ${LOTE}