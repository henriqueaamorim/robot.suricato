*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Comando | Emergência

# SCREEN
Acessar Tela Comandos de Emergências
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Comandos de Emergências
  ${APPNAME}  Set Variable  ctrEmergencia
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.


#FIELD
Selecionar uma opção no campo Planta "${PLANTA}"
	Select From List By Label  xpath=//*[@name="codiplan"]  ${PLANTA}

Selecionar uma opção no campo Codin "${CODIN}"
	Select From List By Label  xpath=//*[@name="codicole[]"]  ${CODIN}


#VERIFY
Verificar o campo Planta*
    ${LABEL}  Set Variable  xpath=//span[contains(text(),'Planta')]
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codiplan_obj']
  Element Should Contain  ${LABEL}  Planta
  Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single css_codiplan_obj  
  ELSE  
    ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
  Element Should Contain  ${LABEL}  Planta *
  Element Attribute Value Should Be  ${CAMPO}  name  codiplan
  END
 

Verificar o campo Codin
#(246)(249)
  ${LABEL}  Set Variable  xpath=//span[@id='id_label_codicole']
  ${CAMPO}  Set Variable  xpath=//select[@name='codicole[]']

  Element Should Contain  ${LABEL}  Codin
  Element Attribute Value Should Be  ${CAMPO}  name  codicole[]