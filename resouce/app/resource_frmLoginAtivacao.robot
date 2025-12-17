*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Usuários | Ativação de Usuário


# SCREEN
Acessar Tela Ativação de Usuário (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Ativação de Usuário (Atualização)
  ${APPNAME}     Set Variable  frmLoginAtivacao
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
   

  Mudar Frame Aplicação "mnu_iframe"
  

  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Sleep  3s
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#FIELD
Selecionar a opção Bloqueado 
	Click Element  xpath=//*[@name="contbloq[]"]


#VERIFY
Verificar o campo Usuário
  ${LABEL}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[1]

  Element Should Contain  ${LABEL}  Usuário
  Element Attribute Value Should Be  ${CAMPO}  id  id_read_on_nomeusua

Verificar o campo Login
  ${LABEL}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[1]

  Element Should Contain  ${LABEL}  Login
  Element Attribute Value Should Be  ${CAMPO}  id  id_read_on_logiusua

Verificar o campo Bloqueado
  ${LABEL}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input

  Element Should Contain  ${LABEL}  Bloqueado
  Element Attribute Value Should Be  ${CAMPO}  name  contbloq[]