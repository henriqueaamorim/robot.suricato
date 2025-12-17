 *** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsConsumoRestauranteResumo.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatório Refeitório Resumo
${APPNAME}     cnsConsumoRestauranteResumo
${OBJETIVO}    Verificar todos os campos na tela Relatório Refeitório Resumo.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório Refeitório Resumo
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Relatório de Consumo de Restaurante - Resumo", e clicar em Pesquisar
  Então devo visualizar a tela: Relatório Refeitório Resumo
  E verificar a label Consumo de Refeitório - Resumo
  E verificar a label Desjejum
  E verificar a label R$ Desjejum
  E verificar a label Almoço
  E verificar a label R$ Almoço
  E verificar a label Lanche
  E verificar a label R$ Lanche
  E verificar a label Jantar
  E verificar a label R$ Jantar
  E verificar a label Ceia
  E verificar a label R$ Ceia
  E verificar a label R$ [total]
  E verificar a label Total Geral
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

Ao digitar a descrição: "Relatório de Consumo de Restaurante - Resumo", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Relatório de Consumo de Restaurante - Resumo

Então devo visualizar a tela: Relatório Refeitório Resumo
  resource_cnsConsumoRestauranteResumo.Acessar Tela Relatório Refeitório Resumo

E verificar a label Consumo de Refeitório - Resumo
  resource_cnsConsumoRestauranteResumo.Verificar a label Consumo de Refeitório - Resumo

E verificar a label Desjejum
  resource_cnsConsumoRestauranteResumo.Verificar a label Desjejum

E verificar a label R$ Desjejum
  resource_cnsConsumoRestauranteResumo.Verificar a label R$ Desjejum

E verificar a label Almoço
  resource_cnsConsumoRestauranteResumo.Verificar a label Almoço

E verificar a label R$ Almoço
  resource_cnsConsumoRestauranteResumo.Verificar a label R$ Almoço

E verificar a label Lanche
  resource_cnsConsumoRestauranteResumo.Verificar a label Lanche

E verificar a label R$ Lanche
  resource_cnsConsumoRestauranteResumo.Verificar a label R$ Lanche

E verificar a label Jantar
  resource_cnsConsumoRestauranteResumo.Verificar a label Jantar

E verificar a label R$ Jantar
  resource_cnsConsumoRestauranteResumo.Verificar a label R$ Jantar

E verificar a label Ceia
  resource_cnsConsumoRestauranteResumo.Verificar a label Ceia

E verificar a label R$ Ceia
  resource_cnsConsumoRestauranteResumo.Verificar a label R$ Ceia

E verificar a label R$ [total]
  resource_cnsConsumoRestauranteResumo.Verificar a label R$ [total]

E verificar a label Total Geral
  resource_cnsConsumoRestauranteResumo.Verificar a label Total Geral

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
