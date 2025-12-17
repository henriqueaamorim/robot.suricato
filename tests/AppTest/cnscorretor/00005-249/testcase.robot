*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcorretor.robot
Resource        ../../../../resource/app/resource_cnscorretor.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Consulta Corretor
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Seguros | Corretores
  Quando eu visualizar a tela: Corretor (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Corretor

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Seguros | Corretores
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Corretores

Quando eu visualizar a tela: Corretor (Atualização)
  resource_frmcorretor.Acessar Tela Corretor (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Corretor
  resource_cnscorretor.Acessar Tela Consulta Corretor
