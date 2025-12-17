*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoFilial.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Verificar todos os campos na tela: Histórico de Filial (Filtro)
${SCREENNAME}  Histórico de Filial
${APPNAME}     cnsHistoricoFilial

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Histórico de Filial (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Filial
  Quando visualizar a tela: Histórico de Filial (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Histórico de Filial (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Empresa
  E verificar o campo: Tipo
  E verificar o campo: Matrícula
  E verificar o campo: Alteração
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Filial
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Filial

Quando visualizar a tela: Histórico de Filial (Consulta)
  resource_cnsHistoricoFilial.Acessar Tela Consulta de Histórico de Filial

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Filial (Filtro)
  resource_cnsHistoricoFilial.Acessar Tela Filtro de Histórico de Filial

E verificar a label: Pesquisa
    resource_cnsHistoricoFilial.Verificar a label Pesquisa

E verificar o campo: Empresa
    resource_cnsHistoricoFilial.Verificar o campo Empresa

E verificar o campo: Tipo
    resource_cnsHistoricoFilial.Verificar o campo Tipo

E verificar o campo: Matrícula
    resource_cnsHistoricoFilial.Verificar o campo Matrícula

E verificar o campo: Alteração
    resource_cnsHistoricoFilial.Verificar o campo Alteração

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"