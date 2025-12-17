*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmEmpresas.robot
Resource        ../../../../resource/app/resource_cnsEmpresascad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}   Acessar Tela: Empresas (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Empresas (Filtro)
   [Tags]  PRINT  POPULATED   246  247  248  249
   [Documentation]   ${OBJETIVO}
   
   Dado que eu acesse o menu Estrutura | Empresa | Empresa
   Quando visualizar a tela: Empresa (Consulta)
   E clicar no botão: Pesquisar
   Então devo visualizar a tela: Empresas (Filtro)


*** Keywords ***
Dado que eu acesse o menu Estrutura | Empresa | Empresa
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Empresa

Quando visualizar a tela: Empresa (Consulta)
  resource_cnsEmpresascad.Acessar Tela Consulta de Empresas

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Empresas (Filtro)
  resource_cnsEmpresascad.Acessar Tela Consulta de Empresas (Filtro)
