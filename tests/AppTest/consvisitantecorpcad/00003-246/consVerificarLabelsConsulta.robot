*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consvisitantecorpcad.robot
Resource        ../../../../resource/app/resource_frmvisitantecorp.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Visitante (Consulta)
${SCREENNAME}  Visitante
${APPNAME}     consvisitantecorpcad

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Visitante (Consulta)
  [Tags]    VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Visitante
  Quando visualizar a tela: Visitante (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Tipo de Documento
  E verificar a label: Número do Documento
  E verificar a label: Nome
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Visitante
  resource_mnu.Clicar No Menu Identificação | Visitante | Cadastro de Visitante

Quando visualizar a tela: Visitante (Consulta)
  resource_consvisitantecorpcad.Acessar Tela: Visitante (Consulta)

Então devo verificar a label: Código
    resource_consvisitantecorpcad.Verificar a label Código

E verificar a label: Tipo de Documento
    resource_consvisitantecorpcad.Verificar a label Tipo de Documento

E verificar a label: Número do Documento
    resource_consvisitantecorpcad.Verificar a label Número do Documento

E verificar a label: Nome
    resource_consvisitantecorpcad.Verificar a label Nome

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"