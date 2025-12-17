*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPITermoCompromisso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Termo de Compromisso para Entrega de EPI (Consulta)
${SCREENNAME}  Termo de Compromisso para Entrega de EPI
${APPNAME}     cnsEPITermoCompromisso

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Termo de Compromisso para Entrega de EPI (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | Termo de Compromisso para Entrega de EPI
  Quando ver a tela: Termo de Compromisso para Entrega de EPI (Consulta)
  Então devo verificar a label: Cód
  E verificar a label: Título
  E verificar a label: Status
  E verificar se existe o campo Teste na tela
  

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | Termo de Compromisso para Entrega de EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Termo de Compromisso para Entrega de EPI

Quando ver a tela: Termo de Compromisso para Entrega de EPI (Consulta)
  resource_cnsEPITermoCompromisso.Acessar Tela Cadastro de Termo de Compromisso para Entrega de EPI

Então devo verificar a label: Cód
    resource_cnsEPITermoCompromisso.Verificar a label Cód

E verificar a label: Título
    resource_cnsEPITermoCompromisso.Verificar a label Título

E verificar a label: Status
    resource_cnsEPITermoCompromisso.Verificar a label Status

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"    