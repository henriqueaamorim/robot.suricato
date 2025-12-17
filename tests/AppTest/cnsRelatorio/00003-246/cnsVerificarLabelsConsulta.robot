*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Impressão de Relatório (Consulta)
${SCREENNAME}  Impressão de Relatório 
${APPNAME}     cnsRelatorio


*** Test Cases ***
Testcase: Verificar todas as labels na tela: Impressão de Relatório (Consulta)
  [Tags]  VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatório | Consulta Impressa
  Quando visualizar a tela: Impressão de Relatório (Consulta)
  Então devo verificar a label: Nome
  E verificar a label: Descrição
  E verificar a label: Categoria
  E verificar a label: Ver
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Relatório | Consulta Impressa
  resource_mnu.Clicar No Menu Relatório | Consulta Impressa

Quando visualizar a tela: Impressão de Relatório (Consulta)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório
  
Então devo verificar a label: Nome
  resource_cnsRelatorio.Verificar a label: Nome

E verificar a label: Descrição
  resource_cnsRelatorio.Verificar a label: Descrição

E verificar a label: Categoria
  resource_cnsRelatorio.Verificar a label: Categoria

E verificar a label: Ver
  resource_cnsRelatorio.Verificar a label Ver

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
