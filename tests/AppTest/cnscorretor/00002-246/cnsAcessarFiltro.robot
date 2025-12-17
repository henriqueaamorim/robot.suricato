*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcorretor.robot
Resource        ../../../../resource/app/resource_cnscorretor.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Corretor (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Corretor (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Seguros | Corretores
  Quando visualizar a tela: Corretor (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Corretor (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Seguros | Corretores
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Corretores

Quando visualizar a tela: Corretor (Consulta)
  resource_cnscorretor.Acessar Tela Consulta Corretor

E clicar no botão: Pesquisar registro
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Corretor (Filtro)  
  resource_cnscorretor.Acessar Tela Corretor (Filtro)