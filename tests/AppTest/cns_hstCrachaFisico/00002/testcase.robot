*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cns_hstCrachaFisico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta Histórico de Crachá x Numero Fisico
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta Histórico de Crachá x Numero Fisico", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta Histórico de Crachá x Numero Fisico - Filtro
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Consulta Histórico de Crachá x Numero Fisico

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Consulta Histórico de Crachá x Numero Fisico", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta Histórico de Crachá x Numero Fisico

Então devo visualizar a tela: Consulta Histórico de Crachá x Numero Fisico - Filtro
  resource_cns_hstCrachaFisico.Acessar Tela Consulta Histórico de Crachá x Numero Fisico - Filtro

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)
  
Então devo visualizar a tela: Consulta Histórico de Crachá x Numero Fisico
  resource_cns_hstCrachaFisico.Acessar Tela Consulta Histórico de Crachá x Numero Fisico
