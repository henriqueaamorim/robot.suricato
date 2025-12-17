*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmbeneficios.robot
Resource        ../../../../resource/app/resource_cnsbeneficioscad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Benefícios (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Benefícios (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Benefício
  Quando eu visualizar a tela: Benefícios (Consulta)
  

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Benefício
  resource_mnu.Clicar No Menu Registro | Benefício | Cadastro de Benefício

Quando eu visualizar a tela: Benefícios (Consulta)
  resource_cnsbeneficioscad.Acessar Tela Consulta Benefícios

