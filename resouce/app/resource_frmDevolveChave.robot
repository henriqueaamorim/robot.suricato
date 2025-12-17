*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
resource_mnu.Clicar No Menu Registro | Chave | Movimentação de Chave


# SCREEN
Acessar Tela Devolução de Chave
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Devolução de Chave
  ${APPNAME}     Set Variable  frmDevolveChave
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Sleep   5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#FIELD
Preencher o campo Código "${COD}"
	Input Text  xpath=//*[@name="idcolabdevo"][@type="text"]  ${COD}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[9]/td[1]

Preencher o campo Data Devolução "${DATA}"
	Input Text  xpath=//*[@name="datadevo"][@type="text"]  ${DATA}

Preencher o campo Hora Devolução "${HORA}"
	Input Text  xpath=//*[@name="horadevo"][@type="text"]  ${HORA}

Preencher o campo Observação "${OBS}"
	Input Text  xpath=//*[@name="obsechave"]  ${OBS}
