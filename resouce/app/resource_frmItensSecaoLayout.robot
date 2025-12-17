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
Acessar Tela Layout de Importação e Exportação - Itens de Seção - Alteração
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Layout de Importação e Exportação - Itens de Seção - Alteração
  ${APPNAME}     Set Variable  frmItensSecaoLayout
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Layout de Importação e Exportação - Itens de Seção - Inclusão
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Layout de Importação e Exportação - Itens de Seção - Inclusão
  ${APPNAME}     Set Variable  frmItensSecaoLayout
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#FIELD
Preencher o campo Campo Destino "${CAMPO}"
	Input Text  xpath=//*[@name="campdest1"][@type="text"]  ${CAMPO}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_field_label_campdest"]

Preencher o campo Nome "${NOME}"
	Input Text  xpath=//*[@name="nomeitemseca1"][@type="text"]  ${NOME}

Preencher o campo Posição "${POSICAO}"
	Input Text  xpath=//*[@name="campposi1"][@type="text"]  ${POSICAO}

Preencher o campo Tamanho "${TAMANHO}"
	Input Text  xpath=//*[@name="camptama1"][@type="text"]  ${TAMANHO}
