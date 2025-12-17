*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmoutrasempresas.robot
Resource        ../../../../resource/app/resource_consoutraempresacad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Empresa Terceira (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Empresa Terceira (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
   Dado que eu acesse o menu: Estrutura | Empresa Terceira | Empresa Terceira
   Então devo visualizar a tela: Empresa Terceira (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa Terceira | Empresa Terceira
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Cadastro de Empresa Terceira

Então devo visualizar a tela: Empresa Terceira (Consulta)
  resource_consoutraempresacad.Acessar Tela Consulta de Empresas Terceiras
  
