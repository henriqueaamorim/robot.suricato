*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTiposVisitas.robot
Resource        ../../../../resource/app/resource_frmTiposVisitas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Tipo de Visita (Consulta)
${SCREENNAME}  Tipo de Visita
${APPNAME}     cnsTiposVisitas

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Tipo de Visita (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Tipo de Visita
  Quando visualizar a tela: Tipo de Visita (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Descrição
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Tipo de Visita
  resource_mnu.Clicar No Menu Identificação | Visitante | Tipo de Visita

Quando visualizar a tela: Tipo de Visita (Consulta)
  resource_cnsTiposVisitas.Acessar Tela Consulta de Tipos de Visita

Então devo verificar a label: Código
    resource_cnsTiposVisitas.Verificar a label Código

E verificar a label: Descrição
    resource_cnsTiposVisitas.Verificar a label Descrição

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

