*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consColaboradoresporFilial.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Colaboradores por Filial
${APPNAME}     consColaboradoresporFilial
${OBJETIVO}    Verificar todos os campos na tela Consulta de Colaboradores por Filial.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Colaboradores por Filial
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaborador por Filial", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Colaboradores por Filial
  E verificar a label Matrícula
  E verificar a label Nome
  E verificar a label Número do PIS
  E verificar a label Organograma
  E verificar a label Local
  E verificar a label Local do Organograma
  E verificar a label Centro Custo
  E verificar a label Data Admissão
  E verificar a label Código Situação
  E verificar a label Situação
  E verificar a label Razão Social
  E verificar a label Código Empresa
  E verificar a label Código Colaborador
  E verificar a label Empresa
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

Ao digitar a descrição: "Colaborador por Filial", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Colaborador por Filial

Então devo visualizar a tela: Consulta de Colaboradores por Filial
  resource_consColaboradoresporFilial.Acessar Tela Consulta de Colaboradores por Filial

E verificar a label Matrícula
  resource_consColaboradoresporFilial.Verificar a label Matrícula

E verificar a label Nome
  resource_consColaboradoresporFilial.Verificar a label Nome

E verificar a label Número do PIS
  resource_consColaboradoresporFilial.Verificar a label Número do PIS

E verificar a label Organograma
  resource_consColaboradoresporFilial.Verificar a label Organograma

E verificar a label Local
  resource_consColaboradoresporFilial.Verificar a label Local

E verificar a label Local do Organograma
  resource_consColaboradoresporFilial.Verificar a label Local do Organograma

E verificar a label Centro Custo
  resource_consColaboradoresporFilial.Verificar a label Centro Custo

E verificar a label Data Admissão
  resource_consColaboradoresporFilial.Verificar a label Data Admissão

E verificar a label Código Situação
  resource_consColaboradoresporFilial.Verificar a label Código Situação

E verificar a label Situação
  resource_consColaboradoresporFilial.Verificar a label Situação

E verificar a label Razão Social
  resource_consColaboradoresporFilial.Verificar a label Razão Social

E verificar a label Código Empresa
  resource_consColaboradoresporFilial.Verificar a label Código Empresa

E verificar a label Código Colaborador
  resource_consColaboradoresporFilial.Verificar a label Código Colaborador

E verificar a label Empresa
  resource_consColaboradoresporFilial.Verificar a label Empresa

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
