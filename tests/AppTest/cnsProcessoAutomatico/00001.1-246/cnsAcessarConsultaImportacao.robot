*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmProcessoAutomatico.robot
Resource        ../../../../resource/app/resource_cnsProcessoAutomatico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Processo de Importação (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Processo de Importação (Consulta)
#Importação #
  [Tags]  PRINT  POPULATED   246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Importação
  Então devo visualizar a tela: Processo de Importação (Consulta)
 

*** Keywords ***
Dado que eu acesse o menu: Processo | Importação
  resource_mnu.Clicar No Menu Processo | Importação

Então devo visualizar a tela: Processo de Importação (Consulta)
  resource_cnsProcessoAutomatico.Acessar Tela Processo de Importação


