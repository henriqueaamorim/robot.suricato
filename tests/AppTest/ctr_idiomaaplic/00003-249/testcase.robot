*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_idiomaaplic.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Idioma.

*** Test Cases ***

Testcase: Preencher todos os campos na tela Idioma
  [Tags]  REGISTER  POLYVALENT  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Idioma
  Então devo visualizar a tela: Idioma
  E selecionar uma opção no campo Aplicação "Aba Multas ( abamultas )"

*** Keywords ***
Dado que eu acesse o menu: Configurações | Idioma
  resource_mnu.Clicar No Menu Configurações | Idioma

Então devo visualizar a tela: Idioma
  resource_ctr_idiomaaplic.Acessar Tela Idioma

E selecionar uma opção no campo Aplicação "${APLICAÇÃO}"
  resource_ctr_idiomaaplic.Selecionar uma opção no campo Aplicação "${APLICAÇÃO}"
