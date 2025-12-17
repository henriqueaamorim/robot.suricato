*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculofrota.robot
Resource        ../../../../resource/app/resource_cnsveiculofrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Consulta Veículos Frota
  [Tags]  PRINT  POPULATED  249 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Veículos
  Quando eu visualizar a tela: Veículos Frota (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Veículos Frota

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Empresa | Veículos
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Veículos

Quando eu visualizar a tela: Veículos Frota (Atualização)
  resource_frmveiculofrota.Acessar Tela Veículos Frota (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Veículos Frota
  resource_cnsveiculofrota.Acessar Tela Consulta Veículos Frota
