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

${SCREENNAME}  Consulta de Colaboradores por Veiculos
${APPNAME}     consColaboradoresporVeiculos
${OBJETIVO}    Verificar todos os campos na tela Consulta de Colaboradores por Veiculos.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Colaboradores por Veiculos
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaborador por Veiculo", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta de Colaboradores por Veiculos
  E verificar a label Matrícula
  E verificar a label Crachá
  E verificar a label Colaborador
  E verificar a label Nome
  E verificar a label Ramal
  E verificar a label E-Mail Comercial
  E verificar a label Organograma
  #E verificar a label NomeLoca  #246 não possui
  E verificar a label Crachá do Veículo
  E verificar a label Cód. Veículo
  #E verificar a label EstaPlac  #246 não possui
  #E verificar a label PlacVeic  #246 não possui
  #E verificar a label ModeVeic  #246 não possui
  #E verificar a label MarcVeic  #246 não possui
  E verificar a label Cor
  E verificar a label Tipo do Colaborador 
  #E verificar a label DescTipoVeic  #246 não possui
  E verificar a label Empresa Terceira
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

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Colaboradores por Veiculos
  resource_consColaboradoresporVeiculos.Acessar Tela Consulta de Colaboradores por Veiculos

E verificar a label Matrícula
  resource_consColaboradoresporVeiculos.Verificar a label Matrícula

E verificar a label Crachá
  resource_consColaboradoresporVeiculos.Verificar a label Crachá

E verificar a label Colaborador
  resource_consColaboradoresporVeiculos.Verificar a label Colaborador

E verificar a label Nome
  resource_consColaboradoresporVeiculos.Verificar a label Nome

E verificar a label Ramal
  resource_consColaboradoresporVeiculos.Verificar a label Ramal

E verificar a label E-Mail Comercial
  resource_consColaboradoresporVeiculos.Verificar a label E-Mail Comercial

E verificar a label Organograma
  resource_consColaboradoresporVeiculos.Verificar a label Organograma

E verificar a label NomeLoca
  resource_consColaboradoresporVeiculos.Verificar a label NomeLoca

E verificar a label Crachá do Veículo
  resource_consColaboradoresporVeiculos.Verificar a label Crachá do Veículo

E verificar a label Cód. Veículo
  resource_consColaboradoresporVeiculos.Verificar a label Cód. Veículo

E verificar a label EstaPlac
  resource_consColaboradoresporVeiculos.Verificar a label EstaPlac

E verificar a label PlacVeic
  resource_consColaboradoresporVeiculos.Verificar a label PlacVeic

E verificar a label ModeVeic
  resource_consColaboradoresporVeiculos.Verificar a label ModeVeic

E verificar a label MarcVeic
  resource_consColaboradoresporVeiculos.Verificar a label MarcVeic

E verificar a label Cor
  resource_consColaboradoresporVeiculos.Verificar a label Cor

E verificar a label Tipo do Colaborador 
  resource_consColaboradoresporVeiculos.Verificar a label Tipo do Colaborador 

E verificar a label DescTipoVeic
  resource_consColaboradoresporVeiculos.Verificar a label DescTipoVeic

E verificar a label Empresa Terceira
  resource_consColaboradoresporVeiculos.Verificar a label Empresa Terceira

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
