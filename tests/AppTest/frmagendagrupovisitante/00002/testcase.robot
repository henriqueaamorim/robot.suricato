*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendagrupovisitante.robot
Resource        ../../../../resource/app/resource_consagendamentogrupovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Excluir um Agendamento de Grupo de Visitantes.


*** Test Cases ***

Testcase: Excluir um Agendamento de Grupo de Visitantes
  [Tags]  DELETE
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Agendamento de Grupo
  Então devo visualizar a tela: Agendamento de Grupo de Visitantes (Inclusão)
  E clicar no botão: Pesquisar
  E clicar no botão: Pesquisar Registros
  E preencher o campo Grupo Visitante "1"
  E novamente clicar no botão: Pesquisar Registros
  E então clicar no botão: Editar o Registro "1"
  E clicar no botão: Apagar
  E então clicar em "OK" no alerta
  Então devo visualizar a tela: Agendamento de Grupo de Visitantes (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Agendamento de Grupo
  resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento de Grupo

Então devo visualizar a tela: Agendamento de Grupo de Visitantes (Inclusão)
  resource_frmagendagrupovisitante.Acessar Tela Agendamento de Grupo de Visitantes (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

E preencher o campo Grupo Visitante "${NUM}"
  resource_consagendamentogrupovisitante.Preencher o campo Grupo Visitante "${NUM}"

E novamente clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior) 

E então clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

E clicar no botão: Apagar
  resource_btn.Clicar No Botão Apagar

E então clicar em "OK" no alerta
  Handle Alert