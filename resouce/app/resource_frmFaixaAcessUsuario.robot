*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Usuários | Grupo de Usuário

# SCREEN
Acessar Tela Faixa de Acesso de Usuário
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Faixa de Acesso de Usuário
  ${APPNAME}  Set Variable  frmFaixaAcessUsuario
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]


  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Sleep  5s
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#FIELD
Selecionar uma opção no campo Dia da Semana "${DIA}"
	Select From List By Label  xpath=//*[@name="diasema1"]  ${DIA}

Preencher o campo Início "${INICIO}"
	Input Text  xpath=//*[@name="horainic1"][@type="text"]  ${INICIO}

Preencher o campo Término "${TERMINO}"
	Input Text  xpath=//*[@name="horafina1"][@type="text"]  ${TERMINO}
