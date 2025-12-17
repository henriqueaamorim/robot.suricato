*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsReacoesAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Verificar todas as labels na tela: Reação de Acesso (Consulta)
${SCREENNAME}  Reação de Acesso
${APPNAME}     cnsReacoesAcesso

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Reação de Acesso (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Acesso
  Quando ver a tela: Reação de Acesso (Consulta)
  Então devo verificar a label: Planta
  E verificar a label: Codin
  E verificar a label: Descrição do Codin
  E verificar a label: Tipo do Acesso
  E verificar a label: Código da Reação
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Acesso
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Reação de Acesso

Quando ver a tela: Reação de Acesso (Consulta)
  resource_cnsReacoesAcesso.Acessar Tela Consulta de Reações de Acesso

Então devo verificar a label: Planta
    resource_cnsReacoesAcesso.Verificar a label Planta

E verificar a label: Codin
    resource_cnsReacoesAcesso.Verificar a label Codin

E verificar a label: Descrição do Codin
    resource_cnsReacoesAcesso.Verificar a label Descrição do Codin

E verificar a label: Tipo do Acesso
    resource_cnsReacoesAcesso.Verificar a label Tipo do Acesso

E verificar a label: Código da Reação
    resource_cnsReacoesAcesso.Verificar a label Código da Reação

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"