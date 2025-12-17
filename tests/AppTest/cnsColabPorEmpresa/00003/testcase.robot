*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsColabPorEmpresa.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Colaboradores Por Empresa - Filtro
${APPNAME}     cnsColabPorEmpresa
${OBJETIVO}    Verificar todos os campos na tela Colaboradores Por Empresa - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Colaboradores Por Empresa - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaboradores Por Empresa", e clicar em Pesquisar
  Então devo visualizar a tela: Colaboradores Por Empresa - Filtro
  E verificar a label Pesquisa
  E verificar o campo Empresa
  E verificar o campo Tipo
  E verificar o campo Matrícula
  E verificar o campo Nome do Colaborador
  E verificar o campo Crachá
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

Ao digitar a descrição: "Colaboradores Por Empresa", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Colaboradores Por Empresa

Então devo visualizar a tela: Colaboradores Por Empresa - Filtro
  resource_cnsColabPorEmpresa.Acessar Tela Colaboradores Por Empresa - Filtro

E verificar a label Pesquisa
  resource_cnsColabPorEmpresa.Verificar a label Pesquisa

E verificar o campo Empresa
  resource_cnsColabPorEmpresa.Verificar o campo Empresa

E verificar o campo Tipo
  resource_cnsColabPorEmpresa.Verificar o campo Tipo

E verificar o campo Matrícula
  resource_cnsColabPorEmpresa.Verificar o campo Matrícula

E verificar o campo Nome do Colaborador
  resource_cnsColabPorEmpresa.Verificar o campo Nome do Colaborador

E verificar o campo Crachá
  resource_cnsColabPorEmpresa.Verificar o campo Crachá

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
