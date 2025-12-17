*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcondutoresveiculosfrota.robot
Resource        ../../../../resource/app/resource_cnscondutoresveiculosfrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Condutores de Veículos de Frota (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Condutores de Veículos de Frota (Filtro)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Condutores
  Quando visualizar a tela: Condutores de Veículos de Frota (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Condutores de Veículos de Frota (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Condutores
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Condutores

Quando visualizar a tela: Condutores de Veículos de Frota (Consulta)
  resource_cnscondutoresveiculosfrota.Acessar Tela Consulta Condutores de Veículos de Frota

E clicar no botão: Pesquisar Registro
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Condutores de Veículos de Frota (Filtro)  
  resource_cnscondutoresveiculosfrota.Acessar Tela Condutores de Veículos de Frota (Filtro)