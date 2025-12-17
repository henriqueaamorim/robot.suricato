*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Cadastro | Veículo


# SCREEN
Acessar Tela Consulta Acessórios (Busca Externa)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta Acessórios
  ${APPNAME}     Set Variable  cnsacessorios_cap
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Consulta Acessórios - Modo Busca (Busca Externa)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta Acessórios - Modo Busca
  ${APPNAME}     Set Variable  cnsacessorios_cap
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.



#FIELD



#FIELD
Preencher o campo Código do Colaborador "${CÓDIGO_DO_COLABORADOR}"
	Input Text  xpath=//*[@name="codiaces"][@type="text"]  ${CÓDIGO_DO_COLABORADOR}

Preencher o campo Descrição "${DESCRIÇÃO}"
	Input Text  xpath=//*[@name="descaces"][@type="text"]  ${DESCRIÇÃO}

