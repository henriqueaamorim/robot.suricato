*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsBloqueioCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Crachá Bloqueado (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Crachá Bloqueado (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  Quando visualizar a tela: Crachá Bloqueado (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Crachá Bloqueado (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio

Quando visualizar a tela: Crachá Bloqueado (Consulta)
  resource_cnsBloqueioCracha.Acessar Tela Consulta de Crachá Bloqueado

E clicar no botão: Pesquisar registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Crachá Bloqueado (Filtro)  
    resource_cnsBloqueioCracha.Acessar Tela: Crachá Bloqueado (Filtro)