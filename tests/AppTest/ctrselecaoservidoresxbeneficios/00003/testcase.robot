*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrselecaoservidoresxbeneficios.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta Benefícios por Colaboradores
${APPNAME}     ctrselecaoservidoresxbeneficios
${OBJETIVO}    Verificar todos os campos na tela Consulta Benefícios por Colaboradores.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta Benefícios por Colaboradores
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta Benefícios por Colaboradores", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta Benefícios por Colaboradores
  E verificar a label Período:
  E verificar o campo Inicial
  E verificar o campo Final
  E verificar o campo Benefícios(+)
  E verificar a label Totais
  E verificar a label Qtde Colaboradores Distribuídos neste(s) benefício(s)
  E verificar a label Qtde Colaboradores Baixados neste(s) benefício(s)
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

Ao digitar a descrição: "Consulta Benefícios por Colaboradores", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta Benefícios por Colaboradores

Então devo visualizar a tela: Consulta Benefícios por Colaboradores
  resource_ctrselecaoservidoresxbeneficios.Acessar Tela Consulta Benefícios por Colaboradores

E verificar a label Período:
  resource_ctrselecaoservidoresxbeneficios.Verificar a label Período:

E verificar o campo Inicial
  resource_ctrselecaoservidoresxbeneficios.Verificar o campo Inicial

E verificar o campo Final
  resource_ctrselecaoservidoresxbeneficios.Verificar o campo Final

E verificar o campo Benefícios(+)
  resource_ctrselecaoservidoresxbeneficios.Verificar o campo Benefícios(+)

E verificar a label Totais
  resource_ctrselecaoservidoresxbeneficios.Verificar a label Totais

E verificar a label Qtde Colaboradores Distribuídos neste(s) benefício(s)
  resource_ctrselecaoservidoresxbeneficios.Verificar a label Qtde Colaboradores Distribuídos neste(s) benefício(s)

E verificar a label Qtde Colaboradores Baixados neste(s) benefício(s)
  resource_ctrselecaoservidoresxbeneficios.Verificar a label Qtde Colaboradores Baixados neste(s) benefício(s)

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
