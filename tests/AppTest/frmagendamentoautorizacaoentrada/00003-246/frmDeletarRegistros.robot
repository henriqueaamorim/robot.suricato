*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsagendamentoautorizacaoentrada.robot
Resource        ../../../../resource/app/resource_frmagendamentoautorizacaoentrada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Excluir um Agendamento de Autorização de Entrada.


*** Test Cases ***

Testcase: Excluir um Agendamento de Autorização de Entrada
  [Tags]  DELETE  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Agendamento
  Quando eu visualzar a tela: Consulta de Agendamento da Autorização de Entrada do Colaborador
  #E clicar no botão: Pesquisar Registros
  #E preencher o campo Matrícula "110"
  #E novamente clicar no botão: Pesquisar Registros
  E então clicar no botão: Editar o Registro "1"
  E clicar no botão: Apagar
  Então devo visualizar a tela: Agendamento de Autorização de Entrada (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Agendamento
  resource_mnu.Clicar No Menu Entrada | Autorização | Agendamento

Quando eu visualzar a tela: Consulta de Agendamento da Autorização de Entrada do Colaborador
  resource_cnsagendamentoautorizacaoentrada.Acessar Tela: Agendamento da Autorização de Entrada do Colaborador (Consulta)

Então devo visualizar a tela: Agendamento de Autorização de Entrada (Atualização)
  resource_frmagendamentoautorizacaoentrada.Acessar Tela Agendamento de Autorização de Entrada (Atualização)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

E preencher o campo Matrícula "${MATRICULA}"
  resource_cnsagendamentoautorizacaoentrada.Preencher o campo Matrícula "${MATRICULA}"

E novamente clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

E então clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

E clicar no botão: Apagar
  resource_btn.Clicar No Botão Apagar