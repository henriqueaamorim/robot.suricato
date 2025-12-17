*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEstruturaCargos.robot
Resource        ../../../../resource/app/resource_frmcargos.robot
Resource        ../../../../resource/app/resource_cnscargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${SCREENNAME}  Consulta de Grupo de Cargos
${APPNAME}     cnsEstruturaCargos
${OBJETIVO}    Verificar todas as labels na Tela: Grupo de Cargos (Consulta)


*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Grupo de Cargos (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Cargo | Grupo de Cargo
  Então devo visualizar a tela: Grupo de Cargo (Consulta)
  E verificar a label Código do Grupo
  E verificar a label Descrição do Grupo
  E verificar se existe o campo Teste na tela

*** Keywords ***

Dado que eu acesse o menu: Estrutura | Empresa | Cargo | Grupo de Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cargo | Grupo de Cargo

Então devo visualizar a tela: Grupo de Cargo (Consulta)
  resource_cnsEstruturaCargos.Acessar Tela Consulta de Grupo de Cargo
  
E verificar a label Código do Grupo
  resource_cnsEstruturaCargos.Verificar a label Código do Grupo   

E verificar a label Descrição do Grupo
  resource_cnsEstruturaCargos.Verificar a label Descrição do Grupo

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"