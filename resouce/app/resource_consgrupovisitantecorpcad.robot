*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Visitante | Grupo de Visitante

# SCREEN
Acessar Tela Cadastro de Grupo de Visitantes (Pesquisa)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Grupo de Visitantes (Inclusão)
  ${APPNAME}  Set Variable  consgrupovisitantecorpcad
  ${ELEMENT}  Set Variable    xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Nome do Grupo de Visitantes "${NOME}"
  Input Text  xpath=//*[@name="grupvisi"][@type="text"]  ${NOME}
Preencher o campo Nome do Grupo de Visitante "${GPV}"
  Input Text  xpath=//*[@name="nomegrupvisi"][@type="text"]  ${GPV}
Preencher o campo Código da Empresa do Grupo "${COD}"
  Input Text  xpath=//*[@name="codiemprcont"][@type="text"]  ${COD}
Preencher o campo Nome da Empresa do Grupo "${EMPG}"
  Input Text  xpath=//*[@name="nomeempr"][@type="text"]  ${EMPG}

