*** Settings ***
Resource        ../../../resource/resource_login.robot
Resource        ../../../resource/common/resource_btn.robot
Resource        ../../../resource/common/resource_report.robot
Resource        ../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../resource/app/resource_cnsConsumoRestaurante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Verificar se o erro ainda persiste quando a busca é realizada pelo filtro terceiro junto com codigo de matricula

*** Test Cases ***

Testcase: Acessar Tela Relatório Refeitório Analítico
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Relatório de Consumo de Restaurante - Analítico", e clicar em Pesquisar
  Então Devo ver a tela: Relatório Refeitório Analítico
  E Selecionar o Campo Tipo "Terceiro"
  E Preencher o Campo Doc/Matrícula "890"
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Relatório Refeitório Analítico  
  #Para Realizar o Teste em Oracle tirar o cometário da Keyword abaixo e comentar a Keyword acima
  #Então devo visualizar a tela: Relatório de Consumo de Refeitório
  

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

Então Devo ver a tela: Relatório Refeitório Analítico
  resource_cnsConsumoRestaurante.Acessar Tela Relatório Refeitório Analítico
  
E Selecionar o Campo Tipo "${TIPO}"
  resource_cnsConsumoRestaurante.Selecionar o Campo Tipo ${TIPO}
  
E Preencher o Campo Doc/Matrícula "${MATRICULA}"
  resource_cnsConsumoRestaurante.Preencher o Campo Doc/Matrícula ${MATRICULA}

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Relatório Refeitório Analítico 
  resource_cnsConsumoRestaurante.Acessar Tela Relatório Refeitório Analítico

Então devo visualizar a tela: Relatório de Consumo de Refeitório
  resource_cnsConsumoRestaurante.Acessar Tela Relatório de Consumo de Refeitório
