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

${SCREENNAME}  Colaboradores por Cargo
${APPNAME}     consrelcolaboradorporcargo
${OBJETIVO}    Verificar todos os campos na tela Colaboradores por Cargo.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Colaboradores por Cargo
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Colaboradores por Cargo", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Colaboradores por Cargo
  E verificar a label Situação
  E verificar a label Matrícula
  E verificar a label Nome do Colaborador
  E verificar a label Cargo
  E verificar a label Alteração
  E verificar a label Exibir Usuário:
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

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Colaboradores por Cargo
  resource_consrelcolaboradorporcargo.Acessar Tela Colaboradores por Cargo

E verificar a label Situação
  resource_consrelcolaboradorporcargo.Verificar a label Situação

E verificar a label Matrícula
  resource_consrelcolaboradorporcargo.Verificar a label Matrícula

E verificar a label Nome do Colaborador
  resource_consrelcolaboradorporcargo.Verificar a label Nome do Colaborador

E verificar a label Cargo
  resource_consrelcolaboradorporcargo.Verificar a label Cargo

E verificar a label Alteração
  resource_consrelcolaboradorporcargo.Verificar a label Alteração

E verificar a label Exibir Usuário:
  resource_consrelcolaboradorporcargo.Verificar a label Exibir Usuário:

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
