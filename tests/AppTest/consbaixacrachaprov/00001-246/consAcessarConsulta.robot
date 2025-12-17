*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbaixacrachaprov.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Realização das Baixas de Crachá Provisório (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Realização das Baixas de Crachá Provisório (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Provisório | Baixa Provisório
  Então devo visualizar a tela: Realização das Baixas de Crachá Provisório (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Provisório | Baixa Provisório
  resource_mnu.Clicar No Menu Entrada | Provisório | Baixa Provisório

Então devo visualizar a tela: Realização das Baixas de Crachá Provisório (Consulta)
  resource_consbaixacrachaprov.Acessar Tela: Realização das Baixas de Crachá Provisório (Consulta)