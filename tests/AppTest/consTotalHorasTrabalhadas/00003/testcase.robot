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

${SCREENNAME}  Relatório Total de Horas Trabalhadas - Filtro
${APPNAME}     consTotalHorasTrabalhadas
${OBJETIVO}    Verificar todos os campos na tela Relatório Total de Horas Trabalhadas - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório Total de Horas Trabalhadas - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Total de Horas Trabalhadas", e clicar em Pesquisar
  Então devo visualizar a tela: Relatório Total de Horas Trabalhadas - Filtro
  E verificar o campo Empresa
  E verificar o campo Empresa Terceira
  E verificar o campo Planta
  E verificar o campo Tipo do Colaborador
  E verificar o campo Centro de Custo
  E verificar o campo Data de Acesso
  E verificar o campo Nome 
  E verificar o campo Matrícula
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

Então devo visualizar a tela: Relatório Total de Horas Trabalhadas - Filtro
  resource_consTotalHorasTrabalhadas.Acessar Tela Relatório Total de Horas Trabalhadas - Filtro

E verificar o campo Empresa
  resource_consTotalHorasTrabalhadas.Verificar o campo Empresa

E verificar o campo Empresa Terceira
  resource_consTotalHorasTrabalhadas.Verificar o campo Empresa Terceira

E verificar o campo Planta
  resource_consTotalHorasTrabalhadas.Verificar o campo Planta

E verificar o campo Tipo do Colaborador
  resource_consTotalHorasTrabalhadas.Verificar o campo Tipo do Colaborador

E verificar o campo Centro de Custo
  resource_consTotalHorasTrabalhadas.Verificar o campo Centro de Custo

E verificar o campo Data de Acesso
  resource_consTotalHorasTrabalhadas.Verificar o campo Data de Acesso

E verificar o campo Nome 
  resource_consTotalHorasTrabalhadas.Verificar o campo Nome 

E verificar o campo Matrícula
  resource_consTotalHorasTrabalhadas.Verificar o campo Matrícula

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
