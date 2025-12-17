*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cons_tbLocal_Acess.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela Área de Risco (Filtro)


*** Test Cases ***
Testcase: Acessar Tela Área de Risco (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Area de Risco
  Então devo ver a tela: Área de Risco (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo ver a tela: Área de Risco (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Area de Risco
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Area de Risco

Então devo ver a tela: Área de Risco (Consulta)
  resource_cons_tbLocal_Acess.Acessar Tela Área de Risco - Consulta

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: Área de Risco (Filtro)
  resource_cons_tbLocal_Acess.Acessar Tela Área de Risco - Filtro