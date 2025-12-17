*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consHistoricoExternalKeyFilial.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Histórico de Codin por Filial (Consulta)
${SCREENNAME}  Histórico de Codin por Filial
${APPNAME}     consHistoricoExternalKeyFilial

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Histórico de Codin por Filial (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Histórico de Codin por Filial
  Quando visualizar a tela: Histórico de Codin por Filial (Consulta)
  Então verificar a label: Código da Filial
  E verificar a label: Razão Social
  E verificar a label: Codin
  E verificar a label: Descrição
  E verificar a label: Chave Externa
  E verificar se existe o campo Teste na tela




*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Histórico de Codin por Filial
  resource_mnu.Clicar No Menu Dispositivo | Codin | Histórico de Codin por Filial

Quando visualizar a tela: Histórico de Codin por Filial (Consulta)
  resource_consHistoricoExternalKeyFilial.Acessar Tela Consulta de Histórico de Codin por Filial

Então verificar a label: Código da Filial
    resource_consHistoricoExternalKeyFilial.Verificar a label Código da Filial

E verificar a label: Razão Social
    resource_consHistoricoExternalKeyFilial.Verificar a label Razão Social

E verificar a label: Codin
    resource_consHistoricoExternalKeyFilial.Verificar a label Codin

E verificar a label: Descrição
    resource_consHistoricoExternalKeyFilial.Verificar a label Descrição

E verificar a label: Chave Externa
    resource_consHistoricoExternalKeyFilial.Verificar a label Chave Externa

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
