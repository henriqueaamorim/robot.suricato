*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoFilial.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Histórico de Filial (Consulta)
${SCREENNAME}  Histórico de Filial
${APPNAME}     cnsHistoricoFilial

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Histórico de Filial (Consulta)
  [Tags]    VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Filial
  Quando visualizar a tela: Histórico de Filial (Consulta)
  Então devo verificar a label: Empresa
  E verificar a label: Tipo
  E verificar a label: Matrícula
  E verificar a label: Alteração    
  E verificar a label: Filial
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Filial
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Filial

Quando visualizar a tela: Histórico de Filial (Consulta)
  resource_cnsHistoricoFilial.Acessar Tela Consulta de Histórico de Filial

Então devo verificar a label: Empresa
    resource_cnsHistoricoFilial.Verificar a label Empresa

E verificar a label: Tipo
    resource_cnsHistoricoFilial.Verificar a label Tipo

E verificar a label: Matrícula
    resource_cnsHistoricoFilial.Verificar a label Matrícula

E verificar a label: Alteração    
    resource_cnsHistoricoFilial.Verificar a label Alteração

E verificar a label: Filial
    resource_cnsHistoricoFilial.Verificar a label Filial

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"