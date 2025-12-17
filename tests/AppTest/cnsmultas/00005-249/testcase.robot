*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmultas.robot
Resource        ../../../../resource/app/resource_cnsmultas.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Multas
${APPNAME}     cnsmultas
${OBJETIVO}    Verificar todos os campos na tela Consulta de Multas.

*** Test Cases ***
Testcase: Verificar todos os campos na tela Consulta de Multas
  [Tags]  VERIFY  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Infrações | Multas
  Quando eu visualizar a tela: Multas (Inclusão)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Multas
  E verificar a label Código da Infração
  E verificar a label Descrição da Infração
  E verificar a label Enquadramento CTB
  E verificar a label Gravidade
  E verificar a label Responsabilidade 
  E verificar a label Competência
  E verificar a label Pontos
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Infrações | Multas
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Multas

Quando eu visualizar a tela: Multas (Inclusão)
  resource_frmmultas.Acessar Tela Multas (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Multas
  resource_cnsmultas.Acessar Tela Consulta de Multas

E verificar a label Código da Infração
  resource_cnsmultas.Verificar a label Código da Infração

E verificar a label Descrição da Infração
  resource_cnsmultas.Verificar a label Descrição da Infração

E verificar a label Enquadramento CTB
  resource_cnsmultas.Verificar a label Enquadramento CTB

E verificar a label Gravidade
  resource_cnsmultas.Verificar a label Gravidade

E verificar a label Responsabilidade 
  resource_cnsmultas.Verificar a label Responsabilidade 

E verificar a label Competência
  resource_cnsmultas.Verificar a label Competência

E verificar a label Pontos
  resource_cnsmultas.Verificar a label Pontos

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
