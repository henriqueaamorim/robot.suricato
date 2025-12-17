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

${SCREENNAME}  Consulta Relatorio Comparativo ERP
${APPNAME}     cons_relat_comparativo
${OBJETIVO}    Verificar todos os campos na tela Consulta Relatorio Comparativo ERP.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta Relatorio Comparativo ERP
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta pra comparativo e validação dados ERP", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta Relatorio Comparativo ERP
  E verificar a label Tipo de Colaborador
  E verificar a label Matrícula
  E verificar a label Nome do Colaborador
  E verificar a label Empresa
  E verificar a label Situação
  E verificar a label Data de Admissão
  E verificar a label Data de Afastamento
  E verificar a label Empresa Terceira
  E verificar a label CPF
  E verificar a label PIS
  E verificar a label Escala
  E verificar a label Crachá
  E verificar a label Centro de Custo
  E verificar a label Registra Ponto
  E verificar a label Grupo de REP
  E verificar a label Validade do Crachá
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

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta Relatorio Comparativo ERP
  resource_cons_relat_comparativo.Acessar Tela Consulta Relatorio Comparativo ERP

E verificar a label Tipo de Colaborador
  resource_cons_relat_comparativo.Verificar a label Tipo de Colaborador

E verificar a label Matrícula
  resource_cons_relat_comparativo.Verificar a label Matrícula

E verificar a label Nome do Colaborador
  resource_cons_relat_comparativo.Verificar a label Nome do Colaborador

E verificar a label Empresa
  resource_cons_relat_comparativo.Verificar a label Empresa

E verificar a label Situação
  resource_cons_relat_comparativo.Verificar a label Situação

E verificar a label Data de Admissão
  resource_cons_relat_comparativo.Verificar a label Data de Admissão

E verificar a label Data de Afastamento
  resource_cons_relat_comparativo.Verificar a label Data de Afastamento

E verificar a label Empresa Terceira
  resource_cons_relat_comparativo.Verificar a label Empresa Terceira

E verificar a label CPF
  resource_cons_relat_comparativo.Verificar a label CPF

E verificar a label PIS
  resource_cons_relat_comparativo.Verificar a label PIS

E verificar a label Escala
  resource_cons_relat_comparativo.Verificar a label Escala

E verificar a label Crachá
  resource_cons_relat_comparativo.Verificar a label Crachá

E verificar a label Centro de Custo
  resource_cons_relat_comparativo.Verificar a label Centro de Custo

E verificar a label Registra Ponto
  resource_cons_relat_comparativo.Verificar a label Registra Ponto

E verificar a label Grupo de REP
  resource_cons_relat_comparativo.Verificar a label Grupo de REP

E verificar a label Validade do Crachá
  resource_cons_relat_comparativo.Verificar a label Validade do Crachá

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
