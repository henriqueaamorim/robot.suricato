*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cons_Consumo_Restaurante.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatório de Consumo de Refeitório Detalhado - Filtro
${APPNAME}     cons_Consumo_Restaurante
${OBJETIVO}    Verificar todos os campos na tela Relatório de Consumo de Refeitório Detalhado - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório de Consumo de Refeitório Detalhado - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta Consumo Restaurante Detalhado", e clicar em Pesquisar
  Então devo visualizar a tela: Relatório de Consumo de Refeitório Detalhado - Filtro
  E verificar o campo Data
  E verificar o campo Cód. Empresa
  E verificar o campo Planta
  E verificar o campo Nome
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

Ao digitar a descrição: "Consulta Consumo Restaurante Detalhado", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta Consumo Restaurante Detalhado

Então devo visualizar a tela: Relatório de Consumo de Refeitório Detalhado - Filtro
  resource_cons_Consumo_Restaurante.Acessar Tela Relatório de Consumo de Refeitório Detalhado - Filtro

E verificar o campo Data
  resource_cons_Consumo_Restaurante.Verificar o campo Data

E verificar o campo Cód. Empresa
  resource_cons_Consumo_Restaurante.Verificar o campo Cód. Empresa

E verificar o campo Planta
  resource_cons_Consumo_Restaurante.Verificar o campo Planta

E verificar o campo Nome
  resource_cons_Consumo_Restaurante.Verificar o campo Nome

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
