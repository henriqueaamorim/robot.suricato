*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmbeneficios.robot
Resource        ../../../../resource/app/resource_cnsbeneficioscad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Benefícios (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Benefícios (Filtro)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Benefício
  Quando visualizar a tela: Benefícios (Consulta)
  E clicar no botão: Pesquisar registros 
  Então devo visualizar a tela: Benefícios (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Benefício
  resource_mnu.Clicar No Menu Registro | Benefício | Cadastro de Benefício

Quando visualizar a tela: Benefícios (Consulta)
  resource_cnsbeneficioscad.Acessar Tela Consulta Benefícios

E clicar no botão: Pesquisar registros 
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Benefícios (Filtro)  
  resource_cnsbeneficioscad.Acessar Tela: Benefícios (Filtro)
