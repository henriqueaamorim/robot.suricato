*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAmbiente.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela Ambiente (Consulta)

*** Test Cases ***
Testcase: Acessar Tela Ambiente (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  Então devo ver a tela: Ambiente (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  resource_mnu.Clicar No Menu Estrutura | Empresa | Ambiente

Então devo ver a tela: Ambiente (Consulta)
  resource_cnsAmbiente.Acessar Tela Consulta de Ambiente
