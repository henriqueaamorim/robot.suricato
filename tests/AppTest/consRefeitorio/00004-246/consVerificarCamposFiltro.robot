*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consRefeitorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Refeitório (Filtro)
${SCREENNAME}  Refeitório
${APPNAME}     consRefeitorio

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Refeitório (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Refeitório
  Quando ver a tela: Refeitório (Consulta)
  E clicar no botão Pesquisar
  Então devo ver a tela: Refeitório (Filtro)
  E verificar o campo Código
  E verificar o campo Descrição	
  E verificar se existe o campo Teste na tela




*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Refeitório
  resource_mnu.Clicar No Menu Estrutura | Empresa | Refeitório

Quando ver a tela: Refeitório (Consulta)
  resource_consRefeitorio.Acessar Tela Refeitório

E clicar no botão Pesquisar
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Refeitório (Filtro)  
    resource_consRefeitorio.Acessar Tela Refeitório (Filtro)  

E verificar o campo Código
    resource_consRefeitorio.Verificar o campo Código

E verificar o campo Descrição	    
    resource_consRefeitorio.Verificar o campo Descrição

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
