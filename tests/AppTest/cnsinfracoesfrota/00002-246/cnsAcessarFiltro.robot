*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frminfracoesfrota.robot
Resource        ../../../../resource/app/resource_cnsinfracoesfrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Infrações (Filtro).

*** Test Cases ***
Testcase: Acessar Tela: Infrações (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Infrações | Cadastro
  Quando visualizar a tela: Infrações (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Infrações (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Infrações | Cadastro
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Cadastro

Quando visualizar a tela: Infrações (Consulta)
  resource_cnsinfracoesfrota.Acessar Tela Consulta Infrações

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Infrações (Filtro)  
  resource_cnsinfracoesfrota.Acessar Tela Infrações (Filtro)