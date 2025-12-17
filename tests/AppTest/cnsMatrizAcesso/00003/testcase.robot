*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsMatrizAcesso.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta Matriz Acesso - Filtro
${APPNAME}     cnsMatrizAcesso
${OBJETIVO}    Verificar todos os campos na tela Consulta Matriz Acesso - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta Matriz Acesso - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Matriz de Acesso de Colaborador", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta Matriz Acesso - Filtro
  E verificar o campo Cód. Matriz
  E verificar o campo Nome da Matriz
  E verificar o campo Nível de Prioridade
  E verificar o campo Dt. Início
  E verificar o campo Dt. Fim
  E verificar o campo Tipo de Colaborador
  E verificar o campo Empresa
  E verificar o campo Filial
  E verificar o campo Centro de Custo
  #E verificar o campo Local Organograma  #246 não possui o campo
  E verificar o campo Cargo
  #E verificar o campo Turno  #246 não possui o campo
  #E verificar o campo Escala  #246 não possui o campo
  E verificar o campo Grupo Feriados
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

Ao digitar a descrição: "Matriz de Acesso de Colaborador", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Matriz de Acesso de Colaborador

Então devo visualizar a tela: Consulta Matriz Acesso - Filtro
  resource_cnsMatrizAcesso.Acessar Tela Consulta Matriz Acesso - Filtro

E verificar o campo Cód. Matriz
  resource_cnsMatrizAcesso.Verificar o campo Cód. Matriz

E verificar o campo Nome da Matriz
  resource_cnsMatrizAcesso.Verificar o campo Nome da Matriz

E verificar o campo Nível de Prioridade
  resource_cnsMatrizAcesso.Verificar o campo Nível de Prioridade

E verificar o campo Dt. Início
  resource_cnsMatrizAcesso.Verificar o campo Dt. Início

E verificar o campo Dt. Fim
  resource_cnsMatrizAcesso.Verificar o campo Dt. Fim

E verificar o campo Tipo de Colaborador
  resource_cnsMatrizAcesso.Verificar o campo Tipo de Colaborador

E verificar o campo Empresa
  resource_cnsMatrizAcesso.Verificar o campo Empresa

E verificar o campo Filial
  resource_cnsMatrizAcesso.Verificar o campo Filial

E verificar o campo Centro de Custo
  resource_cnsMatrizAcesso.Verificar o campo Centro de Custo

E verificar o campo Local Organograma
  resource_cnsMatrizAcesso.Verificar o campo Local Organograma

E verificar o campo Cargo
  resource_cnsMatrizAcesso.Verificar o campo Cargo

E verificar o campo Turno
  resource_cnsMatrizAcesso.Verificar o campo Turno

E verificar o campo Escala
  resource_cnsMatrizAcesso.Verificar o campo Escala

E verificar o campo Grupo Feriados
  resource_cnsMatrizAcesso.Verificar o campo Grupo Feriados

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
