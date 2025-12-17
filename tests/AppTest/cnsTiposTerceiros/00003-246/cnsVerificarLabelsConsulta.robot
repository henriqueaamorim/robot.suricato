*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTiposTerceiros.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Tipo de Terceiro (Consulta)
${SCREENNAME}  Tipo de Terceiro
${APPNAME}     cnsTiposTerceiros

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Tipo de Terceiro (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Tipo de Terceiro
  Quando visualizar a tela: Tipo de Terceiro (Consulta)
  Então devo verficar a label: Tipo de Terceiro
  Então devo verficar a label: Descrição
  E verificar se existe o campo Teste na tela
 
*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Tipo de Terceiro
  resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Tipo de Terceiro

Quando visualizar a tela: Tipo de Terceiro (Consulta)
  resource_cnsTiposTerceiros.Acessar Tela Consulta de Tipos de Terceiros

Então devo verficar a label: Tipo de Terceiro
  resource_cnsTiposTerceiros.Verificar a label Tipo de Terceiro

Então devo verficar a label: Descrição
  resource_cnsTiposTerceiros.Verificar a label Descrição

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"