*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelsituacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher os campos da tela Valores de Entrada do Modelo - Modo Filtro.

*** Test Cases ***

Testcase: Preencher os campos da tela Valores de Entrada do Modelo - Modo Filtro
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Situações", e clicar em Pesquisar
  Então devo visualizar a tela: Valores de Entrada do Modelo - Modo Filtro
  E selecionar uma opção no campo Código Situação "Demitido"
  E selecionar uma opção no campo Mostrar Usuario "Não"

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

E selecionar uma opção no campo Código Situação "${CÓDIGO_SITUAÇÃO}"
  resource_consrelsituacoes.Selecionar uma opção no campo Código Situação "${CÓDIGO_SITUAÇÃO}"

E selecionar uma opção no campo Mostrar Usuario "${MOSTRAR_USUARIO}"
  resource_consrelsituacoes.Selecionar uma opção no campo Mostrar Usuario "${MOSTRAR_USUARIO}"
