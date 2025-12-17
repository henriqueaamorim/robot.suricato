*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelfichacomplementarservidor.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Ficha Complementar Colaborador - Filtro
${APPNAME}     consrelfichacomplementarservidor
${OBJETIVO}    Verificar todos os campos na tela Ficha Complementar Colaborador - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Ficha Complementar Colaborador - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Ficha Complementar Colaborador", e clicar em Pesquisar
  Então devo visualizar a tela: Ficha Complementar Colaborador - Filtro
  E verificar a label Pesquisa
  E verificar o campo Código da Empresa
  E verificar o campo Tipo de Colaborador
  E verificar o campo Matrícula
  E verificar o campo Nome
  E verificar o campo Exibir Usuário:
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

Ao digitar a descrição: "Ficha Complementar Colaborador", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Ficha Complementar Colaborador

Então devo visualizar a tela: Ficha Complementar Colaborador - Filtro
  resource_consrelfichacomplementarservidor.Acessar Tela Ficha Complementar Colaborador - Filtro

E verificar a label Pesquisa
  resource_consrelfichacomplementarservidor.Verificar a label Pesquisa

E verificar o campo Código da Empresa
  resource_consrelfichacomplementarservidor.Verificar o campo Código da Empresa

E verificar o campo Tipo de Colaborador
  resource_consrelfichacomplementarservidor.Verificar o campo Tipo de Colaborador

E verificar o campo Matrícula
  resource_consrelfichacomplementarservidor.Verificar o campo Matrícula

E verificar o campo Nome
  resource_consrelfichacomplementarservidor.Verificar o campo Nome

E verificar o campo Exibir Usuário:
  resource_consrelfichacomplementarservidor.Verificar o campo Exibir Usuário:

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
