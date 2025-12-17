*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consagendamentovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Agendamento de Visitante (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Agendamento de Visitante (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Agendamento Visitante
  Quando visualizar a tela: Agendamento de Visitante (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Agendamento de Visitante (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Agendamento Visitante
  resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento Visitante

Quando visualizar a tela: Agendamento de Visitante (Consulta)
  resource_consagendamentovisitante.Acessar Tela Consulta de Agendamento de Visitantes

E clicar no botão: Pesquisar registro
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Agendamento de Visitante (Filtro)  
    resource_consagendamentovisitante.Acessar Tela Consulta de Agendamento de Visitantes (Filtro)