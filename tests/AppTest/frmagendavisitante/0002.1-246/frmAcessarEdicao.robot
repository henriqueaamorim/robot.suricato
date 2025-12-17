*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendavisitante.robot
Resource        ../../../../resource/app/resource_consagendamentovisitante.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Agendamento de Visitante (Inclusão)


*** Test Cases ***
Testcase: Acessar Tela: Agendamento de Visitante (Inclusão)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Agendamento Visitante
  Quando eu visualizar a tela: Agendamento de Visitante (Consulta)
  E clicar no campo: Busca Rapida e pesquisar por "Automação"
  E clicar no botão: Editar o registro
  Então devo visualizar a tela: Agendamento de Visitante (Edição)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Agendamento Visitante
  resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento Visitante

Quando eu visualizar a tela: Agendamento de Visitante (Consulta)
  resource_consagendamentovisitante.Acessar Tela Consulta de Agendamento de Visitantes

E clicar no campo: Busca Rapida e pesquisar por "${BUSCAR}"
  resource_btn.Clicar No Campo: Busca Rápida "${BUSCAR}"

E clicar no botão: Editar o registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Agendamento de Visitante (Edição)
  resource_frmagendavisitante.Acessar Tela Agendamento de Visitas - Visitante (Atualização)
