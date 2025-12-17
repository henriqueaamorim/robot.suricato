*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Corretores

# SCREEN
Acessar Tela Cadastro Corretor
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro Corretor
  ${APPNAME}     Set Variable  frmcomplementar
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#FIELD

Preencher o campo CEP "${CEP}"
	Input Text  xpath=//*[@name="codicep"][@type="text"]  ${CEP}

Preencher o campo Endereço "${ENDERECO}"
	Input Text  xpath=//*[@name="enderesi"][@type="text"]  ${ENDERECO}

Preencher o campo Número "${NUM}"
	Input Text  xpath=//*[@name="numeende"][@type="text"]  ${NUM}

Preencher o campo Complemento "${COMPLEMENTO}"
	Input Text  xpath=//*[@name="compende"][@type="text"]  ${COMPLEMENTO}

Preencher o campo Bairro "${BAIRRO}"
	Input Text  xpath=//*[@name="nomebair"][@type="text"]  ${BAIRRO}

Preencher o campo Cidade "${CIDADE}"
	Input Text  xpath=//*[@name="nomecida"][@type="text"]  ${CIDADE}

Preencher o campo Estado "${ESTADO}"
	Input Text  xpath=//*[@name="nomeesta"][@type="text"]  ${ESTADO}

Preencher o campo Telefone "${TELEFONE}"
	Input Text  xpath=//*[@name="numetele"][@type="text"]  ${TELEFONE}

Preencher o campo Ramal "${RAMAL}"
	Input Text  xpath=//*[@name="numerama"][@type="text"]  ${RAMAL}
