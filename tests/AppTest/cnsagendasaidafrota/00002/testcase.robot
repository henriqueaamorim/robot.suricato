*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrsaidafrota.robot
Resource        ../../../../resource/app/resource_cnssaidafrota.robot
Resource        ../../../../resource/app/resource_cnsagendasaidafrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Agendamento de Saída
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Entrega 
  Quando eu visualizar a tela: Entrega de Veículo
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Entrega de Veículo - Cadastro
  Ao clicar no botão: Agendamentos
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Agendamento de Saída

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Entrega
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Entrega

Quando eu visualizar a tela: Entrega de Veículo
  resource_cnssaidafrota.Acessar Tela Entrega de Veículo

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Entrega de Veículo - Cadastro     
  resource_ctrsaidafrota.Acessar Tela Entrega de Veículo - Cadastro

Ao clicar no botão: Agendamentos
  resource_btn.Clicar No Botão Agendamento

Então o navegador deve exibir uma nova janela e eu visualizar a tela Agendamento de Saída
  resource_cnsagendasaidafrota.Acessar Tela Agendamento de Saída
