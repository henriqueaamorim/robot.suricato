*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmdevedoresbeneficios.robot
Resource        ../../../../resource/app/resource_cnsdevedoresbeneficiopesq.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Devedores de Benefícios (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Devedores de Benefícios (Consulta)
  [Tags]  PRINT  UNPOPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Autorização de Devedores
  Então devo visualizar a tela: Devedores de Benefícios (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Autorização de Devedores
  resource_mnu.Clicar No Menu Registro | Benefício | Autorização de Devedores

Então devo visualizar a tela: Devedores de Benefícios (Consulta)
  resource_cnsdevedoresbeneficiopesq.Acessar Tela: Devedores de Benefícios (Consulta)