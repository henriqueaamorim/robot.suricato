*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrHistoricoCracha.robot
Resource        ../../../../resource/app/resource_cnsConsultasHistoricosCracha.robot
Resource        ../../../../resource/app/resource_cnsCrachaColaboradores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos da tela Consulta de Crachás de Colaboradores (Filtro)

*** Test Cases ***

Testcase: Preencher todos os campos da tela Consulta de Crachás de Colaboradores (Filtro)
  [Tags]  REGISTER  POLYVALENT 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Histórico de Crachá", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Histórico de Crachá - Filtro
  E então clicar no botão: "OK"
  Então devo visualizar a tela: Consulta em Histórico de Crachá
  Ao clicar no botão: Crachás
  Então devo visualizar a tela: Consulta de Crachás de Colaboradores (Filtro)
  E selecionar uma opção no campo Tipo de Crachá "Crachá titular"
  E selecionar uma opção no campo Empresa "Alfandega"
  E selecionar uma opção no campo Tipo do Colaborador "Empregado" 
  E preencher o campo Matrícula "ok"
  E preencher o campo Data Início "15/11/2000"
  E preencher o campo Hora Início "01:30:20"
  E preencher o campo Número da Vila do Crachá "ok"

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Consulta de Histórico de Crachá", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Histórico de Crachá

Então devo visualizar a tela: Consulta de Histórico de Crachá - Filtro
  resource_ctrHistoricoCracha.Acessar Tela Consulta de Histórico de Crachá - Filtro

E então clicar no botão: "OK"
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Consulta em Histórico de Crachá
  resource_cnsConsultasHistoricosCracha.Acessar Tela Consulta em Histórico de Crachá

Ao clicar no botão: Crachás
  resource_cnsConsultasHistoricosCracha.Clicar no botão: Crachás

Então devo visualizar a tela: Consulta de Crachás de Colaboradores (Filtro)
  resource_cnsCrachaColaboradores.Acessar Tela Consulta de Crachás de Colaboradores (Filtro)

E selecionar uma opção no campo Tipo de Crachá "${TIPO_DE_CRACHÁ}"
  resource_cnsCrachaColaboradores.Selecionar uma opção no campo Tipo de Crachá "${TIPO_DE_CRACHÁ}"

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_cnsCrachaColaboradores.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"
  resource_cnsCrachaColaboradores.Selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_cnsCrachaColaboradores.Preencher o campo Matrícula "${MATRÍCULA}"

E preencher o campo Data Início "${DIA}/${MES}/${ANO}"
  resource_cnsCrachaColaboradores.Preencher o campo Data Início "${DIA}/${MES}/${ANO}"

E preencher o campo Hora Início "${HORA}:${MIN}"
  resource_cnsCrachaColaboradores.Preencher o campo Hora Início "${HORA}:${MIN}"

E preencher o campo Número da Vila do Crachá "${NÚMERO_DA_VILA_DO_CRACHÁ}"
  resource_cnsCrachaColaboradores.Preencher o campo Número da Vila do Crachá "${NÚMERO_DA_VILA_DO_CRACHÁ}"
