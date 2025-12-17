*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Impressão de Relatório (Filtro)
${SCREENNAME}  Impressão de Relatório 
${APPNAME}     cnsRelatorio


*** Test Cases ***
Testcase: Acessar Tela Impressão de Relatório (Filtro)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando visualizar a tela: Impressão de Relatório (Consulta)
  E clicar no botão: Pesquisar Registros 
  Então devo visualizar a tela: Impressão de Relatório (Filtro)
  E verificar o campo: Descrição	
  E verificar o campo: Categoria
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
   resource_mnu.Clicar No Menu Relatório | Consulta Impressa

Quando visualizar a tela: Impressão de Relatório (Consulta)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

E verificar o campo: Descrição	
  resource_cnsRelatorio.Verificar o campo Descrição

E verificar o campo: Categoria
  resource_cnsRelatorio.Verificar o campo Categoria

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"