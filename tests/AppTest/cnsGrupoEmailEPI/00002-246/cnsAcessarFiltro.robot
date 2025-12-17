*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGrupoEmailEPI.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Grupo de Email - EPI (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Grupo de Email - EPI (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | Grupo de Email - EPI
  Quando ver a tela: Grupo de Email - EPI (Consulta)
  E clicar no botão Pesquisar Registro
  Então devo ver a tela Grupo de Email - EPI (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | Grupo de Email - EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Grupo de Email - EPI

Quando ver a tela: Grupo de Email - EPI (Consulta)
  resource_cnsGrupoEmailEPI.Acessar Tela Grupo de Email - EPI

E clicar no botão Pesquisar Registro
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela Grupo de Email - EPI (Filtro)  
  resource_cnsGrupoEmailEPI.Acessar Tela Grupo de Email - EPI (Filtro)
