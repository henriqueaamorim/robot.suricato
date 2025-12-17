*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoRelatorio.robot
Resource        ../../../../resource/app/resource_cnsGrupoRelat.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Grupo de Relatório (Filtro)
${SCREENNAME}  Grupo de Relatório
${APPNAME}     cnsGrupoRelat

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Grupo de Relatório (Filtro)
  [Tags]  VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatório | Grupo de Relatório
  Quando eu visualizar a tela: Grupo de Relatório (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Grupo de Relatório (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Nome do Grupo	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Relatório | Grupo de Relatório
  resource_mnu.Clicar No Menu Relatório | Grupo de Relatório

Quando eu visualizar a tela: Grupo de Relatório (Consulta)
  resource_cnsGrupoRelat.Acessar Tela Consulta Grupo de Relatório

E clicar no botão: Pesquisar Registro
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Grupo de Relatório (Filtro)
  resource_cnsGrupoRelat.Acessar Tela Consulta Grupo de Relatório - Filtro

E verificar a label: Pesquisa
  resource_cnsGrupoRelat.Verificar a label Pesquisa

E verificar o campo: Nome do Grupo	
  resource_cnsGrupoRelat.Verificar o campo: Nome do Grupo

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"