*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsDesbloqueioLogin.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Ativação de Usuário (Filtro)


*** Test Cases ***
Testcase: Acessar Tela: Ativação de Usuário (Filtro)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Ativação de Usuário
  Quando visualizar a tela: Ativação de Usuário (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Ativação de Usuário (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Ativação de Usuário
  resource_mnu.Clicar No Menu Configurações | Usuários | Ativação de Usuário

Quando visualizar a tela: Ativação de Usuário (Consulta)
  resource_cnsDesbloqueioLogin.Acessar Tela Ativação de Usuário

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Ativação de Usuário (Filtro)  
  resource_cnsDesbloqueioLogin.Acessar Tela Ativação de Usuário - Filtro
