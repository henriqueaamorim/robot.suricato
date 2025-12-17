*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsbeneficiosretirada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Benefícios Consumidos - Filtro
${APPNAME}     cnsbeneficiosretirada
${OBJETIVO}    Verificar todos os campos na tela Consulta de Benefícios Consumidos - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Benefícios Consumidos - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  E digitar a descrição: "Consulta de Beneficios Retirada", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Benefícios Consumidos - Filtro
  E verificar a label Pesquisa
  E verificar o campo Colaborador
  E verificar o campo Dt. Ret.
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

E digitar a descrição: "Consulta de Beneficios Retirada", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Beneficios Retirada

Então devo visualizar a tela: Consulta de Benefícios Consumidos - Filtro
  resource_cnsbeneficiosretirada.Acessar Tela Consulta de Benefícios Consumidos - Filtro

E verificar a label Pesquisa
  resource_cnsbeneficiosretirada.Verificar a label Pesquisa

E verificar o campo Colaborador
  resource_cnsbeneficiosretirada.Verificar o campo Colaborador

E verificar o campo Dt. Ret.
  resource_cnsbeneficiosretirada.Verificar o campo Dt. Ret.

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
