*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Monitoramento | Dispositivos Grid

# SCREEN
Acessar Tela Monitoramento de Dispositivos Grid
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Monitoramento de Dispositivos Grid
  ${APPNAME}  Set Variable  ctr_monitoramento_dispositivo
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.


#VERIFY
Verificar o campo Tipo
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr/td/table/thead/tr[1]/th[1]
  Element Should Contain  ${LABEL}  Tipo

Verificar o campo Empresa
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr/td/table/thead/tr[1]/th[2]
  Element Should Contain  ${LABEL}  Empresa

Verificar o campo Planta
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr/td/table/thead/tr[1]/th[3]
  Element Should Contain  ${LABEL}  Planta

Verificar o campo Codin
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr/td/table/thead/tr[1]/th[4]
  Element Should Contain  ${LABEL}  Codin

Verificar o campo Endereço IP
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr/td/table/thead/tr[1]/th[5]
  Element Should Contain  ${LABEL}  Endereço IP

Verificar o campo Status
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr/td/table/thead/tr[1]/th[6]
  Element Should Contain  ${LABEL}  Status

Verificar o campo Data Status
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr/td/table/thead/tr[1]/th[7]
  Element Should Contain  ${LABEL}  Data Status

Verificar o campo Empresa na parte de filtros
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[2]/div/table/tbody/tr/td/table/tbody/tr[4]/td/table/thead/tr/th
  Element Should Contain  ${LABEL}  Empresa

Verificar o campo Planta na parte de filtros
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[2]/div/table/tbody/tr/td/table/tbody/tr[5]/td/table/thead/tr/th
  Element Should Contain  ${LABEL}  Planta

Verificar o campo Codin na parte de filtros
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[2]/div/table/tbody/tr/td/table/tbody/tr[6]/td/table/thead/tr/th
  Element Should Contain  ${LABEL}  Codin

Verificar o campo Status na parte de filtros
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[2]/div/table/tbody/tr/td/table/tbody/tr[7]/td/table/thead/tr/th
  Element Should Contain  ${LABEL}  Status

Verificar o campo Tipo na parte de filtros
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[2]/div/table/tbody/tr/td/table/tbody/tr[8]/td/table/thead/tr/th
  Element Should Contain  ${LABEL}  Tipo