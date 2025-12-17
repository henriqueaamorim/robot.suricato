*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrselecaosaldobeneficios.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta Saldo de Benefícios nos Coletores
${APPNAME}     ctrselecaosaldobeneficios
${OBJETIVO}    Verificar todos os campos na tela Consulta Saldo de Benefícios nos Coletores.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta Saldo de Benefícios nos Coletores
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Eu devo digitar a descrição: "Consulta Saldo de Benefícios nos Coletores", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta Saldo de Benefícios nos Coletores
  E verificar o campo Data Inicial *
  E verificar o campo Data Final *
  E verificar o campo Codin(+)
  E verificar o campo Benefícios(+)
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

Eu devo digitar a descrição: "Consulta Saldo de Benefícios nos Coletores", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta Saldo de Benefícios nos Coletores

Então devo visualizar a tela: Consulta Saldo de Benefícios nos Coletores
  resource_ctrselecaosaldobeneficios.Acessar Tela Consulta Saldo de Benefícios nos Coletores

E verificar o campo Data Inicial *
  resource_ctrselecaosaldobeneficios.Verificar o campo Data Inicial *

E verificar o campo Data Final *
  resource_ctrselecaosaldobeneficios.Verificar o campo Data Final *

E verificar o campo Codin(+)
  resource_ctrselecaosaldobeneficios.Verificar o campo Codin(+)

E verificar o campo Benefícios(+)
  resource_ctrselecaosaldobeneficios.Verificar o campo Benefícios(+)

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
