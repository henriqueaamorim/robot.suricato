*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consestruturaorganograma.robot
Resource        ../../../../resource/app/resource_frmestruturaorganograma.robot
Resource        ../../../../resource/app/resource_ctrOrganograma.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Organograma - Treeview
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Organograma
  Quando eu visualizar a tela: Consulta de Estrutura de Organograma
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Estrutura Organograma (Atualização)
  E clicar no botão: Local
  Então visualizarei a tela: Organograma - Treeview

*** Keywords ***

Dado que eu acesse o menu: Estrutura | Empresa | Organograma
  resource_mnu.Clicar No Menu Estrutura | Empresa | Organograma

Quando eu visualizar a tela: Consulta de Estrutura de Organograma
  resource_consestruturaorganograma.Acessar Tela Consulta de Estrutura de Organograma

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Estrutura Organograma (Atualização)
  resource_frmestruturaorganograma.Acessar Tela Estrutura Organograma (Atualização)

E clicar no botão: Local
  resource_btn.Clicar no botão Local

Então visualizarei a tela: Organograma - Treeview
  resource_ctrOrganograma.Acessar Tela Organograma - Treeview
