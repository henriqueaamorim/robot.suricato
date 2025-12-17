*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelcolaboradorporcargo.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Colaboradores por Cargo - Filtro
${APPNAME}     consrelcolaboradorporcargo
${OBJETIVO}    Verificar todos os campos na tela Colaboradores por Cargo - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Colaboradores por Cargo - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaboradores por Cargo", e clicar em Pesquisar
  Então devo visualizar a tela: Colaboradores por Cargo - Filtro
  E verificar a label Pesquisa
  E verificar o campo Empresa
  E verificar o campo Matrícula
  E verificar o campo Situação
  E verificar o campo Alteração
  E verificar o campo Exibir Usuário:
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

Ao digitar a descrição: "Colaboradores por Cargo", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Colaboradores por Cargo

Então devo visualizar a tela: Colaboradores por Cargo - Filtro
  resource_consrelcolaboradorporcargo.Acessar Tela Colaboradores por Cargo - Filtro

E verificar a label Pesquisa
  resource_consrelcolaboradorporcargo.Verificar a label Pesquisa

E verificar o campo Empresa
  resource_consrelcolaboradorporcargo.Verificar o campo Empresa

E verificar o campo Matrícula
  resource_consrelcolaboradorporcargo.Verificar o campo Matrícula

E verificar o campo Situação
  resource_consrelcolaboradorporcargo.Verificar o campo Situação

E verificar o campo Alteração
  resource_consrelcolaboradorporcargo.Verificar o campo Alteração

E verificar o campo Exibir Usuário:
  resource_consrelcolaboradorporcargo.Verificar o campo Exibir Usuário:

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
