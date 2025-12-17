*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consTipodeContrato.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Tipo de Contrato (Consulta)
${SCREENNAME}  Tipo de Contrato (Consulta)
${APPNAME}     consTipodeContrato

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Tipo de Contrato (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Tipo de Contrato
  Então devo ver a tela: Tipo de Contrato (Consulta)
  Então devo verificar a label: Tipo de Contrato
  E verificar a label: Descrição
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Tipo de Contrato
  resource_mnu.Clicar No Menu Identificação | Colaborador | Tipo de Contrato

Então devo ver a tela: Tipo de Contrato (Consulta)
  resource_consTipodeContrato.Acessar Tela Tipo de Contrato (Consulta)

Então devo verificar a label: Tipo de Contrato
    resource_consTipodeContrato.Verificar a label Tipo de Contrato

E verificar a label: Descrição
    resource_consTipodeContrato.Verificar a label Descrição

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"