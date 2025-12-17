*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frminfracoesfrota.robot
Resource        ../../../../resource/app/resource_cnsinfracoesfrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Consulta Infrações
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Infrações | Cadastro
  Quando eu visualizar a tela: Infrações (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Infrações

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Infrações | Cadastro
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Cadastro

Quando eu visualizar a tela: Infrações (Atualização)
  resource_frminfracoesfrota.Acessar Tela Infrações (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Infrações
  resource_cnsinfracoesfrota.Acessar Tela Consulta Infrações
