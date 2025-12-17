*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consTotalHorasTrabalhadas.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatório Total de Horas Trabalhadas
${APPNAME}     consTotalHorasTrabalhadas
${OBJETIVO}    Verificar todos os campos na tela Relatório Total de Horas Trabalhadas.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório Total de Horas Trabalhadas
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Total de Horas Trabalhadas", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Relatório Total de Horas Trabalhadas
  E verificar a label Empresa
  E verificar a label Empresa Terceira
  E verificar a label Tipo do Colaborador
  E verificar a label Matrícula
  E verificar a label Nome
  E verificar a label CPF
  E verificar a label Local
  E verificar a label Data de Acesso
  E verificar a label Hora de Entrada
  E verificar a label Hora de Saída
  E verificar a label Total de Horas
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

Ao digitar a descrição: "Total de Horas Trabalhadas", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Total de Horas Trabalhadas

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Relatório Total de Horas Trabalhadas
  resource_consTotalHorasTrabalhadas.Acessar Tela Relatório Total de Horas Trabalhadas 

E verificar a label Empresa
  resource_consTotalHorasTrabalhadas.Verificar a label Empresa

E verificar a label Empresa Terceira
  resource_consTotalHorasTrabalhadas.Verificar a label Empresa Terceira

E verificar a label Tipo do Colaborador
  resource_consTotalHorasTrabalhadas.Verificar a label Tipo do Colaborador

E verificar a label Matrícula
  resource_consTotalHorasTrabalhadas.Verificar a label Matrícula

E verificar a label Nome
  resource_consTotalHorasTrabalhadas.Verificar a label Nome

E verificar a label CPF
  resource_consTotalHorasTrabalhadas.Verificar a label CPF

E verificar a label Local
  resource_consTotalHorasTrabalhadas.Verificar a label Local

E verificar a label Data de Acesso
  resource_consTotalHorasTrabalhadas.Verificar a label Data de Acesso

E verificar a label Hora de Entrada
  resource_consTotalHorasTrabalhadas.Verificar a label Hora de Entrada

E verificar a label Hora de Saída
  resource_consTotalHorasTrabalhadas.Verificar a label Hora de Saída

E verificar a label Total de Horas
  resource_consTotalHorasTrabalhadas.Verificar a label Total de Horas

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
