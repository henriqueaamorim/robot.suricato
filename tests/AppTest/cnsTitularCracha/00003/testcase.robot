*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsTitularCracha.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Titular de Crachá
${APPNAME}     cnsTitularCracha
${OBJETIVO}    Verificar todos os campos na tela Consulta de Titular de Crachá.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Titular de Crachá
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Titular Crachá - Consulta", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Titular de Crachá
  E verificar a label Tipo
  E verificar a label Crachá
  E verificar a label Data Inicial
  E verificar a label Hora Inicial
  E verificar a label Data Final
  E verificar a label Hora Final
  E verificar a label Empresa
  E verificar a label Tipo do Colaborador
  E verificar a label Empresa Terceira
  E verificar a label Matrícula
  E verificar a label Nome
  E verificar a label Situação
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

Ao digitar a descrição: "Titular Crachá - Consulta", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Titular Crachá - Consulta

Então devo visualizar a tela: Consulta de Titular de Crachá
  resource_cnsTitularCracha.Acessar Tela Consulta de Titular de Crachá

E verificar a label Tipo
  resource_cnsTitularCracha.Verificar a label Tipo

E verificar a label Crachá
  resource_cnsTitularCracha.Verificar a label Crachá

E verificar a label Data Inicial
  resource_cnsTitularCracha.Verificar a label Data Inicial

E verificar a label Hora Inicial
  resource_cnsTitularCracha.Verificar a label Hora Inicial

E verificar a label Data Final
  resource_cnsTitularCracha.Verificar a label Data Final

E verificar a label Hora Final
  resource_cnsTitularCracha.Verificar a label Hora Final

E verificar a label Empresa
  resource_cnsTitularCracha.Verificar a label Empresa

E verificar a label Tipo do Colaborador
  resource_cnsTitularCracha.Verificar a label Tipo do Colaborador

E verificar a label Empresa Terceira
  resource_cnsTitularCracha.Verificar a label Empresa Terceira

E verificar a label Matrícula
  resource_cnsTitularCracha.Verificar a label Matrícula

E verificar a label Nome
  resource_cnsTitularCracha.Verificar a label Nome

E verificar a label Situação
  resource_cnsTitularCracha.Verificar a label Situação

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
