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

${SCREENNAME}  Consulta Matriz Acesso
${APPNAME}     cnsMatrizAcesso
${OBJETIVO}    Verificar todos os campos na tela Consulta Matriz Acesso.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta Matriz Acesso
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Matriz de Acesso de Colaborador", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta Matriz Acesso
  E verificar a label Cód. Matriz
  E verificar a label Nome da Matriz
  E verificar a label Nível de Prioridade
  E verificar a label Dt. Início
  E verificar a label Dt. Fim
  E verificar a label Empresa
  E verificar a label Tipo de Colaborador
  E verificar a label Filial
  E verificar a label Centro de Custo
  #E verificar a label Local Organograma  #246 não possui a label
  #E verificar a label Cargo  #246 não possui a label
  #E verificar a label Turno  #246 não possui a label
  #E verificar a label Escala  #246 não possui a label
  #E verificar a label Grupo Feriados  #246 não possui a label
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

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta Matriz Acesso
  resource_cnsMatrizAcesso.Acessar Tela Consulta Matriz Acesso

E verificar a label Cód. Matriz
  resource_cnsMatrizAcesso.Verificar a label Cód. Matriz

E verificar a label Nome da Matriz
  resource_cnsMatrizAcesso.Verificar a label Nome da Matriz

E verificar a label Nível de Prioridade
  resource_cnsMatrizAcesso.Verificar a label Nível de Prioridade

E verificar a label Dt. Início
  resource_cnsMatrizAcesso.Verificar a label Dt. Início

E verificar a label Dt. Fim
  resource_cnsMatrizAcesso.Verificar a label Dt. Fim

E verificar a label Empresa
  resource_cnsMatrizAcesso.Verificar a label Empresa

E verificar a label Tipo de Colaborador
  resource_cnsMatrizAcesso.Verificar a label Tipo de Colaborador

E verificar a label Filial
  resource_cnsMatrizAcesso.Verificar a label Filial

E verificar a label Centro de Custo
  resource_cnsMatrizAcesso.Verificar a label Centro de Custo

E verificar a label Local Organograma
  resource_cnsMatrizAcesso.Verificar a label Local Organograma

E verificar a label Cargo
  resource_cnsMatrizAcesso.Verificar a label Cargo

E verificar a label Turno
  resource_cnsMatrizAcesso.Verificar a label Turno

E verificar a label Escala
  resource_cnsMatrizAcesso.Verificar a label Escala

E verificar a label Grupo Feriados
  resource_cnsMatrizAcesso.Verificar a label Grupo Feriados

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
