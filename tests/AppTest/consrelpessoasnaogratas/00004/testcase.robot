*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consrelpessoasnaogratas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Modelo de Pessoas não Gratas
${APPNAME}     consrelpessoasnaogratas
${OBJETIVO}    Verificar todos os campos na tela Modelo de Pessoas não Gratas.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Modelo de Pessoas não Gratas
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Pessoas Não Gratas", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Modelo de Pessoas não Gratas
  E verificar a label Número Documento
  E verificar a label Nome
  E verificar a label Apelido
  E verificar a label Descrição
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

Ao digitar a descrição: "Pessoas Não Gratas", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Pessoas Não Gratas

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Modelo de Pessoas não Gratas
  resource_consrelpessoasnaogratas.Acessar Tela Modelo de Pessoas não Gratas

E verificar a label Número Documento
  resource_consrelpessoasnaogratas.Verificar a label Número Documento

E verificar a label Nome
  resource_consrelpessoasnaogratas.Verificar a label Nome

E verificar a label Apelido
  resource_consrelpessoasnaogratas.Verificar a label Apelido

E verificar a label Descrição
  resource_consrelpessoasnaogratas.Verificar a label Descrição

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
