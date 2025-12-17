*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Cadastro de Codin


# SCREEN
Acessar Tela Listas (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Listas (Atualização)
  ${APPNAME}     Set Variable  frmEntradasColetor
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#FIELD
Preencher o campo Endereço da Entrada "${ENDERECO}"
	Input Text  xpath=//*[@name="endeentrcole1"][@type="text"]  ${ENDERECO}

Preencher o campo Código do Sinal de Alarme "${COD}"
	Input Text  xpath=//*[@name="codisind1"][@type="text"]  ${COD}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_field_label_codisind"]

Preencher o campo Reação Alarme Ativo "${REACAO}"
	Input Text  xpath=//*[@name="codireac1"][@type="text"]  ${REACAO}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_field_label_codisind"]

Preencher o campo Reação Alarme Inativo "${REACAO}"
	Input Text  xpath=//*[@name="codireacinat1"][@type="text"]  ${REACAO}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_field_label_codisind"]