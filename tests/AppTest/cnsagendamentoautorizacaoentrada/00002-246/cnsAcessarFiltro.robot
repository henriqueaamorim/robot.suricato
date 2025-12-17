*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsagendamentoautorizacaoentrada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Agendamento da Autorização do Colaborador (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Agendamento da Autorização do Colaborador (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Agendamento
  Quando visualizar a tela: Agendamento da Autorização de Entrada do Colaborador (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Agendamento da Autorização do Colaborador (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Agendamento
  resource_mnu.Clicar No Menu Entrada | Autorização | Agendamento

Quando visualizar a tela: Agendamento da Autorização de Entrada do Colaborador (Consulta)
  resource_cnsagendamentoautorizacaoentrada.Acessar Tela: Agendamento da Autorização de Entrada do Colaborador (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Agendamento da Autorização do Colaborador (Filtro)
  resource_cnsagendamentoautorizacaoentrada.Acessar Tela: Agendamento da Autorização do Colaborador (Filtro)