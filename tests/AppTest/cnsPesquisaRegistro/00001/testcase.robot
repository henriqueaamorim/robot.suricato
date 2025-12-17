*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrHistoricoCracha.robot
Resource        ../../../../resource/app/resource_cnsPesquisaRegistro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Pessoas (Busca Externa) através da tela Consulta de Histórico de Crachá - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Histórico de Crachá", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Histórico de Crachá - Filtro
  E clicar no botão: Buscar Dados Externos para Matrícula
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Pessoas (Busca Externa)

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

E clicar no botão: Buscar Dados Externos para Matrícula
  resource_ctrHistoricoCracha.Clicar No Botão Buscar Dados Externos Para Matrícula

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Pessoas (Busca Externa)
  resource_cnsPesquisaRegistro.Acessar Tela Consulta de Pessoas (Busca Externa)
