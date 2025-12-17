*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consreloutrasempresas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Valores de Entrada do Modelo
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Empresa Terceira", e clicar em Pesquisar
  Então devo visualizar a tela: Valores de Entrada do Modelo
  E selecionar uma opção no campo Código Empresa "3 - GOOGLE"
  E selecionar uma opção no campo Exibir Usuário "Sim"

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Empresa Terceira", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Empresa Terceira

Então devo visualizar a tela: Valores de Entrada do Modelo
  resource_consreloutrasempresas.Acessar Tela Valores de Entrada do Modelo

E selecionar uma opção no campo Código Empresa "${CÓDIGO_EMPRESA}"
  resource_consreloutrasempresas.Selecionar uma opção no campo Código Empresa "${CÓDIGO_EMPRESA}"

E selecionar uma opção no campo Exibir Usuário "${EXIBIR_USUÁRIO}"
  resource_consreloutrasempresas.Selecionar uma opção no campo Exibir Usuário "${EXIBIR_USUÁRIO}"
