*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmsinistros.robot
Resource        ../../../../resource/app/resource_cnssinistros.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Consulta de Sinistros
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Sinistros
  Quando eu visualizar a tela: Sinistros (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Sinistros

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Sinistros
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Sinistros

Quando eu visualizar a tela: Sinistros (Atualização)
  resource_frmsinistros.Acessar Tela Sinistros (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Sinistros
  resource_cnssinistros.Acessar Tela Consulta de Sinistros
