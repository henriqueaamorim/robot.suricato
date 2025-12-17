*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cons_relat_comparativo.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta Relatorio Comparativo ERP - Filtro
${APPNAME}     cons_relat_comparativo
${OBJETIVO}    Verificar todos os campos na tela Consulta Relatorio Comparativo ERP - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta Relatorio Comparativo ERP - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta pra comparativo e validação dados ERP", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta Relatorio Comparativo ERP - Filtro
  E verificar o campo Empresa
  E verificar o campo Situação
  E verificar o campo Tipo de Colaborador
  E verificar o campo Empresa Terceira
  E verificar o campo Data de Admissão
  E verificar o campo Data de Afastamento
  E verificar o campo Escala
  E verificar o campo Centro de Custo
  E verificar o campo Registra Ponto
  E verificar o campo Grupo de REP
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

Ao digitar a descrição: "Consulta pra comparativo e validação dados ERP", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta pra comparativo e validação dados ERP

Então devo visualizar a tela: Consulta Relatorio Comparativo ERP - Filtro
  resource_cons_relat_comparativo.Acessar Tela Consulta Relatorio Comparativo ERP - Filtro

E verificar o campo Empresa
  resource_cons_relat_comparativo.Verificar o campo Empresa

E verificar o campo Situação
  resource_cons_relat_comparativo.Verificar o campo Situação

E verificar o campo Tipo de Colaborador
  resource_cons_relat_comparativo.Verificar o campo Tipo de Colaborador

E verificar o campo Empresa Terceira
  resource_cons_relat_comparativo.Verificar o campo Empresa Terceira

E verificar o campo Data de Admissão
  resource_cons_relat_comparativo.Verificar o campo Data de Admissão

E verificar o campo Data de Afastamento
  resource_cons_relat_comparativo.Verificar o campo Data de Afastamento

E verificar o campo Escala
  resource_cons_relat_comparativo.Verificar o campo Escala

E verificar o campo Centro de Custo
  resource_cons_relat_comparativo.Verificar o campo Centro de Custo

E verificar o campo Registra Ponto
  resource_cons_relat_comparativo.Verificar o campo Registra Ponto

E verificar o campo Grupo de REP
  resource_cons_relat_comparativo.Verificar o campo Grupo de REP

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
