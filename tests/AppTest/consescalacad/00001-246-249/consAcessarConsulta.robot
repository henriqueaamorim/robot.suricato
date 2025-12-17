*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consescalacad.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Escala (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Escala (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Escala | Escala
  Então devo visualizar a tela: Escala (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Escala | Escala
  resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Cadastro de Escala

Então devo visualizar a tela: Escala (Consulta)
  resource_consescalacad.Acessar Tela Consulta de Escalas
