*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCentrodeCusto.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos as labels na tela: Centro de Custo (Consulta)
${SCREENNAME}  Centro de Custo
${APPNAME}     cnsCentrodeCusto


*** Test Cases ***
Testcase: Verificar todos as labels na tela: Centro de Custo (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Centro de Custo
  Quando visualizar a tela: Centro de Custo (Consulta)
  Então devo verificar a label Chave Externa
  E verificar a label Código
  E verificar a label Código Importação
  E verificar a label Empresa
  E verificar a label Descrição
  E verificar a label Data da Criação
  E verificar a label Data de Extinção
  E verificar se existe o campo Teste na tela
  
*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Centro de Custo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Centro de Custo

Quando visualizar a tela: Centro de Custo (Consulta)
  resource_cnsCentrodeCusto.Acessar Tela Consulta de Centro de Custo

Então devo verificar a label Chave Externa
  resource_cnsCentrodeCusto.Verificar a label Chave Externa

E verificar a label Código
  resource_cnsCentrodeCusto.Verificar a label Código

E verificar a label Código Importação
  resource_cnsCentrodeCusto.Verificar a label Código Importação

E verificar a label Empresa
  resource_cnsCentrodeCusto.Verificar a label Empresa

E verificar a label Descrição
  resource_cnsCentrodeCusto.Verificar a label Descrição

E verificar a label Data da Criação
  resource_cnsCentrodeCusto.Verificar a label Data da Criação

E verificar a label Data de Extinção  
  resource_cnsCentrodeCusto.Verificar a label Data de Extinção

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"


