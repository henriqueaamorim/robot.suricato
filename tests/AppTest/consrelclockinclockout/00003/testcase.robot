*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consrelclockinclockout.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  ClockIn ClockOut - Filtro
${APPNAME}     consrelclockinclockout
${OBJETIVO}    Verificar todos os campos na tela ClockIn ClockOut - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela ClockIn ClockOut - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "ClockIn ClockOut", e clicar em Pesquisar
  Então devo visualizar a tela: ClockIn ClockOut - Filtro
  E verificar a label Pesquisa
  E verificar o campo Empresa
  E verificar o campo Tipo de Pessoa
  E verificar o campo Nome
  E verificar o campo Matrícula
  E verificar o campo CPF
  E verificar o campo Crachá
  E verificar o campo Data
  E verificar o campo Planta
  E verificar o campo Codin 
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

Ao digitar a descrição: "ClockIn ClockOut", e clicar em Pesquisar
  resource_report.Navegar no Relatório: ClockIn ClockOut

Então devo visualizar a tela: ClockIn ClockOut - Filtro
  resource_consrelclockinclockout.Acessar Tela ClockIn ClockOut - Filtro

E verificar a label Pesquisa
  resource_consrelclockinclockout.Verificar a label Pesquisa

E verificar o campo Empresa
  resource_consrelclockinclockout.Verificar o campo Empresa

E verificar o campo Tipo de Pessoa
  resource_consrelclockinclockout.Verificar o campo Tipo de Pessoa

E verificar o campo Nome
  resource_consrelclockinclockout.Verificar o campo Nome

E verificar o campo Matrícula
  resource_consrelclockinclockout.Verificar o campo Matrícula

E verificar o campo CPF
  resource_consrelclockinclockout.Verificar o campo CPF

E verificar o campo Crachá
  resource_consrelclockinclockout.Verificar o campo Crachá

E verificar o campo Data
  resource_consrelclockinclockout.Verificar o campo Data

E verificar o campo Planta
  resource_consrelclockinclockout.Verificar o campo Planta

E verificar o campo Codin 
  resource_consrelclockinclockout.Verificar o campo Codin 

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
