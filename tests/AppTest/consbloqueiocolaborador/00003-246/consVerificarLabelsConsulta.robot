*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbloqueiocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Bloqueio de Colaborador (Consulta)
${SCREENNAME}  Bloqueio de Colaborador
${APPNAME}     consbloqueiocolaborador

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Bloqueio de Colaborador (Consulta)
  [Tags]  VERIFY   246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio
  Quando visualizar a tela: Bloqueio de Colaborador (Consulta)
  Então devo verificar a label: Empresa 
  E verificar a label: Tipo do Colaborador
  E verificar a label: Matrícula    
  E verificar a label: Data do Bloqueio
  E verificar a label: Hora do Bloqueio
  E verificar a label: Motivo do Bloqueio
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio

Quando visualizar a tela: Bloqueio de Colaborador (Consulta)
  resource_consbloqueiocolaborador.Acessar Tela Consulta de Bloqueio de Colaborador

Então devo verificar a label: Empresa 
    resource_consbloqueiocolaborador.Verificar a label: Empresa

E verificar a label: Tipo do Colaborador
    resource_consbloqueiocolaborador.Verificar a label: Tipo do Colaborador

E verificar a label: Matrícula    
    resource_consbloqueiocolaborador.Verificar a label: Matrícula

E verificar a label: Data do Bloqueio
    resource_consbloqueiocolaborador.Verificar a label: Data do Bloqueio

E verificar a label: Hora do Bloqueio
    resource_consbloqueiocolaborador.Verificar a label: Hora do Bloqueio

E verificar a label: Motivo do Bloqueio
    resource_consbloqueiocolaborador.Verificar a label: Motivo do Bloqueio

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"