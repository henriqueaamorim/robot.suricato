*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAprovacaoAgendamentoFrota.robot
Resource        ../../../../resource/app/resource_frmAprovacaoSaidaAgendada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Autorização de Saída de Veículos Agendados
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota
  Ao visualizar a tela: Aprovação de Agendamentos - Frota
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Autorização de Saída de Veículos Agendados

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota

Ao visualizar a tela: Aprovação de Agendamentos - Frota
  resource_cnsAprovacaoAgendamentoFrota.Acessar Tela Aprovação de Agendamentos - Frota

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Autorização de Saída de Veículos Agendados
  resource_frmAprovacaoSaidaAgendada.Acessar Tela Autorização de Saída de Veículos Agendados
