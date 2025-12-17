*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsAcessosDosColaboradores.robot
Resource    ../../../../resource/app/resource_cnsHistoricoCentroCusto.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Preencher todos os campos da tela Consulta de Acessos dos Colaboradores - Filtro
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Acesso de Colaborador", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Acessos dos Colaboradores - Filtro
  E preencher o campo Data inicial "15/11/2021"
  E preencher o campo Data final "21/12/2022"
  E preencher o campo Hora inicial "17:00"
  E preencher o campo Hora final "19:00"
  E selecionar uma opção no campo Planta "AAH"
  E selecionar uma opção no campo Codin "REP - AAC"
  E selecionar uma opção no campo Empresa "Alfandega"
  E preencher o campo Nome "ok"

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Consulta de Acesso de Colaborador", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Acesso de Colaborador

Então devo visualizar a tela: Consulta de Acessos dos Colaboradores - Filtro
  resource_cnsAcessosDosColaboradores.Acessar Tela Consulta de Acessos dos Colaboradores - Filtro

E preencher o campo Data inicial "${DIA}/${MES}/${ANO}"
  resource_cnsAcessosDosColaboradores.Preencher o campo Data inicial "${DIA}/${MES}/${ANO}"

E preencher o campo Data final "${DIA}/${MES}/${ANO}"
  resource_cnsAcessosDosColaboradores.Preencher o campo Data final "${DIA}/${MES}/${ANO}"

E preencher o campo Hora inicial "${HORA}:${MIN}"
  resource_cnsAcessosDosColaboradores.Preencher o campo Hora inicial "${HORA}:${MIN}"

E preencher o campo Hora final "${HORA}:${MIN}"
  resource_cnsAcessosDosColaboradores.Preencher o campo Hora final "${HORA}:${MIN}"

E selecionar uma opção no campo Planta "${PLANTA}"
  resource_cnsAcessosDosColaboradores.Selecionar uma opção no campo Planta "${PLANTA}"

E selecionar uma opção no campo Codin "${CODIN}"
  resource_cnsAcessosDosColaboradores.Selecionar uma opção no campo Codin "${CODIN}"

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_cnsAcessosDosColaboradores.Selecionar uma opção no campo Empresa "${EMPRESA}"

E preencher o campo Nome "${NOME}"
  resource_cnsAcessosDosColaboradores.Preencher o campo Nome "${NOME}"
