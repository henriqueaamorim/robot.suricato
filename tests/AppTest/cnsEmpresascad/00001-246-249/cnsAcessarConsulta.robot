*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEmpresascad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar a Tela: Empresa (Consulta)

*** Test Cases ***
Testcase: Acessar a Tela: Empresa (Consulta)
   [Tags]  PRINT  POPULATED  246  247  248  249
   [Documentation]   ${OBJETIVO}
   
   Dado que eu acesse o menu Estrutura | Empresa | Empresa
   Então devo visualizar a tela: Empresa (Consulta)

*** Keywords ***
Dado que eu acesse o menu Estrutura | Empresa | Empresa
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Empresa

Então devo visualizar a tela: Empresa (Consulta)
  resource_cnsEmpresascad.Acessar Tela Consulta de Empresas
