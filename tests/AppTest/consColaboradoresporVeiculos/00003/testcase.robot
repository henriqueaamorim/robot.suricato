*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consColaboradoresporVeiculos.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Colaboradores por Veiculos - Filtro
${APPNAME}     consColaboradoresporVeiculos
${OBJETIVO}    Verificar todos os campos na tela Consulta de Colaboradores por Veiculos - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Colaboradores por Veiculos - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaborador por Veiculo", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Colaboradores por Veiculos - Filtro
  E verificar o campo Matrícula
  E verificar o campo Tipo do Colaborador
  E verificar o campo Crachá
  E verificar o campo Nome
  E verificar o campo Crachá do Veículo
  E verificar o campo Cód. Veículo
  #E verificar o campo PlacVeic
  E verificar o campo Tipo do Veiculo
  E verificar o campo Empresa Terceira
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

Ao digitar a descrição: "Colaborador por Veiculo", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Colaborador por Veiculo

Então devo visualizar a tela: Consulta de Colaboradores por Veiculos - Filtro
  resource_consColaboradoresporVeiculos.Acessar Tela Consulta de Colaboradores por Veiculos - Filtro

E verificar o campo Matrícula
  resource_consColaboradoresporVeiculos.Verificar o campo Matrícula

E verificar o campo Tipo do Colaborador
  resource_consColaboradoresporVeiculos.Verificar o campo Tipo do Colaborador

E verificar o campo Crachá
  resource_consColaboradoresporVeiculos.Verificar o campo Crachá

E verificar o campo Nome
  resource_consColaboradoresporVeiculos.Verificar o campo Nome

E verificar o campo Crachá do Veículo
  resource_consColaboradoresporVeiculos.Verificar o campo Crachá do Veículo

E verificar o campo Cód. Veículo
  resource_consColaboradoresporVeiculos.Verificar o campo Cód. Veículo

E verificar o campo PlacVeic
  resource_consColaboradoresporVeiculos.Verificar o campo PlacVeic

E verificar o campo Tipo do Veiculo
  resource_consColaboradoresporVeiculos.Verificar o campo Tipo do Veiculo

E verificar o campo Empresa Terceira
  resource_consColaboradoresporVeiculos.Verificar o campo Empresa Terceira

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
