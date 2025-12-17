*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsConsumoRestaurante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Consultar nova coluna implementada na consulta de acessos

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
  E Preecnher o campo Data Inicio "20/07/2022"
  E Preecnher o campo Data Fim "20/07/2022"
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Relatório Refeitório Analítico
  #Para realizar o teste no ambiente Oracle tirar o comentario da keyword abaixo e comentar a keyword acima
  # Então devo visualizar a tela: Tela Relatório de Consumo de Refeitório

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
  
E Preecnher o campo Data Inicio "${DIA}/${MES}/${ANO}"
  resource_cnsConsumoRestaurante.Setar Campo Data Inicio ${DIA}/${MES}/${ANO}
  
E Preecnher o campo Data Fim "${DIA}/${MES}/${ANO}"
  resource_cnsConsumoRestaurante.Setar Campo Data Fim ${DIA}/${MES}/${ANO}

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Relatório Refeitório Analítico
  resource_cnsConsumoRestaurante.Acessar Tela Relatório Refeitório Analítico

Então devo visualizar a tela: Tela Relatório de Consumo de Refeitório
  resource_cnsConsumoRestaurante.Acessar Tela Relatório de Consumo de Refeitório