*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcoberturaseguro.robot
Resource        ../../../../resource/app/resource_cnscoberturaseguro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Consulta Cobertura de Seguros - Modo Busca
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Seguros | Cobertura
  Quando eu visualizar a tela: Cobertura de Seguros (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Cobertura de Seguros - Modo Busca

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Seguros | Cobertura
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cobertura

Quando eu visualizar a tela: Cobertura de Seguros (Atualização)
  resource_frmcoberturaseguro.Acessar Tela Cobertura de Seguros (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Cobertura de Seguros - Modo Busca
  resource_cnscoberturaseguro.Acessar Tela Consulta Cobertura de Seguros - Modo Busca
