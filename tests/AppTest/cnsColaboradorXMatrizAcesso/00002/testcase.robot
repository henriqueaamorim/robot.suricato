*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsColaboradorXMatrizAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar Tela Consulta Colaborador por Matriz de Acesso - Filtro.

*** Test Cases ***

Testcase: Acessar Tela Consulta Colaborador por Matriz de Acesso - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaborador x Matriz de Acesso", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta Colaborador por Matriz de Acesso
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Consulta Colaborador por Matriz de Acesso - Filtro

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Colaborador x Matriz de Acesso", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Colaborador x Matriz de Acesso

Então devo visualizar a tela: Consulta Colaborador por Matriz de Acesso
  resource_cnsColaboradorXMatrizAcesso.Acessar Tela Consulta Colaborador por Matriz de Acesso

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Consulta Colaborador por Matriz de Acesso - Filtro
  resource_cnsColaboradorXMatrizAcesso.Acessar Tela Consulta Colaborador por Matriz de Acesso - Filtro