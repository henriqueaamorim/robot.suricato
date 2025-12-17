*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmultas.robot
Resource        ../../../../resource/app/resource_cnsmultas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Consulta de Multas
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Infrações | Multas
  Quando eu visualizar a tela: Multas (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Multas

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Infrações | Multas
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Multas

Quando eu visualizar a tela: Multas (Atualização)
  resource_frmmultas.Acessar Tela Multas (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Multas
  resource_cnsmultas.Acessar Tela Consulta de Multas
