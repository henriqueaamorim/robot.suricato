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
Acessar Tela Consulta de Estrutura de Organograma (Busca Externa)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Estrutura de Organograma
  ${APPNAME}     Set Variable  cnsEstruturaOrganograma
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#FIELD
Preencher o campo Tabela de Organograma "${TABELA_DE_ORGANOGRAMA}"
	Input Text  xpath=//*[@name="codiorgaloca"][@type="text"]  ${TABELA_DE_ORGANOGRAMA}

Preencher o campo Descrição do Organograma "${DESCRIÇÃO_DO_ORGANOGRAMA}"
	Input Text  xpath=//*[@name="nomeorga"][@type="text"]  ${DESCRIÇÃO_DO_ORGANOGRAMA}

Preencher o campo Usa Máscara "${USA_MÁSCARA}"
	Input Text  xpath=//*[@name="usamasc"][@type="text"]  ${USA_MÁSCARA}

