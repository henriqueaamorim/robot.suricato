*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendusofrota.robot
Resource        ../../../../resource/app/resource_cnsagendausofrotapass.robot
Resource        ../../../../resource/app/resource_frmagendausofrotapass.robot
Resource        ../../../../resource/app/resource_abaAgendamentoFrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Passageiros
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota
  Quando eu visualizar a tela: Agendamento do Uso da Frota (Atualização)
  E clicar na aba: Passageiros
  Então devo visualizar a tela: Agendamento do Uso da Frota - Passageiros
  Ao clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Passageiros

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota

Quando eu visualizar a tela: Agendamento do Uso da Frota (Atualização)
  resource_frmagendusofrota.Acessar Tela Agendamento do Uso da Frota (Atualização)

E clicar na aba: Passageiros
  resource_abaAgendamentoFrota.Clicar Na Aba Passageiros

Então devo visualizar a tela: Agendamento do Uso da Frota - Passageiros
  resource_cnsagendausofrotapass.Acessar Tela Agendamento do Uso da Frota - Passageiros

Ao clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Passageiros
  resource_frmagendausofrotapass.Acessar Tela Cadastro de Passageiros
