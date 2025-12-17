*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMateriais.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Materiais (Filtro)
${APPNAME}     cnsMateriais
${OBJETIVO}    Acessar Tela: Material (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Material (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Cadastro
  Quando visualizar a tela: Material (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Material (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Cadastro
  resource_mnu.Clicar No Menu Entrada | Material | Cadastro

Quando visualizar a tela: Material (Consulta)
  resource_cnsMateriais.Acessar Tela Consulta de Materiais

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Material (Filtro)
  resource_cnsMateriais.Acessar Tela Consulta de Materiais (Filtro)