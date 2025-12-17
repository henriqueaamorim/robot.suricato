*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsSituacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Situações
${APPNAME}     cnsSituacoes
${OBJETIVO}    Verificar todos os campos na tela Consulta de Situações

*** Test Cases ***

Testcase: Acessar Tela Consulta de Situações
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Situação Trabalhista
  Então devo ver a tela: Consulta de Situações
  E verificar a label Código da Situação
  E verificar a label Descrição da Situação
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Situação Trabalhista
  resource_mnu.Clicar No Menu Estrutura | Situação Trabalhista

Então devo ver a tela: Consulta de Situações
  resource_cnsSituacoes.Acessar Tela Consulta de Situações

E verificar a label Código da Situação
  resource_cnsSituacoes.Verificar a label Código da Situação

E verificar a label Descrição da Situação
  resource_cnsSituacoes.Verificar a label Descrição da Situação

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
