*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsUsuarioAtivacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Ativar Relatório (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Ativar Relatório (Consulta)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatório | Ativar
  Então devo visualizar a tela: Ativar Relatório

*** Keywords ***
Dado que eu acesse o menu: Relatório | Ativar
  resource_mnu.Clicar No Menu Relatório | Ativar

Então devo visualizar a tela: Ativar Relatório
  resource_cnsUsuarioAtivacao.Acessar Tela Ativar Relatório
