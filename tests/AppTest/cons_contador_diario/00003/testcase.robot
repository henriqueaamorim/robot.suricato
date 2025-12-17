*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cons_contador_diario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Contagem de Acessos Diários - Filtro
${APPNAME}     cons_contador_diario
${OBJETIVO}    Verificar todos os campos na tela Consulta de Contagem de Acessos Diários - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Contagem de Acessos Diários - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Contagem de acesso diario", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Contagem de Acessos Diários - Filtro
  E verificar o campo Data Inicial
  E verificar o campo Crachá
  E verificar o campo Centro de Custo
  E verificar o campo Nome
  E verificar o campo Cód. Empresa 
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

Ao digitar a descrição: "Consulta de Contagem de acesso diario", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Contagem de acesso diario

Então devo visualizar a tela: Consulta de Contagem de Acessos Diários - Filtro
  resource_cons_contador_diario.Acessar Tela Consulta de Contagem de Acessos Diários - Filtro

E verificar o campo Data Inicial
  resource_cons_contador_diario.Verificar o campo Data Inicial

E verificar o campo Crachá
  resource_cons_contador_diario.Verificar o campo Crachá

E verificar o campo Centro de Custo
  resource_cons_contador_diario.Verificar o campo Centro de Custo

E verificar o campo Nome
  resource_cons_contador_diario.Verificar o campo Nome

E verificar o campo Cód. Empresa 
  resource_cons_contador_diario.Verificar o campo Cód. Empresa 

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
