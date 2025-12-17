*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso


# SCREEN
Acessar Tela Motivos de Acesso de Candidato (Inclusão) (Busca Externa)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Motivos de Acesso de Candidato (Inclusão)
  ${APPNAME}     Set Variable  frmmotivoacessoimprensa
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#FIELD
Preencher o campo Descrição do Acesso "${DESCRICAO}"
	Input Text  xpath=//*[@name="descaces"][@type="text"]  ${DESCRICAO}

Preencher o campo Grupo de Acesso "${GRUPO}"
	Input Text  xpath=//*[@name="codiperm"][@type="text"]  ${GRUPO}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]
