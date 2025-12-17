*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoRelatorio.robot
Resource        ../../../../resource/app/resource_cnsGrupoRelat.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela: Consulta Grupo de Relatório
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Grupo de Relatório
  Quando eu visualizar a tela: Grupo de Relatório (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Grupo de Relatório

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Grupo de Relatório
  resource_mnu.Clicar No Menu Relatórios | Grupo de Relatório

Quando eu visualizar a tela: Grupo de Relatório (Atualização)
  resource_frmGrupoRelatorio.Acessar Tela Grupo de Relatório (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Grupo de Relatório
  resource_cnsGrupoRelat.Acessar Tela Consulta Grupo de Relatório
