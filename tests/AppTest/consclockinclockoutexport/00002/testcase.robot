*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consclockinclockoutexport.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  ClockIn ClockOut - Exportação CSV
${APPNAME}     consclockinclockoutexport
${OBJETIVO}    Verificar todos os campos na tela ClockIn ClockOut - Exportação CSV.

*** Test Cases ***

Testcase: Verificar todos os campos na tela ClockIn ClockOut - Exportação CSV
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Exportação ClockIn ClockOut", e clicar em Pesquisar
  Então devo visualizar a tela: ClockIn ClockOut - Exportação CSV
  E verificar a label Pesquisa
  E verificar o campo Empresa
  #E verificar o campo Empresa Terceira
  E verificar o campo Planta
  E verificar o campo Tipo de Pessoa
  E verificar o campo Nome
  E verificar o campo Matrícula
  E verificar o campo CPF
  E verificar o campo Data
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

Ao digitar a descrição: "Exportação ClockIn ClockOut", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Exportação ClockIn ClockOut

Então devo visualizar a tela: ClockIn ClockOut - Exportação CSV
  resource_consclockinclockoutexport.Acessar Tela ClockIn ClockOut - Exportação CSV

E verificar a label Pesquisa
  resource_consclockinclockoutexport.Verificar a label Pesquisa

E verificar o campo Empresa
  resource_consclockinclockoutexport.Verificar o campo Empresa

E verificar o campo Empresa Terceira
  resource_consclockinclockoutexport.Verificar o campo Empresa Terceira

E verificar o campo Planta
  resource_consclockinclockoutexport.Verificar o campo Planta

E verificar o campo Tipo de Pessoa
  resource_consclockinclockoutexport.Verificar o campo Tipo de Pessoa

E verificar o campo Nome
  resource_consclockinclockoutexport.Verificar o campo Nome

E verificar o campo Matrícula
  resource_consclockinclockoutexport.Verificar o campo Matrícula

E verificar o campo CPF
  resource_consclockinclockoutexport.Verificar o campo CPF

E verificar o campo Data
  resource_consclockinclockoutexport.Verificar o campo Data

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
