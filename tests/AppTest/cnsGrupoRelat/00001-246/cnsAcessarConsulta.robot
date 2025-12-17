*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoRelatorio.robot
Resource        ../../../../resource/app/resource_cnsGrupoRelat.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Grupo de Relatório (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Grupo de Relatório (Consulta)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatório | Grupo de Relatório
  Então devo visualizar a tela: Grupo de Relatório (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Relatório | Grupo de Relatório
  resource_mnu.Clicar No Menu Relatório | Grupo de Relatório

Então devo visualizar a tela: Grupo de Relatório (Consulta)
  resource_cnsGrupoRelat.Acessar Tela Consulta Grupo de Relatório

