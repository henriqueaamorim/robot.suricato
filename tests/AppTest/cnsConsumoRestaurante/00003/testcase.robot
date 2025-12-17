*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsConsumoRestaurante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatório Refeitório Analítico - Filtro
${APPNAME}     cnsConsumoRestaurante
${OBJETIVO}    Verificar todos os campos na tela Relatório Refeitório Analítico - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório Refeitório Analítico - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Relatório de Consumo de Restaurante - Analítico", e clicar em Pesquisar
  Então devo visualizar a tela: Relatório Refeitório Analítico - Filtro
  E verificar o campo Codins
  E verificar o campo Empresa
  E verificar o campo Tipo
  E verificar o campo Doc/Matrícula
  E verificar o campo Data
  E verificar o campo Tipo Refeição
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

Ao digitar a descrição: "Relatório de Consumo de Restaurante - Analítico", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Relatório de Consumo de Restaurante - Analítico

Então devo visualizar a tela: Relatório Refeitório Analítico - Filtro
  resource_cnsConsumoRestaurante.Acessar Tela Relatório Refeitório Analítico - Filtro

E verificar o campo Codins
  resource_cnsConsumoRestaurante.Verificar o campo Codins

E verificar o campo Empresa
  resource_cnsConsumoRestaurante.Verificar o campo Empresa

E verificar o campo Tipo
  resource_cnsConsumoRestaurante.Verificar o campo Tipo

E verificar o campo Doc/Matrícula
  resource_cnsConsumoRestaurante.Verificar o campo Doc/Matrícula

E verificar o campo Data
  resource_cnsConsumoRestaurante.Verificar o campo Data

E verificar o campo Tipo Refeição
  resource_cnsConsumoRestaurante.Verificar o campo Tipo Refeição

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
