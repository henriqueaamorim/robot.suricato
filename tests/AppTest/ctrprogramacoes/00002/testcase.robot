*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrprogramacoes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Programações - Filtro
${APPNAME}     ctrprogramacoes
${OBJETIVO}    Verificar todos os campos na tela Consulta de Programações - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Programações - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Programações", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Programações - Filtro
  E verificar o campo Empresa
  E verificar o campo Tipo de Empregado
  E verificar o campo Matrícula
  E verificar o campo Data Inicial *
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

Ao digitar a descrição: "Consulta de Programações", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Programações

Então devo visualizar a tela: Consulta de Programações - Filtro
  resource_ctrprogramacoes.Acessar Tela Consulta de Programações - Filtro

E verificar o campo Empresa
  resource_ctrprogramacoes.Verificar o campo Empresa

E verificar o campo Tipo de Empregado
  resource_ctrprogramacoes.Verificar o campo Tipo de Empregado

E verificar o campo Matrícula
  resource_ctrprogramacoes.Verificar o campo Matrícula

E verificar o campo Data Inicial *
  resource_ctrprogramacoes.Verificar o campo Data Inicial *

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
