*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmProcessoAutomatico.robot
Resource        ../../../../resource/app/resource_cnsProcessoAutomatico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Processo de Exportação (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Processo de Exportação (Consulta)
# Exportação #
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Exportação
  Então devo visualizar a tela: Processo de Exportação (Consulta)
 

*** Keywords ***
Dado que eu acesse o menu: Processo | Exportação
  resource_mnu.Clicar No Menu Processo | Exportação

Então devo visualizar a tela: Processo de Exportação (Consulta)
  resource_cnsProcessoAutomatico.Acessar Tela Processo de Exportação


