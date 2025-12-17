*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrListaEmpregadosREPErro.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Lista de Colaboradores Invalidos para Carga no REP
${APPNAME}     ctrListaEmpregadosREPErro
${OBJETIVO}    Verificar todos os campos na tela Lista de Colaboradores Invalidos para Carga no REP.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Lista de Colaboradores Invalidos para Carga no REP
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Lista de Colaboradores Invalidos para Carga no REP - Controle", e clicar em Pesquisar
  Então devo visualizar a tela: Lista de Colaboradores Invalidos para Carga no REP
  E verificar a label Colaborador
  E verificar a label Nome
  E verificar a label Número PIS
  E verificar a label Número Crachá
  E verificar a label Grupo de REP
  E verificar a label Descrição
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

Ao digitar a descrição: "Lista de Colaboradores Invalidos para Carga no REP - Controle", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Lista de Colaboradores Invalidos para Carga no REP - Controle

Então devo visualizar a tela: Lista de Colaboradores Invalidos para Carga no REP
  resource_ctrListaEmpregadosREPErro.Acessar Tela Lista de Colaboradores Invalidos para Carga no REP

E verificar a label Colaborador
  resource_ctrListaEmpregadosREPErro.Verificar a label Colaborador

E verificar a label Nome
  resource_ctrListaEmpregadosREPErro.Verificar a label Nome

E verificar a label Número PIS
  resource_ctrListaEmpregadosREPErro.Verificar a label Número PIS

E verificar a label Número Crachá
  resource_ctrListaEmpregadosREPErro.Verificar a label Número Crachá

E verificar a label Grupo de REP
  resource_ctrListaEmpregadosREPErro.Verificar a label Grupo de REP

E verificar a label Descrição
  resource_ctrListaEmpregadosREPErro.Verificar a label Descrição

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
