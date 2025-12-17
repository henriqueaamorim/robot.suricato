*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrPreImpExpFotoVisit.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Visitante - Pré Seleção (Importador/Exportador) - Controle


*** Test Cases ***
Testcase: Acessar Tela: Visitante - Pré Seleção (Importador/Exportador) - Controle
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Foto | Visitante
  Então devo visualizar a tela: Visitante - Pré Seleção (Importador/Exportador) - Controle

*** Keywords ***
Dado que eu acesse o menu: Processo | Foto | Visitante
  resource_mnu.Clicar No Menu Processo | Foto | Visitante

Então devo visualizar a tela: Visitante - Pré Seleção (Importador/Exportador) - Controle
  resource_ctrPreImpExpFotoVisit.Acessar Tela Visitante - Pré Seleção (Importador/Exportador) - Controle
