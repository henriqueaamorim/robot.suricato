*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcondutoresveiculosfrota.robot
Resource        ../../../../resource/app/resource_cnscondutoresveiculosfrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Consulta Condutores de Veículos de Frota
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Condutores
  Quando eu visualizar a tela: Condutores de Veículos da Frota (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Condutores de Veículos de Frota

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Condutores
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Condutores

Quando eu visualizar a tela: Condutores de Veículos da Frota (Atualização)
  resource_frmcondutoresveiculosfrota.Acessar Tela Condutores de Veículos da Frota (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Condutores de Veículos de Frota
  resource_cnscondutoresveiculosfrota.Acessar Tela Consulta Condutores de Veículos de Frota
