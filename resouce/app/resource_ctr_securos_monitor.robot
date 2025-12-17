*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Monitoramento | LOG SecurOS

# SCREEN
Acessar Tela LOG SecurOS
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  LOG SecurOS
  ${APPNAME}  Set Variable  ctr_securos_monitor
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.


#VERIFY
Verificar o campo Data/Hora
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr/td/table/thead/tr/th[1]
  Element Should Contain  ${LABEL}  Data/Hora

Verificar o campo Tipo
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr/td/table/thead/tr/th[2]
  Element Should Contain  ${LABEL}  Tipo

Verificar o campo ID
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr/td/table/thead/tr/th[3]
  Element Should Contain  ${LABEL}  ID

Verificar o campo Nome
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr/td/table/thead/tr/th[4]
  Element Should Contain  ${LABEL}  Nome

Verificar o campo Ação
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr/td/table/thead/tr/th[5]
  Element Should Contain  ${LABEL}  Ação

Verificar o campo Mensagem
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr/td/table/thead/tr/th[6]
  Element Should Contain  ${LABEL}  Mensagem