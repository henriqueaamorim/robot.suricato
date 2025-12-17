*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCentrodeCusto.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos as labels na tela: Centro de Custo (Filtro)
${SCREENNAME}  Centro de Custo
${APPNAME}     cnsCentrodeCusto
*** Test Cases ***

Testcase: Verificar todos os campos na tela: Centro de Custo (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Centro de Custo
  Quando visualizar a tela: Centro de Custo (Consulta)
  E clicar no botão Pesquisar Registro
  Então devo visualizar a tela: Centro de Custo (Filtro)
  E verifica o campo Empresa
  E verifica o campo Descrição
  E verifica o campo Data da Criação	
  E verifica o campo Chave Externa
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Centro de Custo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Centro de Custo

Quando visualizar a tela: Centro de Custo (Consulta)
  resource_cnsCentrodeCusto.Acessar Tela Consulta de Centro de Custo

E clicar no botão Pesquisar Registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Centro de Custo (Filtro)
    resource_cnsCentrodeCusto.Acessar Tela Consulta de Centro de Custo (Filtro)

E verifica o campo Empresa    
    resource_cnsCentrodeCusto.Verificar o campo Empresa

E verifica o campo Descrição
    resource_cnsCentrodeCusto.Verificar o campo Descrição

E verifica o campo Data da Criação	
    resource_cnsCentrodeCusto.Verificar o campo Data da Criação

E verifica o campo Chave Externa	    
    resource_cnsCentrodeCusto.Verificar o campo Chave Externa

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"    