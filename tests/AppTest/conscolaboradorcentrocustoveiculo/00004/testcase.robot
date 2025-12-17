*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_conscolaboradorcentrocustoveiculo.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatório de Acessos às Áreas Restritas
${APPNAME}     conscolaboradorcentrocustoveiculo
${OBJETIVO}    Verificar todos os campos na tela Relatório de Acessos às Áreas Restritas.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório de Acessos às Áreas Restritas
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Acesso Colaboradores Centro de Custo Veiculo", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta de Acesso Colaboradores Centro de Custo Veiculo
  E verificar a label Data
  E verificar a label Hora
  E verificar a label NomeEmpr
  E verificar a label Empresa Terceira
  E verificar a label Icard
  E verificar a label Nome
  E verificar a label Cpf
  E verificar a label Tipo
  E verificar a label DireAces
  E verificar a label Direção
  E verificar a label Centro Custo
  E verificar a label Planta
  E verificar a label DescPlan
  E verificar a label Cód. Coletor
  E verificar a label DescCole
  E verificar a label NomeLoca
  E verificar a label Função
  E verificar a label QuanAces
  E verificar a label Portaria
  E verificar a label Placa
  E verificar a label Modelo
  E verificar a label Cor
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

Ao digitar a descrição: "Acesso Colaboradores Centro de Custo Veiculo", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Acesso Colaboradores Centro de Custo Veiculo

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Acesso Colaboradores Centro de Custo Veiculo
  resource_conscolaboradorcentrocustoveiculo.Acessar Tela Consulta de Acesso Colaboradores Centro de Custo Veiculo

E verificar a label Data
  resource_conscolaboradorcentrocustoveiculo.Verificar a label Data

E verificar a label Hora
  resource_conscolaboradorcentrocustoveiculo.Verificar a label Hora

E verificar a label NomeEmpr
  resource_conscolaboradorcentrocustoveiculo.Verificar a label NomeEmpr

E verificar a label Empresa Terceira
  resource_conscolaboradorcentrocustoveiculo.Verificar a label Empresa Terceira

E verificar a label Icard
  resource_conscolaboradorcentrocustoveiculo.Verificar a label Icard

E verificar a label Nome
  resource_conscolaboradorcentrocustoveiculo.Verificar a label Nome

E verificar a label Cpf
  resource_conscolaboradorcentrocustoveiculo.Verificar a label Cpf

E verificar a label Tipo
  resource_conscolaboradorcentrocustoveiculo.Verificar a label Tipo

E verificar a label DireAces
  resource_conscolaboradorcentrocustoveiculo.Verificar a label DireAces

E verificar a label Direção
  resource_conscolaboradorcentrocustoveiculo.Verificar a label Direção

E verificar a label Centro Custo
  resource_conscolaboradorcentrocustoveiculo.Verificar a label Centro Custo

E verificar a label Planta
  resource_conscolaboradorcentrocustoveiculo.Verificar a label Planta

E verificar a label DescPlan
  resource_conscolaboradorcentrocustoveiculo.Verificar a label DescPlan

E verificar a label Cód. Coletor
  resource_conscolaboradorcentrocustoveiculo.Verificar a label Cód. Coletor

E verificar a label DescCole
  resource_conscolaboradorcentrocustoveiculo.Verificar a label DescCole

E verificar a label NomeLoca
  resource_conscolaboradorcentrocustoveiculo.Verificar a label NomeLoca

E verificar a label Função
  resource_conscolaboradorcentrocustoveiculo.Verificar a label Função

E verificar a label QuanAces
  resource_conscolaboradorcentrocustoveiculo.Verificar a label QuanAces

E verificar a label Portaria
  resource_conscolaboradorcentrocustoveiculo.Verificar a label Portaria

E verificar a label Placa
  resource_conscolaboradorcentrocustoveiculo.Verificar a label Placa

E verificar a label Modelo
  resource_conscolaboradorcentrocustoveiculo.Verificar a label Modelo

E verificar a label Cor
  resource_conscolaboradorcentrocustoveiculo.Verificar a label Cor

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
