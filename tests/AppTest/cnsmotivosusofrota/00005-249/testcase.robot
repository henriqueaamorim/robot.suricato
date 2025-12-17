*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmotivosusofrota.robot
Resource        ../../../../resource/app/resource_cnsmotivosusofrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Consulta Motivos de Uso da Frota
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Motivo de Uso
  Quando eu visualizar a tela: Motivos de Uso da Frota (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Motivos de Uso da Frota

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Motivo de Uso
  resource_mnu.Clicar No Menu Veículos | Cadastro | Motivo de Uso

Quando eu visualizar a tela: Motivos de Uso da Frota (Atualização)
  resource_frmmotivosusofrota.Acessar Tela Motivos de Uso da Frota (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Motivos de Uso da Frota
  resource_cnsmotivosusofrota.Acessar Tela Consulta Motivos de Uso da Frota
