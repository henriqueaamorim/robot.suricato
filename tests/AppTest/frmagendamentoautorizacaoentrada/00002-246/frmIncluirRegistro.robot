*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsagendamentoautorizacaoentrada.robot
Resource        ../../../../resource/app/resource_frmagendamentoautorizacaoentrada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar um Agendamento de Autorização de Entrada.


*** Test Cases ***

Testcase: Cadastrar um Agendamento de Autorização de Entrada
  [Tags]  REGISTER  POLYVALENT  246  247
  #Teste funciona tanto em POPULATED quanto UNPOPULATED.
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Agendamento
  Quando eu visualzar a tela: Consulta de Agendamento da Autorização de Entrada do Colaborador
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Agendamento de Autorização de Entrada (Inclusão)
  E preencher o campo Data da Autorização "07/01/2025"
  E preencher o campo Hora da Autorização "1200"
  E preencher o campo Código do Colaborador "1"
  E preencher o campo Grupo de Acesso "3"
  E preencher o campo Data de Validade "07/04/2023"
  E preencher o campo Hora da Validade "1200"
  E preencher o campo Observações "Observações"
  E preencher o campo Código do Autorizador "4"
  E clicar no botão: Incluir o Registro
  Então devo visualizar a tela: Agendamento de Autorização de Entrada (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Agendamento
  resource_mnu.Clicar No Menu Entrada | Autorização | Agendamento

Quando eu visualzar a tela: Consulta de Agendamento da Autorização de Entrada do Colaborador
  resource_cnsagendamentoautorizacaoentrada.Acessar Tela: Agendamento da Autorização de Entrada do Colaborador (Consulta)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Agendamento de Autorização de Entrada (Inclusão)
  resource_frmagendamentoautorizacaoentrada.Acessar Tela Agendamento de Autorização de Entrada (Inclusão)

E preencher o campo Data da Autorização "${DATA}"
  resource_frmagendamentoautorizacaoentrada.Preencher o campo Data da Autorização "${DATA}"

E preencher o campo Hora da Autorização "${HORA}"
  resource_frmagendamentoautorizacaoentrada.Preencher o campo Hora da Autorização "${HORA}"

E preencher o campo Código do Colaborador "${CODIGO}"
  resource_frmagendamentoautorizacaoentrada.Preencher o campo Código do Colaborador "${CODIGO}"

E preencher o campo Grupo de Acesso "${GRUPO}"
  resource_frmagendamentoautorizacaoentrada.Preencher o campo Grupo de Acesso "${GRUPO}"

E preencher o campo Data de Validade "${DATA}"
  resource_frmagendamentoautorizacaoentrada.Preencher o campo Data de Validade "${DATA}"

E preencher o campo Hora da Validade "${HORA}"
  resource_frmagendamentoautorizacaoentrada.Preencher o campo Hora da Validade "${HORA}"

E preencher o campo Observações "${OBSERVACOES}"
  resource_frmagendamentoautorizacaoentrada.Preencher o campo Observações "${OBSERVACOES}"

E preencher o campo Código do Autorizador "${CODIGO}"
  resource_frmagendamentoautorizacaoentrada.Preencher o campo Código do Autorizador "${CODIGO}"

E clicar no botão: Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro 

Então devo visualizar a tela: Agendamento de Autorização de Entrada (Atualização)
  resource_frmagendamentoautorizacaoentrada.Acessar Tela Agendamento de Autorização de Entrada (Atualização)