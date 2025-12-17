*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelsituacoes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Valores de Entrada do Modelo - Modo Filtro
${APPNAME}     consrelsituacoes
${OBJETIVO}    Verificar todos os campos na tela Valores de Entrada do Modelo - Modo Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Valores de Entrada do Modelo - Modo Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Situações", e clicar em Pesquisar
  Então devo visualizar a tela: Valores de Entrada do Modelo - Modo Filtro
  E verificar a label Pesquisa
  E verificar o campo Código Situação
  E verificar o campo Mostrar Usuario:
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

Ao digitar a descrição: "Situações", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Situações

Então devo visualizar a tela: Valores de Entrada do Modelo - Modo Filtro
  resource_consrelsituacoes.Acessar Tela Valores de Entrada do Modelo - Modo Filtro

E verificar a label Pesquisa
  resource_consrelsituacoes.Verificar a label Pesquisa

E verificar o campo Código Situação
  resource_consrelsituacoes.Verificar o campo Código Situação

E verificar o campo Mostrar Usuario:
  resource_consrelsituacoes.Verificar o campo Mostrar Usuario:

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
