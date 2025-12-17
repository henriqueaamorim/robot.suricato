*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsveiculosmarca_cad.robot
Resource        ../../../../resource/app/resource_frmmarcaveiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Marca (Consulta).


*** Test Cases ***
Testcase: Acessar Tela: Marca (Consulta)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Marcas
  Então devo visualizar a tela: Marca (Consulta)
 

*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Marcas
  resource_mnu.Clicar No Menu Veículos | Cadastro | Marcas

Então devo visualizar a tela: Marca (Consulta)
  resource_cnsveiculosmarca_cad.Acessar Tela Marcas de Veículos - Consulta


