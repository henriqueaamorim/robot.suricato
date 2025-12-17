*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoRelatorio.robot
Resource        ../../../../resource/app/resource_cnsGrupoRelat.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Grupo de Relatório (Consulta)
${SCREENNAME}  Grupo de Relatório
${APPNAME}     cnsGrupoRelat

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Grupo de Relatório (Consulta)
  [Tags]   VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatório | Grupo de Relatório
  Quando visualizar a tela: Grupo de Relatório (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Nome do Grupo
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Relatório | Grupo de Relatório
   resource_mnu.Clicar No Menu Relatório | Grupo de Relatório

Quando visualizar a tela: Grupo de Relatório (Consulta)
  resource_cnsGrupoRelat.Acessar Tela Consulta Grupo de Relatório

Então devo verificar a label: Código
  resource_cnsGrupoRelat.Verificar a label: Código

E verificar a label: Nome do Grupo
  resource_cnsGrupoRelat.Verificar a label: Nome do Grupo

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
