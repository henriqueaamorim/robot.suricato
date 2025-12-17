*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmoutrasempresas.robot
Resource        ../../../../resource/app/resource_consoutraempresacad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar Consulta de Empresas Terceiras (Filtro)


*** Test Cases ***

Testcase: Acessar Consulta de Empresas Terceiras (Filtro)
  [Tags]  PRINT  POPULATED  246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa Terceira | Cadastro de Empresa Terceira
  Então devo visualizar a tela: Consulta de Empresas Terceiras
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Empresas Terceiras (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa Terceira | Cadastro de Empresa Terceira
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Cadastro de Empresa Terceira

Então devo visualizar a tela: Consulta de Empresas Terceiras
  resource_consoutraempresacad.Acessar Tela Consulta de Empresas Terceiras

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Consulta de Empresas Terceiras (Filtro)
  resource_consoutraempresacad.Acessar Tela Consulta de Empresas Terceiras (Filtro)