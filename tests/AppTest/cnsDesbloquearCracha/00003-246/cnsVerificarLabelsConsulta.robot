*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsDesbloquearCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}     Verificar todas as labels na tela: Desbloquear Crachá (Consulta)
${SCREENNAME}   Desbloquear Crachá
${APPNAME}      cnsDesbloquearCracha

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Desbloquear Crachá (Consulta)
  [Tags]    VERIFY   246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio
  Quando visualizar a tela: Desbloquear Crachá (Consulta)
  Então devo verificar a label: Crachá
  E verificar a label: Número Físico
  E verificar a label: Data/Hora de Bloqueio
  E verificar a label: Motivo do Bloqueio
  E verificar a label: Data/Hora da Liberação
  E verificar a label: Observações
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio

Quando visualizar a tela: Desbloquear Crachá (Consulta)
  resource_cnsDesbloquearCracha.Acessar Tela Consulta Desbloquear Crachá

Então devo verificar a label: Crachá
    resource_cnsDesbloquearCracha.Verificar a label: Crachá

E verificar a label: Número Físico
    resource_cnsDesbloquearCracha.Verificar a label: Número Físico

E verificar a label: Data/Hora de Bloqueio
    resource_cnsDesbloquearCracha.Verificar a label: Data/Hora de Bloqueio

E verificar a label: Motivo do Bloqueio
    resource_cnsDesbloquearCracha.Verificar a label: Motivo do Bloqueio

E verificar a label: Data/Hora da Liberação
    resource_cnsDesbloquearCracha.Verificar a label: Data/Hora da Liberação

E verificar a label: Observações
    resource_cnsDesbloquearCracha.Verificar a label: Observações

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"