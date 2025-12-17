*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPILocal.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}   Acessar Tela: EPI por Local (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: EPI por Local (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI por Local 
  Então devo ver a tela: EPI por Local (Consulta)
  


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI por Local 
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Local

Então devo ver a tela: EPI por Local (Consulta)
  resource_cnsEPILocal.Acessar Tela Cadastro de EPI por Local


