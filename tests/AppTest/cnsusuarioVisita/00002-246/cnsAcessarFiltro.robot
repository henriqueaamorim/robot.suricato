*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsusuarioVisita.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Aprovador de Solitação de Visita (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Aprovador de Solitação de Visita (Filtro)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Aprovador de Solitação de Visita
  Quando visualizar a tela: Aprovador de Solitação de Visita (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Aprovador de Solitação de Visita (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Aprovador de Solitação de Visita
  resource_mnu.Clicar No Menu Configurações | Usuários | Usuário Aprovador de Solitação de Visita

Quando visualizar a tela: Aprovador de Solitação de Visita (Consulta)
  resource_cnsusuarioVisita.Acessar Tela: Aprovador de Solitação de Visita (Consulta)

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Aprovador de Solitação de Visita (Filtro)  
  resource_cnsusuarioVisita.Acessar Tela: Aprovador de Solitação de Visita (Filtro)