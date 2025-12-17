*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsBloqueioCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Crachá Bloqueado (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Crachá Bloqueado (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  Então devo visualizar a tela: Crachá Bloqueado (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio

Então devo visualizar a tela: Crachá Bloqueado (Consulta)
  resource_cnsBloqueioCracha.Acessar Tela Consulta de Crachá Bloqueado
