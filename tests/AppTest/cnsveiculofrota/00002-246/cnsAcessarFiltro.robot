*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculofrota.robot
Resource        ../../../../resource/app/resource_cnsveiculofrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Veículos Frota (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Veículos Frota (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Veículos
  Quando visualizar a tela: Veículos Frota (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Veículos Frota (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Veículos
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Veículos

Quando visualizar a tela: Veículos Frota (Consulta)
  resource_cnsveiculofrota.Acessar Tela Consulta Veículos Frota

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Veículos Frota (Filtro)  
  resource_cnsveiculofrota.Acessar Tela: Veículos Frota (Filtro)