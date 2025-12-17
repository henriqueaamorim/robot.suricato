*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmTipoAcesso.robot
Resource        ../../../../resource/app/resource_cnsTipoAcessocad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Tipo de Acesso (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Tipo de Acesso (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Tipo de Acesso
  Quando eu visualizar a tela: Tipo de Acesso (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Tipo de Acesso (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Tipo de Acesso
  resource_mnu.Clicar No Menu Dispositivo | Tipo de Acesso

Quando eu visualizar a tela: Tipo de Acesso (Consulta)
  resource_cnsTipoAcessocad.Acessar Tela Consulta de Tipo de Acesso

E clicar no botão: Pesquisar Registro
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Tipo de Acesso (Filtro)
  resource_cnsTipoAcessocad.Acessar Tela Consulta de Tipo de Acesso
