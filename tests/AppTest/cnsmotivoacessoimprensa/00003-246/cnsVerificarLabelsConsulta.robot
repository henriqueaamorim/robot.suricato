*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_frmautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_cnsmotivoacessoimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Motivo de Acesso de Candidato (Consulta)
${SCREENNAME}  Motivo de Acesso de Candidato
${APPNAME}     cnsmotivoacessoimprensa

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Motivo de Acesso de Candidato (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Motivo de Acesso
  Quando visualizar a tela: Motivo de Acesso de Candidato (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Motivo
  E verificar a label: Grupo de Acesso
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Motivo de Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Motivo de Acesso

Quando visualizar a tela: Motivo de Acesso de Candidato (Consulta)
  resource_cnsmotivoacessoimprensa.Acessar Tela: Motivo de Acesso de Candidato (Consulta)

Então devo verificar a label: Código
    resource_cnsmotivoacessoimprensa.Verificar a label: Código

E verificar a label: Motivo
    resource_cnsmotivoacessoimprensa.Verificar a label: Motivo

E verificar a label: Grupo de Acesso
    resource_cnsmotivoacessoimprensa.Verificar a label: Grupo de Acesso

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"


