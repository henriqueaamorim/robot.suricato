*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmoutrasempresas.robot
Resource        ../../../../resource/app/resource_consoutraempresacad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído


*** Test Cases ***
Testcase: Acessar Consulta de Empresas Terceiras
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa Terceira | Cadastro de Empresa Terceira
  Então devo ver a tela: Cadastro de Empresas Terceiras (Atualização)
  Ao clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Empresas Terceiras


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa Terceira | Cadastro de Empresa Terceira
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Cadastro de Empresa Terceira

Então devo ver a tela: Cadastro de Empresas Terceiras (Atualização)
  resource_frmoutrasempresas.Acessar Tela Cadastro de Empresas Terceiras (Atualização)

Ao clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Empresas Terceiras
  resource_consoutraempresacad.Acessar Tela Consulta de Empresas Terceiras
