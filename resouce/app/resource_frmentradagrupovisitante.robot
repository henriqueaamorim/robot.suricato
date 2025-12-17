*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Grupo


# SCREEN
Acessar Tela Cadastro de Grupo de Visitantes (Atualização) (Busca Externa)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Grupo de Visitantes (Atualização)
  ${APPNAME}     Set Variable  frmentradagrupovisitante
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Cadastro de Grupo de Visitantes (Inclusão) (Busca Externa)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Grupo de Visitantes (Inclusão)
  ${APPNAME}     Set Variable  frmentradagrupovisitante
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#FIELD
Preencher o campo Nome do Grupo de Visitantes "${NOME}"
	Input Text  xpath=//*[@name="nomegrupvisi"][@type="text"]  ${NOME}

Preencher o campo Empresa Terceira "${EMPRESA}"
	Input Text  xpath=//*[@name="codiemprcont"][@type="text"]  ${EMPRESA}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]

Preencher o campo Empresa Grupo de Visitantes "${EMPRESA}"
	Input Text  xpath=//*[@name="nomeempr"][@type="text"]  ${EMPRESA}

Preencher o campo Quantidade de Visitantes no Grupo "${QUANT}"
	Input Text  xpath=//*[@name="quanvisisema"][@type="text"]  ${QUANT}

Preencher o campo Telefone do Grupo de Visitantes "${TEL}"
	Input Text  xpath=//*[@name="numetelegrup"][@type="text"]  ${TEL}
