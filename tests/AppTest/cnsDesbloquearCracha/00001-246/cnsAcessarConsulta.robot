*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsDesbloquearCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Desbloquear Crachá (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Desbloquear Crachá (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio
  Então devo visualizar a tela: Desbloquear Crachá (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio

Então devo visualizar a tela: Desbloquear Crachá (Consulta)
  resource_cnsDesbloquearCracha.Acessar Tela Consulta Desbloquear Crachá
