*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_idiomaaplic.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Idioma
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Idioma
  Então devo visualizar a tela: Idioma

*** Keywords ***
Dado que eu acesse o menu: Configurações | Idioma
  resource_mnu.Clicar No Menu Configurações | Idioma

Então devo visualizar a tela: Idioma
  resource_ctr_idiomaaplic.Acessar Tela Idioma
