*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consrelcargos.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Cargos
${APPNAME}     consrelcargos
${OBJETIVO}    Verificar todos os campos na tela Cargos.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Cargos
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Cargos", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Cargos
  E verificar a label Código do Cargo
  E verificar a label Descrição
  E verificar a label Título Reduzido
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

Ao digitar a descrição: "Cargos", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Cargos

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (inferior)

Então devo visualizar a tela: Cargos
  resource_consrelcargos.Acessar Tela Cargos

E verificar a label Código do Cargo
  resource_consrelcargos.Verificar a label Código do Cargo

E verificar a label Descrição
  resource_consrelcargos.Verificar a label Descrição

E verificar a label Título Reduzido
  resource_consrelcargos.Verificar a label Título Reduzido

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
