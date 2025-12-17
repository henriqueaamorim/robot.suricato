*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentradagrupo.robot
Resource        ../../../../resource/app/resource_consretornoagendagrupovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Consulta de Agendamento de Grupo de Visitante.

*** Test Cases ***

Testcase: Preencher todos os campos na tela Consulta de Agendamento de Grupo de Visitante
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  E clicar no botão: Agendamento
  Então devo visualizar a tela: Consulta de Agendamento de Grupo de Visitante
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Consulta de Agendamento de Grupo de Visitante (Filtro)
  E preencher o campo Data Agendamento "13/02/2022"
  E preencher o campo Hora Agendamento "12:00:00"
  E preencher o campo Matricula Visitado "1"
  E preencher o campo Grupo Visitante "21"
  E selecionar uma opção no campo Empresa "MICROPRESS SA"
  E selecionar uma opção no campo Tipo de Pessoa "Empregado"
  E preencher o campo Nome Grupo Visitante "Nome do Grupo"

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Grupo

Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  resource_ctropcoesentradagrupo.Acessar Tela Opções de Entrada de Grupo de Visitantes

E clicar no botão: Agendamento
  resource_btn.Clicar No Botão Agendamento

Então devo visualizar a tela: Consulta de Agendamento de Grupo de Visitante
  resource_consretornoagendagrupovisitante.Acessar Tela Consulta de Agendamento de Grupo de Visitante

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Consulta de Agendamento de Grupo de Visitante (Filtro)
  resource_consretornoagendagrupovisitante.Acessar Tela Consulta de Agendamento de Grupo de Visitante (Filtro)

E preencher o campo Data Agendamento "${DIA}/${MES}/${ANO}"
  resource_consretornoagendagrupovisitante.Preencher o campo Data Agendamento "${DIA}/${MES}/${ANO}"

E preencher o campo Hora Agendamento "${HORA}:${MIN}:${SEG}"
  resource_consretornoagendagrupovisitante.Preencher o campo Hora Agendamento "${HORA}:${MIN}:${SEG}"

E preencher o campo Matricula Visitado "${MATRICULA_VISITADO}"
  resource_consretornoagendagrupovisitante.Preencher o campo Matricula Visitado "${MATRICULA_VISITADO}"

E preencher o campo Grupo Visitante "${GRUPO_VISITANTE}"
  resource_consretornoagendagrupovisitante.Preencher o campo Grupo Visitante "${GRUPO_VISITANTE}"

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_consretornoagendagrupovisitante.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Tipo de Pessoa "${TIPO_DE_PESSOA}"
  resource_consretornoagendagrupovisitante.Selecionar uma opção no campo Tipo de Pessoa "${TIPO_DE_PESSOA}"

E preencher o campo Nome Grupo Visitante "${NOME_GRUPO_VISITANTE}"
  resource_consretornoagendagrupovisitante.Preencher o campo Nome Grupo Visitante "${NOME_GRUPO_VISITANTE}"
