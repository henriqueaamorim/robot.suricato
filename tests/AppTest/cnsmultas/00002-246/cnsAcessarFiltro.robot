*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmultas.robot
Resource        ../../../../resource/app/resource_cnsmultas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Multa (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Multa (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Infrações | Multas
  Quando visualizar a tela: Multa (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Multa (Filtro) 

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Infrações | Multas
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Multas

Quando visualizar a tela: Multa (Consulta)
  resource_cnsmultas.Acessar Tela Consulta de Multas

E clicar no botão: Pesquisar registro
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Multa (Filtro)   
  resource_cnsmultas.Acessar Tela Multa (Filtro)
