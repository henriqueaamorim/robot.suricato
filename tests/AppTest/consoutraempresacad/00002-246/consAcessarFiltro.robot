*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmoutrasempresas.robot
Resource        ../../../../resource/app/resource_consoutraempresacad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Acessar Tela: Empresa Terceira (Filtro)
${SCREENNAME}  Empresa Terceira
${APPNAME}     consoutraempresacad

*** Test Cases ***
Testcase: Acessar Tela: Empresa Terceira (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa Terceira | Empresa Terceira
  Quando visualizar a tela: Empresa Terceira (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Empresas Terceiras (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa Terceira | Empresa Terceira
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Cadastro de Empresa Terceira

Quando visualizar a tela: Empresa Terceira (Consulta)
  resource_consoutraempresacad.Acessar Tela Consulta de Empresas Terceiras

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Empresas Terceiras (Filtro)
  resource_consoutraempresacad.Acessar Tela Consulta de Empresas Terceiras (Filtro)