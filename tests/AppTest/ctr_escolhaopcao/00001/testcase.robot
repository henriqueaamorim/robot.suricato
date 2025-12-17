*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_idiomaaplic.robot
Resource        ../../../../resource/app/resource_ctr_escolhaopcao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Opções Aplicação
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Idioma
  Ao visualizar a tela: Idioma
  Então devo selecionar uma aplicação
  E clicar em OK
  Então devo visualizar a tela: Opções Aplicação

*** Keywords ***
Dado que eu acesse o menu: Configurações | Idioma
  resource_mnu.Clicar No Menu Configurações | Idioma

Ao visualizar a tela: Idioma
  resource_ctr_idiomaaplic.Acessar Tela Idioma

Então devo selecionar uma aplicação
  resource_ctr_idiomaaplic.Selecionar Aplicação

E clicar em OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Opções Aplicação
  resource_ctr_escolhaopcao.Acessar Tela Opções Aplicação
