*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consRefeitorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Refeitório (Consulta)
${SCREENNAME}  Refeitório
${APPNAME}     consRefeitorio

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Refeitório (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Refeitório
  Quando ver a tela: Refeitório (Consulta)
  Então devo verificar a label Código
  E verificar a label Descrição
  E verificar a label Total
  E verificar a label Em Uso
  E verificar a label VIP
  E verificar se existe o campo Teste na tela




*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Refeitório
  resource_mnu.Clicar No Menu Estrutura | Empresa | Refeitório

Quando ver a tela: Refeitório (Consulta)
  resource_consRefeitorio.Acessar Tela Refeitório

Então devo verificar a label Código
    resource_consRefeitorio.Verificar a label Código

E verificar a label Descrição
    resource_consRefeitorio.Verificar a label Descrição

E verificar a label Total
    resource_consRefeitorio.Verificar a label Total

E verificar a label Em Uso
    resource_consRefeitorio.Verificar a label Em Uso

E verificar a label VIP
    resource_consRefeitorio.Verificar a label VIP

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
