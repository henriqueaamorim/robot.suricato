*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Usuários | Usuário Aprovador de Solitação de Visita


# SCREEN
Acessar Tela Atualização de Aprovador de Solitação de Visita
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Atualização de Aprovador de Solitação de Visita
  ${APPNAME}     Set Variable  frmGrupoAprovacaoUsuariosVisita
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  #Wait Until Element is Visible  ${ELEMENT}
  #lement Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Sleep  5s
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#VERIFY
Verificar o campo Login:*
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
  Element Should Contain  ${LABEL}  Login: *

Verificar o campo Nome
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  Element Should Contain  ${LABEL}  Nome

Verificar o campo Grupo Aprovador 1
  ${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td[3]/span
  ${CAMPO1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td[3]/table/tbody/tr/td[1]/select
  ${CAMPO2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td[3]/table/tbody/tr/td[3]/select

  Element Should Contain  ${LABEL}  Grupo Aprovador 1
  Element Attribute Value Should Be  ${CAMPO1}  name  clcolabgrupaprov_orig
  Element Attribute Value Should Be  ${CAMPO2}  name  clcolabgrupaprov_dest

Verificar o campo Grupo Aprovador 2
  ${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td/span
  ${CAMPO1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[1]/select
  ${CAMPO2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[3]/select

  Element Should Contain  ${LABEL}  Grupo Aprovador 2
  Element Attribute Value Should Be  ${CAMPO1}  name  clcolabgrupaprov2_orig
  Element Attribute Value Should Be  ${CAMPO2}  name  clcolabgrupaprov2_dest


#FIELD
Selecionar uma opção no campo Grupo Aprovador 1 "${GRUPO}"
	Select From List By Label  xpath=//*[@name="clcolabgrupaprov_orig"]  ${GRUPO}
  Click Element  xpath=//*[@id="hidden_bloco_3"]/tbody/tr[1]/td[3]/table/tbody/tr/td[2]/input[2]

Selecionar uma opção no campo Grupo Aprovador 2 "${GRUPO}"
	Select From List By Label  xpath=//*[@name="clcolabgrupaprov2_orig"]  ${GRUPO}
  Click Element  xpath=//*[@id="hidden_bloco_3"]/tbody/tr[2]/td/table/tbody/tr/td[2]/input[2]