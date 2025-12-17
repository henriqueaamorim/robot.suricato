*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consrelcargoservidor.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Cargo Colaborador
${APPNAME}     consrelcargoservidor
${OBJETIVO}    Verificar todos os campos na tela Cargo Colaborador.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Cargo Colaborador
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Cargo Colaborador", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Cargo Colaborador
  E verificar a label Tipo de Colaborador
  E verificar a label Matrícula
  E verificar a label Nome
  E verificar a label Admissão
  E verificar a label Situação
  E verificar a label Cargo
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

Ao digitar a descrição: "Cargo Colaborador", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Cargo Colaborador

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (inferior)

Então devo visualizar a tela: Cargo Colaborador
  resource_consrelcargoservidor.Acessar Tela Cargo Colaborador

E verificar a label Tipo de Colaborador
  resource_consrelcargoservidor.Verificar a label Tipo de Colaborador

E verificar a label Matrícula
  resource_consrelcargoservidor.Verificar a label Matrícula

E verificar a label Nome
  resource_consrelcargoservidor.Verificar a label Nome

E verificar a label Admissão
  resource_consrelcargoservidor.Verificar a label Admissão

E verificar a label Situação
  resource_consrelcargoservidor.Verificar a label Situação

E verificar a label Cargo
  resource_consrelcargoservidor.Verificar a label Cargo

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
