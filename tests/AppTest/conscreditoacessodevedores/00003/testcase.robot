*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_conscreditoacessodevedores.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Devedores de Créditos de Acesso (Filtro)
${APPNAME}     conscreditoacessodevedores
${OBJETIVO}    Verificar todos os campos na tela Consulta de Devedores de Créditos de Acesso (Filtro).

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Devedores de Créditos de Acesso (Filtro)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Devedores de Créditos de Acesso - Consulta", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Devedores de Créditos de Acesso (Filtro)
  E verificar a label Pesquisa
  E verificar o campo Pesquisar Por
  E verificar o campo Data da Marcação
  E verificar o campo Descrição (Motivo)
  E verificar o campo Empresa
  E verificar o campo Tipo do Colaborador
  E verificar o campo Matrícula
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

Ao digitar a descrição: "Devedores de Créditos de Acesso - Consulta", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Devedores de Créditos de Acesso - Consulta

Então devo visualizar a tela: Consulta de Devedores de Créditos de Acesso (Filtro)
  resource_conscreditoacessodevedores.Acessar Tela Consulta de Devedores de Créditos de Acesso (Filtro)

E verificar a label Pesquisa
  resource_conscreditoacessodevedores.Verificar a label Pesquisa

E verificar o campo Pesquisar Por
  resource_conscreditoacessodevedores.Verificar o campo Pesquisar Por

E verificar o campo Data da Marcação
  resource_conscreditoacessodevedores.Verificar o campo Data da Marcação

E verificar o campo Descrição (Motivo)
  resource_conscreditoacessodevedores.Verificar o campo Descrição (Motivo)

E verificar o campo Empresa
  resource_conscreditoacessodevedores.Verificar o campo Empresa

E verificar o campo Tipo do Colaborador
  resource_conscreditoacessodevedores.Verificar o campo Tipo do Colaborador

E verificar o campo Matrícula
  resource_conscreditoacessodevedores.Verificar o campo Matrícula

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
