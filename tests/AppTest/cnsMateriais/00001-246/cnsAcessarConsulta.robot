*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMateriais.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Material (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Material (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Cadastro
  Então devo visualizar a tela: Material (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Cadastro
  resource_mnu.Clicar No Menu Entrada | Material | Cadastro

Então devo visualizar a tela: Material (Consulta)
  resource_cnsMateriais.Acessar Tela Consulta de Materiais
