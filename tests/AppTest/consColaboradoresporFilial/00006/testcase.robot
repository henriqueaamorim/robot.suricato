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

${SCREENNAME}  Consulta de Colaboradores por Filial - Filtro
${APPNAME}     consColaboradoresporFilial
${OBJETIVO}    Verificar todos os campos na tela Consulta de Colaboradores por Filial - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Colaboradores por Filial - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaborador por Filial", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta de Colaboradores por Filial - Filtro
  E verificar o campo Matrícula
  E verificar o campo Nome
  E verificar o campo Número do PIS
  E verificar o campo Razão Social
  E verificar o campo Organograma
  E verificar o campo Local
  E verificar o campo Centro Custo
  E verificar o campo Data Admissão
  E verificar o campo Situação
  E verificar o campo Empresa
  E verificar o campo Código Colaborador
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

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)
  
Então devo visualizar a tela: Consulta de Colaboradores por Filial - Filtro
  resource_consColaboradoresporFilial.Acessar Tela Consulta de Colaboradores por Filial - Filtro

E verificar o campo Matrícula
  resource_consColaboradoresporFilial.Verificar o campo Matrícula

E verificar o campo Nome
  resource_consColaboradoresporFilial.Verificar o campo Nome

E verificar o campo Número do PIS
  resource_consColaboradoresporFilial.Verificar o campo Número do PIS

E verificar o campo Razão Social
  resource_consColaboradoresporFilial.Verificar o campo Razão Social

E verificar o campo Organograma
  resource_consColaboradoresporFilial.Verificar o campo Organograma

E verificar o campo Local
  resource_consColaboradoresporFilial.Verificar o campo Local

E verificar o campo Centro Custo
  resource_consColaboradoresporFilial.Verificar o campo Centro Custo

E verificar o campo Data Admissão
  resource_consColaboradoresporFilial.Verificar o campo Data Admissão

E verificar o campo Situação
  resource_consColaboradoresporFilial.Verificar o campo Situação

E verificar o campo Empresa
  resource_consColaboradoresporFilial.Verificar o campo Empresa

E verificar o campo Código Colaborador
  resource_consColaboradoresporFilial.Verificar o campo Código Colaborador

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
