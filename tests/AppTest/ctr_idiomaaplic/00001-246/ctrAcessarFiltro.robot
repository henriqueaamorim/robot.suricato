*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_idiomaaplic.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Idioma

*** Test Cases ***
Testcase: Acessar Tela: Idioma
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Aplicação | Idioma
  Então devo visualizar a tela: Idioma

*** Keywords ***
Dado que eu acesse o menu: Configuração | Aplicação | Idioma
  resource_mnu.Clicar No Menu Configurações | Idioma

Então devo visualizar a tela: Idioma
  resource_ctr_idiomaaplic.Acessar Tela Idioma
