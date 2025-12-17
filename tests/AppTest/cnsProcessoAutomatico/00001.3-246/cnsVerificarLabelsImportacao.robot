*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmProcessoAutomatico.robot
Resource        ../../../../resource/app/resource_cnsProcessoAutomatico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Processo de Importação (Consulta)
${SCREENNAME}  Processo de Importação
${APPNAME}     cnsProcessoAutomatico

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Processo de Importação (Consulta)
#Importação 
  [Tags]   VERIFY   246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Importação
  Quando eu visualizar a tela: Processo de Importação (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Descrição
  E verificar se existe o campo Teste na tela
 

*** Keywords ***
Dado que eu acesse o menu: Processo | Importação
  resource_mnu.Clicar No Menu Processo | Importação

Quando eu visualizar a tela: Processo de Importação (Consulta)
  resource_cnsProcessoAutomatico.Acessar Tela Processo de Importação

Então devo verificar a label: Código
    resource_cnsProcessoAutomatico.Verificar a label: Código

E verificar a label: Descrição
    resource_cnsProcessoAutomatico.Verificar a label: Descrição

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

