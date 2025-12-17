*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendagrupovisitante.robot
Resource        ../../../../resource/app/resource_consagendamentogrupovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar um Agendamento de Grupo de Visitantes.


*** Test Cases ***

Testcase: Cadastrar um Agendamento de Grupo de Visitantes
  [Tags]  REGISTER  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Agendamento de Grupo
  Então devo visualizar a tela: Agendamento de Grupo de Visitantes (Atualização)
  E clicar no botão: Abrir um Novo Registro
  E preencher o campo Data Prevista da Visita "30/04/2023"
  E preencher o campo Hora Prevista da Visita "1200"
  E preencher o campo Código do Colaborador "2"
  E preencher o campo Grupo de Visitantes "1"
  E selecionar uma opção no campo Tipo de Visita "DESCRIÇÃO"
  E preencher o campo Grupo de Acesso "1"
  E preencher o campo Telefone do Grupo de Visitantes "1231312121"
  E preencher o campo Data da Validade da Visita "30/03/2023"
  E preencher o campo Hora da Validade da Visita "1200"
  E preencher o campo Observação "Observação"
  E preencher o campo Código do Autorizador "10"
  E clicar no botão: Incluir o Registro
  Então devo visualizar a tela: Agendamento de Grupo de Visitantes (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Agendamento de Grupo
  resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento de Grupo

E preencher o campo Data Prevista da Visita "${DATA}"
  resource_frmagendagrupovisitante.Preencher o campo Data Prevista da Visita "${DATA}"

E preencher o campo Hora Prevista da Visita "${HORA}"
  resource_frmagendagrupovisitante.Preencher o campo Hora Prevista da Visita "${HORA}"

E preencher o campo Código do Colaborador "${COD}"
  resource_frmagendagrupovisitante.Preencher o campo Código do Colaborador "${COD}"

E preencher o campo Grupo de Visitantes "${GRUPO}"
  resource_frmagendagrupovisitante.Preencher o campo Grupo de Visitantes "${GRUPO}"

E selecionar uma opção no campo Tipo de Visita "${VISITA}"
  resource_frmagendagrupovisitante.Selecionar uma opção no campo Tipo de Visita "${VISITA}"

E preencher o campo Grupo de Acesso "${GRUPO}"
  resource_frmagendagrupovisitante.Preencher o campo Grupo de Acesso "${GRUPO}"

E preencher o campo Telefone do Grupo de Visitantes "${TELEFONE}"
  resource_frmagendagrupovisitante.Preencher o campo Telefone do Grupo de Visitantes "${TELEFONE}"

E preencher o campo Data da Validade da Visita "${DATA}"
  resource_frmagendagrupovisitante.Preencher o campo Data da Validade da Visita "${DATA}"

E preencher o campo Hora da Validade da Visita "${HORA}"
  resource_frmagendagrupovisitante.Preencher o campo Hora da Validade da Visita "${HORA}"

E preencher o campo Observação "${OBS}"
  resource_frmagendagrupovisitante.Preencher o campo Observação "${OBS}"

E preencher o campo Código do Autorizador "${COD}"
  resource_frmagendagrupovisitante.Preencher o campo Código do Autorizador "${COD}"

E clicar no botão: Incluir o Registro
  resource_btn.Clicar no Botão Incluir o Registro

E clicar no botão: Abrir um Novo Registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Agendamento de Grupo de Visitantes (Inclusão)
  resource_frmagendagrupovisitante.Acessar Tela Agendamento de Grupo de Visitantes (Inclusão)

Então devo visualizar a tela: Agendamento de Grupo de Visitantes (Atualização)
  resource_frmagendagrupovisitante.Acessar Tela Agendamento de Grupo de Visitantes (Atualização)

