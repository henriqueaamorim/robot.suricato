*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendagrupovisitante.robot
Resource        ../../../../resource/app/resource_consagendamentogrupovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Alterar o Cadastro de um Agendamento de Grupo de Visitantes.


*** Test Cases ***

Testcase: Alterar o Cadastro de um Agendamento de Grupo de Visitantes
  [Tags]  ALTER
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Agendamento de Grupo
  Então devo visualizar a tela: Agendamento de Grupo de Visitantes (Inclusão)
  E clicar no botão: Pesquisar
  E clicar no botão: Pesquisar Registros
  E preencher o campo Grupo Visitante "1"
  E novamente clicar no botão: Pesquisar Registros
  E então clicar no botão: Editar o Registro "1"
  E preencher o campo Grupo de Visitantes "1"
  E preencher o campo Quantidade de Visitantes no Grupo "3"
  E selecionar uma opção no campo Tipo de Visita "DESCRIÇÃO"
  E preencher o campo Grupo de Acesso "1"
  E preencher o campo Telefone do Grupo de Visitantes "1231312121"
  E preencher o campo Data da Validade da Visita "30/03/2023"
  E preencher o campo Hora da Validade da Visita "1200"
  E preencher o campo Observação "Observação"
  E preencher o campo Código do Autorizador "10"
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

E preencher o campo Grupo de Visitantes "${GRUPO}"
  resource_frmagendagrupovisitante.Preencher o campo Grupo de Visitantes "${GRUPO}"

E preencher o campo Quantidade de Visitantes no Grupo "${QUANT}"
  resource_frmagendagrupovisitante.Preencher o campo Quantidade de Visitantes no Grupo "${QUANT}"

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

E clicar no botão: Alterar o Registro
  resource_btn.Clicar No Botão Alterar o Registro