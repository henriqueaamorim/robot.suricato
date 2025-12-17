*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsSaidaVisitantes.robot
Resource        ../../../../resource/app/resource_fichaSaidaVisitantes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar Tela Consulta de Saída de Visitantes.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Saída de Visitantes (Filtro)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Saída de Visitantes - Consulta", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Saída de Visitantes (Filtro)
  E clicar no botão: Pesquisar Registros
  E clicar no botão: Detalhe
  Então o navegador deve abrir uma nova guia, e eu visualizar a tela: Consulta de Saída de Visitantes (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Saída de Visitantes - Consulta", e clicar em Pesquisar
  resource_report.Navegar no Relatório:Saída de Visitantes - Consulta

Então devo visualizar a tela: Consulta de Saída de Visitantes (Filtro)
  resource_cnsSaidaVisitantes.Acessar Tela Consulta de Saída de Visitantes (Filtro)

E clicar no botão: Detalhe
  resource_btn.Clicar No Botão Detalhe

Então o navegador deve abrir uma nova guia, e eu visualizar a tela: Consulta de Saída de Visitantes (Filtro)
  resource_fichaSaidaVisitantes.Acessar Tela Consulta de Saída de Visitantes (Filtro)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)