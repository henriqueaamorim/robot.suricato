*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Processo | Layout de Arquivo

# SCREEN
Acessar Tela Layout de Importação e Exportação - Seção - Inclusão
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Layout de Importação e Exportação - Seção - Inclusão
  ${APPNAME}     Set Variable  frmSecaoLayout
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
Clicar No Botão Buscar Dados Externos Para Tabela de Destino
  ${ELEMENT}  Set Variable  id=cap_tabedest

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD
Preencher o campo Nome da Seção "${NOME}"
	Input Text  xpath=//*[@name="nomesecalayo"][@type="text"]  ${NOME}

Preencher o campo Tabela de Destino "${TABELA}"
	Input Text  xpath=//*[@name="tabedest"][@type="text"]  ${TABELA}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[3]/td[1]
