*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsReacoesAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Reação de Acesso (Filtro)
${SCREENNAME}  Reação de Acesso
${APPNAME}     cnsReacoesAcesso

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Reação de Acesso (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Acesso
  Quando ver a tela: Reação de Acesso (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo ver a tela: Reação de Acesso (Filtro)
  E verificar o campo: Planta
  E verificar o campo: Codin
  E verificar o campo: Tipo do Acesso
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Acesso
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Reação de Acesso

Quando ver a tela: Reação de Acesso (Consulta)
  resource_cnsReacoesAcesso.Acessar Tela Consulta de Reações de Acesso

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: Reação de Acesso (Filtro)
  resource_cnsReacoesAcesso.Acessar Tela Filtro de Reações de Acesso  

E verificar o campo: Planta
    resource_cnsReacoesAcesso.Verificar o campo Planta

E verificar o campo: Codin
    resource_cnsReacoesAcesso.Verificar o campo Codin

E verificar o campo: Tipo do Acesso
    resource_cnsReacoesAcesso.Verificar o campo Tipo do Acesso

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"