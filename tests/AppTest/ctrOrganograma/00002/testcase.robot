*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consestruturaorganograma.robot
Resource        ../../../../resource/app/resource_frmestruturaorganograma.robot
Resource        ../../../../resource/app/resource_ctrOrganograma.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Tela Organograma
${OBJETIVO}    Verificar a funcionalidade da Tela Organograma - Treeview
${APPNAME}     frmOrganograma 

*** Test Cases ***

Testcase: Verificar a funcionalidade da Tela Organograma - Treeview
  [Tags]  VERIFY 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Organograma
  Quando eu visualizar a tela: Consulta de Estrutura de Organograma
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Estrutura Organograma (Atualização)
  E preencher o campo Descrição "Presidencia"
  E clicar no botão: Local
  Então visualizarei a tela: Organograma - Treeview
  E verificar o botão Esconder Todos
  E verificar o botão Mostrar Todos 
  E verificar o campo Teste 
  
*** Keywords ***

Dado que eu acesse o menu: Estrutura | Empresa | Organograma
  resource_mnu.Clicar No Menu Estrutura | Empresa | Organograma

Quando eu visualizar a tela: Consulta de Estrutura de Organograma
  resource_consestruturaorganograma.Acessar Tela Consulta de Estrutura de Organograma

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Estrutura Organograma (Atualização)
  resource_frmestruturaorganograma.Acessar Tela Estrutura Organograma (Atualização)

E preencher o campo Descrição "${DESCRICAO}"
  resource_frmestruturaorganograma.Preencher Campo Descrição "${DESCRICAO}"

E clicar no botão: Local
  resource_btn.Clicar no botão Local

Então visualizarei a tela: Organograma - Treeview
  resource_ctrOrganograma.Acessar Tela Organograma - Treeview

E verificar o botão Esconder Todos
  resource_ctrOrganograma.E verificar o botão Esconder Todos

E verificar o botão Mostrar Todos
  resource_ctrOrganograma.E verificar o botão Mostrar Todos 

E verificar o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
