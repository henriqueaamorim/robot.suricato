*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consferiado.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Feriado
${APPNAME}     consferiado
${OBJETIVO}    Verificar todas as labels na tela: Feriado (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Feriado (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Feriado
  Quando ver a tela: Feriado (Consulta)
  Então verificar a label External Key
  E verificar a label Código
  E verificar a label Descrição
  E verificar a label Feriado Nacional
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Feriado
  resource_mnu.Clicar No Menu Estrutura | Feriado

Quando ver a tela: Feriado (Consulta)
  resource_consferiado.Acessar Tela Consulta de Feriados

Então verificar a label External Key
  resource_consferiado.Verificar a label External Key

E verificar a label Código
  resource_consferiado.Verificar a label Código

E verificar a label Descrição
  resource_consferiado.Verificar a label Descrição

E verificar a label Feriado Nacional
  resource_consferiado.Verificar a label Feriado Nacional 

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
