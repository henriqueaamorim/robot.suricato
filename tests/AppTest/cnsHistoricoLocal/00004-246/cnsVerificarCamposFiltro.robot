*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoLocal.robot
Resource        ../../../../resource/app/resource_cnsHistoricoLocal.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Histórico de Local (Filtro)
${SCREENNAME}  Local
${APPNAME}     cnsHistoricoLocal

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Histórico de Local (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Local
  Quando visualizar a tela: Histórico de Local (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Histórico de Local (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Empresa
  E verificar o campo: Tipo do Colaborador	
  E verificar o campo: Matrícula
  E verificar o campo: Nome
  E verificar o campo: Alteração	
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Local
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Local

Quando visualizar a tela: Histórico de Local (Consulta)
  resource_cnsHistoricoLocal.Acessar Tela Consulta de Histórico de Local

E clicar no botão: Pesquisar registros
  resource_ btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Local (Filtro)
  resource_cnsHistoricoLocal.Acessar Tela Filtro de Histórico de Local

E verificar a label: Pesquisa
  resource_cnsHistoricoLocal.Verificar a label Pesquisa

E verificar o campo: Empresa
  resource_cnsHistoricoLocal.Verificar o campo Empresa

E verificar o campo: Tipo do Colaborador	
  resource_cnsHistoricoLocal.Verificar o campo Tipo do Colaborador

E verificar o campo: Matrícula
  resource_cnsHistoricoLocal.Verificar o campo Matrícula

E verificar o campo: Nome
  resource_cnsHistoricoLocal.Verificar o campo Nome

E verificar o campo: Alteração	
  resource_cnsHistoricoLocal.Verificar o campo Alteração

E verificar se existe o campo Teste na tela    
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"