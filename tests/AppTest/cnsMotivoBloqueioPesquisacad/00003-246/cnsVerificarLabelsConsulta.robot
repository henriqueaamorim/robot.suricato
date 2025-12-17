*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmotivobloqueio.robot
Resource        ../../../../resource/app/resource_cnsMotivoBloqueioPesquisacad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables  ***
${OBJETIVO}    Verificar todas as labels na Tela: Motivo de Bloqueio (Consulta)
${SCREENNAME}  Motivo de Bloqueio
${APPNAME}     cnsMotivoBloqueioPesquisacad


*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Motivo de Bloqueio (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio
  Quando visualizar a tela: Motivo de Bloqueio (Consulta)
  Então devo verificar a label: Código do Motivo
  E verificar a label: Descrição
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio

Quando visualizar a tela: Motivo de Bloqueio (Consulta)
  resource_cnsMotivoBloqueioPesquisacad.Acessar Tela: Motivo de Bloqueio (Consulta)

Então devo verificar a label: Código do Motivo
  resource_cnsMotivoBloqueioPesquisacad.Verificar a label: Código do Motivo

E verificar a label: Descrição
  resource_cnsMotivoBloqueioPesquisacad.Verificar a label: Descrição

E verificar se existe o campo Teste na tela 
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
