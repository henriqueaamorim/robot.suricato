*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsColaboradorXMatrizAcesso.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta Colaborador por Matriz de Acesso
${APPNAME}     cnsColaboradorXMatrizAcesso
${OBJETIVO}    Verificar todos os campos na tela Consulta Colaborador por Matriz de Acesso.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta Colaborador por Matriz de Acesso
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaborador x Matriz de Acesso", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta Colaborador por Matriz de Acesso
  E verificar a label Empresa
  E verificar a label Tipo Colaborador
  E verificar a label Matrícula
  E verificar a label Colaborador
  E verificar a label Matriz
  E verificar a label Data
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

Ao digitar a descrição: "Colaborador x Matriz de Acesso", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Colaborador x Matriz de Acesso

Então devo visualizar a tela: Consulta Colaborador por Matriz de Acesso
  resource_cnsColaboradorXMatrizAcesso.Acessar Tela Consulta Colaborador por Matriz de Acesso

E verificar a label Empresa
  resource_cnsColaboradorXMatrizAcesso.Verificar a label Empresa

E verificar a label Tipo Colaborador
  resource_cnsColaboradorXMatrizAcesso.Verificar a label Tipo Colaborador

E verificar a label Matrícula
  resource_cnsColaboradorXMatrizAcesso.Verificar a label Matrícula

E verificar a label Colaborador
  resource_cnsColaboradorXMatrizAcesso.Verificar a label Colaborador

E verificar a label Matriz
  resource_cnsColaboradorXMatrizAcesso.Verificar a label Matriz

E verificar a label Data
  resource_cnsColaboradorXMatrizAcesso.Verificar a label Data

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
