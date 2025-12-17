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
  E clicar no campo: Busca rápida e pesquisar por "Automação"
  E clicar no botão: Editar o registro "1"
  E visualizar a tela: Agendamento de Visitante (Edição)
  Então devo clicar no botão: Excluir 
  E clicar no botão Ok para confirmar a exclusão 

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Agendamento Visitante
  resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento Visitante

Quando eu visualizar a tela: Agendamento de Visitante (Consulta)
  resource_consagendamentovisitante.Acessar Tela Consulta de Agendamento de Visitantes

E clicar no campo: Busca rápida e pesquisar por "${BUSCAR}"
  resource_btn.Clicar No Campo: Busca Rápida "${BUSCAR}"

E clicar no botão: Editar o registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

E visualizar a tela: Agendamento de Visitante (Edição)
  resource_frmagendavisitante.Acessar Tela Agendamento de Visitas - Visitante (Atualização)

Então devo clicar no botão: Excluir 
  resource_btn.Clicar No Botão Excluir

E clicar no botão Ok para confirmar a exclusão   
  resource_btn.Clicar No Botão OK