*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_abaconsultaacesso.robot
Resource        ../../../../resource/app/resource_consacessovisitante.robot
Resource        ../../../../resource/app/resource_consacessocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Acesso de Visitantes (Filtro)
  [Tags]  POPULATED
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Acesso", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Acesso (Filtro)
  Ao clicar na aba "Visitantes"
  Então devo visualizar a tela: Consulta de Acesso de Visitantes (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Consulta de Acesso", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Acesso

Então devo visualizar a tela: Consulta de Acesso (Filtro)
  resource_consacessocolaborador.Acessar Tela Consulta de Acesso (Filtro)

Ao clicar na aba "Visitantes"
  resource_abaconsultaacesso.Clicar na aba Visitantes

Então devo visualizar a tela: Consulta de Acesso de Visitantes (Filtro)
  resource_consacessovisitante.Acessar Tela Consulta de Acesso de Visitantes (Filtro)
