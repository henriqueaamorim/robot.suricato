*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsPontes.robot
Resource        ../../../../resource/app/resource_frmPontes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Programação - Troca de Ponte (Consulta) 
${SCREENNAME}  Programação - Troca de Ponte (Consulta) 
${APPNAME}     cnsPontes

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Programação - Troca de Ponte (Consulta) 
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Ponte
  Quando eu visualizar a tela: Programação - Troca de Ponte (Consulta)
  Então devo verificar a label: Empresa
  E verificar a label: Tipo
  E verificar a label: Matrícula
  E verificar a label: Nome
  E verificar a label: Data 1
  E verificar a label: Data 2
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Ponte
   resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Ponte

Quando eu visualizar a tela: Programação - Troca de Ponte (Consulta)
   resource_cnsPontes.Acessar Tela: Programação - Troca de Ponte (Consulta)

Então devo verificar a label: Empresa
    resource_cnsPontes.Verificar a label Empresa

E verificar a label: Tipo
    resource_cnsPontes.Verificar a label Tipo

E verificar a label: Matrícula
    resource_cnsPontes.Verificar a label Matrícula

E verificar a label: Nome
    resource_cnsPontes.Verificar a label Nome

E verificar a label: Data 1
    resource_cnsPontes.Verificar a label Data 1

E verificar a label: Data 2
    resource_cnsPontes.Verificar a label Data 2

E verificar se existe o campo Teste na tela   
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
