*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoRelatorio.robot
Resource        ../../../../resource/app/resource_cnsGrupoRelat.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Grupo de Relatório (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Grupo de Relatório (Filtro)
  [Tags]  PRINT  POPULATED  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatório | Grupo de Relatório
  Quando eu visualizar a tela: Grupo de Relatório (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Grupo de Relatório (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Relatório | Grupo de Relatório
  resource_mnu.Clicar No Menu Relatório | Grupo de Relatório

Quando eu visualizar a tela: Grupo de Relatório (Consulta)
  resource_cnsGrupoRelat.Acessar Tela Consulta Grupo de Relatório

E clicar no botão: Pesquisar Registro
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Grupo de Relatório (Filtro)
  resource_cnsGrupoRelat.Acessar Tela Consulta Grupo de Relatório - Filtro
