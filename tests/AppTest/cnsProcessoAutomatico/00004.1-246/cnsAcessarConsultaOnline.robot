*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmProcessoAutomatico.robot
Resource        ../../../../resource/app/resource_cnsProcessoAutomatico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Processo On-Line (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Processo On-Line (Consulta)
# Online #
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | On-Line
  Então devo visualizar a tela: Processo On-Line (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Processo | On-Line
  resource_mnu.Clicar No Menu Processo | OnLine

Então devo visualizar a tela: Processo On-Line (Consulta)
  resource_cnsProcessoAutomatico.Acessar Tela Processo On-Line


