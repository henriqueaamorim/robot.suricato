*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrdevedoresbeneficios.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Devedores de Benefícios - Filtro
${APPNAME}     ctrdevedoresbeneficios
${OBJETIVO}    Verificar todos os campos na tela Consulta de Devedores de Benefícios - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Devedores de Benefícios - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Devedores de Benefícios", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Devedores de Benefícios - Filtro
  E verificar o campo Inicio *
  E verificar o campo Final *
  E verificar o campo Status
  E verificar se existe o campo Teste
  
*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Consulta de Devedores de Benefícios", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Devedores de Benefícios

Então devo visualizar a tela: Consulta de Devedores de Benefícios - Filtro
  resource_ctrdevedoresbeneficios.Acessar Tela Consulta de Devedores de Benefícios - Filtro

E verificar o campo Inicio *
  resource_ctrdevedoresbeneficios.Verificar o campo Inicio *

E verificar o campo Final *
  resource_ctrdevedoresbeneficios.Verificar o campo Final *

E verificar o campo Status
  resource_ctrdevedoresbeneficios.Verificar o campo Status

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
