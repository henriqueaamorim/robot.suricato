*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsWSGLog.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Registrar a tela Log de Integração com WebService Guardian (Filtro).

*** Test Cases ***

Testcase: Acessar Tela Log de Integração com WebService Guardian (Filtro)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Log de Integração com WebService Guardian", e clicar em Pesquisar
  Então devo visualizar a tela: Log de Integração com WebService Guardian
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Log de Integração com WebService Guardian (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Log de Integração com WebService Guardian", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Log de Integração com WebService Guardian

Então devo visualizar a tela: Log de Integração com WebService Guardian
  resource_cnsWSGLog.Acessar Tela Log de Integração com WebService Guardian

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Log de Integração com WebService Guardian (Filtro)
  resource_cnsWSGLog.Acessar Tela Log de Integração com WebService Guardian (Filtro)