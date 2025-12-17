*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAmbiente.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Ambiente (Consulta)
${SCREENNAME}  Ambiente
${APPNAME}     cnsAmbiente

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Ambiente (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  Quando ver a tela: Ambiente (Consulta)
  Então devo verificar a label: Código
  Então devo verificar a label: Ambiente  
  Então devo verificar a label: Planta
  Então devo verificar a label: Código Ambiente Superior
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  resource_mnu.Clicar No Menu Estrutura | Empresa | Ambiente

Quando ver a tela: Ambiente (Consulta)
  resource_cnsAmbiente.Acessar Tela Consulta de Ambiente

Então devo verificar a label: Código
    resource_cnsAmbiente.Verificar a label Código

Então devo verificar a label: Ambiente  
    resource_cnsAmbiente.Verificar a label Ambiente

Então devo verificar a label: Planta
    resource_cnsAmbiente.Verificar a label Planta

Então devo verificar a label: Código Ambiente Superior
    resource_cnsAmbiente.Verificar a label Código Ambiente Superior

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
    
