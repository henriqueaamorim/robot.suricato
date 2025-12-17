*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmusuario.robot
Resource        ../../../../resource/app/resource_cnsusuario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Usuário (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Usuário (Filtro)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Usuário
  Quando visualizar a tela: Acessar Tela: Usuário (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Usuário (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Usuário
  resource_mnu.Clicar No Menu Configurações | Usuários | Usuário

Quando visualizar a tela: Acessar Tela: Usuário (Consulta)
  resource_cnsusuario.Acessar Tela: Usuário (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Usuário (Filtro)  
  resource_cnsusuario.Acessar Tela: Usuário (Filtro)

