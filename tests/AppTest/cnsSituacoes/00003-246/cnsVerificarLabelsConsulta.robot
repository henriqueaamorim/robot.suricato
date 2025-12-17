*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsSituacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Situações
${APPNAME}     cnsSituacoes
${OBJETIVO}    Verificar todas as labesl na Tela: Situação (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labesl na Tela: Situação (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Situação Trabalhista
  Quando ver a tela: Situação (Consulta)
  Então verificar a label Chave Externa
  E verificar a label Código da Situação
  E verificar a label Descrição da Situação
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Situação Trabalhista
  resource_mnu.Clicar No Menu Estrutura | Situação Trabalhista

Quando ver a tela: Situação (Consulta)
  resource_cnsSituacoes.Acessar Tela Consulta de Situações

Então verificar a label Chave Externa
  resource_cnsSituacoes.Verificar a label Chave Externa

E verificar a label Código da Situação
  resource_cnsSituacoes.Verificar a label Código da Situação  

E verificar a label Descrição da Situação
  resource_cnsSituacoes.Verificar a label Descrição da Situação

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
