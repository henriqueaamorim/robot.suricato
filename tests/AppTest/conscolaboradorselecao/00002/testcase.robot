*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrprogramacoes.robot
Resource        ../../../../resource/app/resource_conscolaboradorselecao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Colaboradores (Busca Externa) através da tela Consulta de Programações - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Programações", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Programações - Filtro
  Ao clicar no botão: Buscar Dados Externos para Matrícula
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Colaboradores (Filtro) (Busca Externa)
  Ao clicar em: Pesquisar Registros
  Então devo visualizar a tela: Consulta de Colaboradores (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Consulta de Programações", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Programações

Então devo visualizar a tela: Consulta de Programações - Filtro
  resource_ctrprogramacoes.Acessar Tela Consulta de Programações - Filtro

Ao clicar no botão: Buscar Dados Externos para Matrícula
  resource_ctrprogramacoes.Clicar No Botão Buscar Dados Externos Para Matrícula

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Colaboradores (Filtro) (Busca Externa)
  resource_conscolaboradorselecao.Acessar Tela Consulta de Colaboradores (Filtro) (Busca Externa)

Ao clicar em: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Colaboradores (Busca Externa)
  resource_conscolaboradorselecao.Acessar Tela Consulta de Colaboradores (Busca Externa)
