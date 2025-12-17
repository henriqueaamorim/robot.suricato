*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPITermoCompromisso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Termo de Compromisso para Entrega de EPI (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Termo de Compromisso para Entrega de EPI (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | Termo de Compromisso para Entrega de EPI
  Então devo ver a tela: Termo de Compromisso para Entrega de EPI (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | Termo de Compromisso para Entrega de EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Termo de Compromisso para Entrega de EPI

Então devo ver a tela: Termo de Compromisso para Entrega de EPI (Consulta)
  resource_cnsEPITermoCompromisso.Acessar Tela Cadastro de Termo de Compromisso para Entrega de EPI

