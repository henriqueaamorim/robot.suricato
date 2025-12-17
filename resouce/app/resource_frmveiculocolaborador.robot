*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado


# SCREEN
Acessar Tela Veículo de Colaborador - Cadastro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Veículo de Colaborador - Cadastro
  ${APPNAME}     Set Variable  frmveiculocolaborador
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#FIELD
Preencher o campo Cód. Veículo "${COD}"
	Input Text  xpath=//*[@name="idveic"][@type="text"]  ${COD}
  #Necessário clicar fora para valdiar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[7]/td[1]

Preencher o campo Crachá do Veículo "${CRACHA}"
	Input Text  xpath=//*[@name="icardv"][@type="text"]  ${CRACHA}
  #Necessário clicar fora para valdiar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[7]/td[1]

Preencher o campo Data Início "${DATA}"
	Input Text  xpath=//*[@name="datainic"][@type="text"]  ${DATA}

Preencher o campo Data Final "${DATA}"
	Input Text  xpath=//*[@name="datafim"][@type="text"]  ${DATA}

Preencher o campo Hora Final "${HORA}"
	Input Text  xpath=//*[@name="horafina"][@type="text"]  ${HORA}
