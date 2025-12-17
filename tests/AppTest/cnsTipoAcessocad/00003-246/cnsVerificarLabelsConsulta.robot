*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmTipoAcesso.robot
Resource        ../../../../resource/app/resource_cnsTipoAcessocad.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Tipo de Acesso (Consulta)
${SCREENNAME}  Tipo de Acesso
${APPNAME}     cnsTipoAcessocad

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Tipo de Acesso (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Tipo de Acesso
  Quando visualizar a tela: Tipo de Acesso (Consulta)
  Então devo verificar a label: Tipo de Acesso
  E verificar a label: Descrição
  E verificar a label: Ação
  E verificar a label: Cor Alarme
  E verificar a label: Exibir no Monitoramento
  E verificar a label: Tocar Som
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Tipo de Acesso
  resource_mnu.Clicar No Menu Dispositivo | Tipo de Acesso

Quando visualizar a tela: Tipo de Acesso (Consulta)
  resource_cnsTipoAcessocad.Acessar Tela Consulta de Tipo de Acesso

Então devo verificar a label: Tipo de Acesso
    resource_cnsTipoAcessocad.Verificar a label Tipo de Acesso

E verificar a label: Descrição
    resource_cnsTipoAcessocad.Verificar a label Descrição

E verificar a label: Ação
    resource_cnsTipoAcessocad.Verificar a label Ação

E verificar a label: Cor Alarme
    resource_cnsTipoAcessocad.Verificar a label Cor Alarme

E verificar a label: Exibir no Monitoramento
    resource_cnsTipoAcessocad.Verificar a label Exibir no Monitoramento

E verificar a label: Tocar Som  
    resource_cnsTipoAcessocad.Verificar a label Tocar Som

E verificar se existe o campo Teste na tela  
  Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"