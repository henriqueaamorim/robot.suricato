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
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Envio de Lote de Comandos
  ${APPNAME}     Set Variable  ctrenviodecomandos
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#VERIFY
Verificar o campo Comandos
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[2]/span/select

  Element Should Contain  ${LABEL}  Comandos
  Element Attribute Value Should Be  ${CAMPO}  name  comandos[]

#FIELD
Selecionar uma opção no campo Comandos "${COMANDO}"
  Select From List By Label  xpath=//*[@name="comandos[]"]  ${COMANDO}