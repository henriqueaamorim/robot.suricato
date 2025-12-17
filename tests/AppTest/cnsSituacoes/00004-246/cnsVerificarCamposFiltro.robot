*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsSituacoes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Situações (Filtro)
${APPNAME}     cnsSituacoes
${OBJETIVO}    Verificar todos os campos na Tela: Situação (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Situação (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Situação Trabalhista
  Quando ver a tela: Consulta de Situações
  E clicar no botão Pesquisar Registros
  Então devo ver a tela: Consulta de Situações (Filtro)
  E verificar o campo Descrição da Situação
  E verificar o campo Chave Externa
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Situação Trabalhista
  resource_mnu.Clicar No Menu Estrutura | Situação Trabalhista

Quando ver a tela: Consulta de Situações
  resource_cnsSituacoes.Acessar Tela Consulta de Situações

E clicar no botão Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Consulta de Situações (Filtro)
  resource_cnsSituacoes.Acessar Tela Consulta de Situações (Filtro)

E verificar o campo Descrição da Situação
  resource_cnsSituacoes.Verificar o campo Descrição da Situação

E verificar o campo Chave Externa
  resource_cnsSituacoes.Verificar o campo Chave Externa

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
