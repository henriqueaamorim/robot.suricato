*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Usuários | Alterar sen

# SCREEN
Acessar Tela Alteração de Senha
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Alteração de Senha
  ${APPNAME}     Set Variable  frmnovasenha
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#FIELD
Preencher o campo Senha Anterior "${VARIAVEL}"
	Input Text  xpath=//*[@name="senha_anterior"]  ${VARIAVEL}

Preencher o campo Nova Senha "${VARIAVEL}"
	Input Text  xpath=//*[@name="nova_senha"]  ${VARIAVEL}

Preencher o campo Redigite a Nova Senha "${VARIAVEL}"
	Input Text  xpath=//*[@name="confirma_nova_senha"]  ${VARIAVEL}


#VERIFY
Verificar o campo Senha Anterior*
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Senha Anterior')]
  ${CAMPO}  Set Variable  xpath=//input[@name='senha_anterior']

  Element Should Contain  ${LABEL}  Senha Anterior
  Element Attribute Value Should Be  ${CAMPO}  name  senha_anterior

Verificar o campo Nova Senha*
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Nova Senha')]
  ${CAMPO}  Set Variable  xpath=//input[@name='nova_senha']

  Element Should Contain  ${LABEL}  Nova Senha
  Element Attribute Value Should Be  ${CAMPO}  name  nova_senha

Verificar o campo Redigite a Nova Senha*
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Redigite a Nova Senha')]
  ${CAMPO}  Set Variable  xpath=//input[@name='confirma_nova_senha']

  Element Should Contain  ${LABEL}  Redigite a Nova Senha
  Element Attribute Value Should Be  ${CAMPO}  name  confirma_nova_senha