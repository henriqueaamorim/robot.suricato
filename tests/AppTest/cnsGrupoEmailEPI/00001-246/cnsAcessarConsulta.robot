*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGrupoEmailEPI.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela Grupo de Email - EPI (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Grupo de Email - EPI (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | Grupo de Email - EPI
  Então devo ver a tela: Grupo de Email - EPI (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | Grupo de Email - EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Grupo de Email - EPI

Então devo ver a tela: Grupo de Email - EPI (Consulta)
  resource_cnsGrupoEmailEPI.Acessar Tela Grupo de Email - EPI
