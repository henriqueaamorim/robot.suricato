*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrprogramacoes.robot
Resource        ../../../../resource/app/resource_cnsprogramacoes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Programações
${APPNAME}     cnsprogramacoes
${OBJETIVO}    Verificar todos os campos na tela Consulta de Programações.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Programações
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Programações", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Programações - Filtro
  E preencher o campo Data Inicial "05/05/2022"
  E clicar no botão: OK
  Então devo visualizar a tela: Consulta de Programações
  E verificar a label Empresa
  E verificar a label Tipo de Pessoa
  E verificar a label Matrícula
  E verificar a label Nome
  E verificar a segunda label Empresa
  E verificar a segunda label Tipo de Pessoa
  E verificar a segunda label Matrícula
  E verificar a segunda label Nome
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

E preencher o campo Data Inicial "${DATA}"
  resource_ctrprogramacoes.Preencher o campo Data Inicial "${DATA}"

E clicar no botão: OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Consulta de Programações
  resource_cnsprogramacoes.Acessar Tela Consulta de Programações

E verificar a label Empresa
  resource_cnsprogramacoes.Verificar a label Empresa

E verificar a label Tipo de Pessoa
  resource_cnsprogramacoes.Verificar a label Tipo de Pessoa

E verificar a label Matrícula
  resource_cnsprogramacoes.Verificar a label Matrícula

E verificar a label Nome
  resource_cnsprogramacoes.Verificar a label Nome

E verificar a segunda label Empresa
  resource_cnsprogramacoes.Verificar a segunda label Empresa

E verificar a segunda label Tipo de Pessoa
  resource_cnsprogramacoes.Verificar a segunda label Tipo de Pessoa

E verificar a segunda label Matrícula
  resource_cnsprogramacoes.Verificar a segunda label Matrícula

E verificar a segunda label Nome
  resource_cnsprogramacoes.Verificar a segunda label Nome

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
