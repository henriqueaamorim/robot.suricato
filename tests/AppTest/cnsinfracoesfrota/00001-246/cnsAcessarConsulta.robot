*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frminfracoesfrota.robot
Resource        ../../../../resource/app/resource_cnsinfracoesfrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Infrações (Consulta).

*** Test Cases ***
Testcase: Acessar Tela: Infrações (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Infrações | Cadastro
  Então devo visualizar a tela: Infrações (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Infrações | Cadastro
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Cadastro

Então devo visualizar a tela: Infrações (Consulta)
  resource_cnsinfracoesfrota.Acessar Tela Consulta Infrações
