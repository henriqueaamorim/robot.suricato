*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsentradaservidor.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Autorização de Entrada (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Autorização de Entrada (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Entrada
  Quando visualizar a tela: Autorização de Entrada (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Autorização de Entrada (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Entrada
  resource_mnu.Clicar No Menu Entrada | Autorização | Entrada

Quando visualizar a tela: Autorização de Entrada (Consulta)
  resource_cnsentradaservidor.Acessar Tela: Autorização de Entrada (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Autorização de Entrada (Filtro)
  resource_cnsentradaservidor.Acessar Tela: Autorização de Entrada (Filtro)