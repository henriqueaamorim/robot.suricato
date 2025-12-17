*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrFavoritosRecentes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***
Testcase: Acessar Tela Meu Suricato
  [Tags]  PRINT  POPULATED  246  249
  [Documentation]   ${OBJETIVO}
  
  Ao fazer o Login no Suricato, então devo visualizar a tela: Meu Suricato


*** Keywords ***
Ao fazer o Login no Suricato, então devo visualizar a tela: Meu Suricato
  resource_ctrFavoritosRecentes.Acessar Tela Meu Suricato
