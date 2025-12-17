*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendusofrota.robot
Resource        ../../../../resource/app/resource_cnsmotivosusofrota_cap.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta Motivos de Uso da Frota (Busca Externa) através da tela Agendamento do Uso da Frota (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota
  Quando eu visualizar a tela: Agendamento do Uso da Frota (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Agendamento do Uso da Frota (Inclusão)
  E clicar no botão: Buscar Dados Externos para Motivo do Uso
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Motivos de Uso da Frota (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota

Quando eu visualizar a tela: Agendamento do Uso da Frota (Atualização)
  resource_frmagendusofrota.Acessar Tela Agendamento do Uso da Frota (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Agendamento do Uso da Frota (Inclusão)
  resource_frmagendusofrota.Acessar Tela Agendamento do Uso da Frota (Inclusão)

E clicar no botão: Buscar Dados Externos para Motivo do Uso
  resource_frmagendusofrota.Clicar No Botão Buscar Dados Externos Para Motivo do Uso

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Motivos de Uso da Frota (Busca Externa)
  resource_cnsmotivosusofrota_cap.Acessar Tela Consulta Motivos de Uso da Frota (Busca Externa)
