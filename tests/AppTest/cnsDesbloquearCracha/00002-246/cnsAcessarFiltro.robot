*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsDesbloquearCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Desbloquear Crachá (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Desbloquear Crachá (Filtro)
  [Tags]  PRINT  POPULATED   246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio
  Quando visualizar a tela: Desbloquear Crachá (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo verificar a tela: Desbloquear Crachá (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio

Quando visualizar a tela: Desbloquear Crachá (Consulta)
  resource_cnsDesbloquearCracha.Acessar Tela Consulta Desbloquear Crachá

E clicar no botão: Pesquisar registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo verificar a tela: Desbloquear Crachá (Filtro)  
    resource_cnsDesbloquearCracha.Acessar Tela: Desbloquear Crachá (Filtro)