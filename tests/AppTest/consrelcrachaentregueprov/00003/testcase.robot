*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelcrachaentregueprov.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Provisório em Aberto - Filtro
${APPNAME}     consrelcrachaentregueprov
${OBJETIVO}    Verificar todos os campos na tela Provisório em Aberto - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Provisório em Aberto - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Relatório - Provisório em Aberto", e clicar em Pesquisar
  Então devo visualizar a tela: Provisório em Aberto - Filtro
  E verificar a label Pesquisa
  E verificar o campo Empresa
  E verificar o campo Tipo de Colaborador
  E verificar o campo Matrícula
  E verificar o campo Colaborador
  E verificar o campo Crachá
  E verificar o campo Data inicial
  E verificar o campo Data final
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

Ao digitar a descrição: "Relatório - Provisório em Aberto", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Relatório - Provisório em Aberto

Então devo visualizar a tela: Provisório em Aberto - Filtro
  resource_consrelcrachaentregueprov.Acessar Tela Provisório em Aberto - Filtro

E verificar a label Pesquisa
  resource_consrelcrachaentregueprov.Verificar a label Pesquisa

E verificar o campo Empresa
  resource_consrelcrachaentregueprov.Verificar o campo Empresa

E verificar o campo Tipo de Colaborador
  resource_consrelcrachaentregueprov.Verificar o campo Tipo de Colaborador

E verificar o campo Matrícula
  resource_consrelcrachaentregueprov.Verificar o campo Matrícula

E verificar o campo Colaborador
  resource_consrelcrachaentregueprov.Verificar o campo Colaborador

E verificar o campo Crachá
  resource_consrelcrachaentregueprov.Verificar o campo Crachá

E verificar o campo Data inicial
  resource_consrelcrachaentregueprov.Verificar o campo Data inicial

E verificar o campo Data final
  resource_consrelcrachaentregueprov.Verificar o campo Data final

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
