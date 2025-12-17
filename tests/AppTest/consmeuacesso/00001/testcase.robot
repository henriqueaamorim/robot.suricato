*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consmeuacesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Mi acceso
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Meu Acesso
  Então devo visualizar a tela: Mi acceso

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Meu Acesso
  resource_mnu.Clicar No Menu Relatórios | Meu Acesso

Então devo visualizar a tela: Mi acceso
  resource_consmeuacesso.Acessar Tela Mi acceso
