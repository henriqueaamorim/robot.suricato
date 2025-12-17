*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consMatrizAcesso.robot
Resource        ../../../../resource/app/resource_frmMatrizAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Acessar Tela: Matriz de Acesso (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Matriz de Acesso (Consulta)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Matriz de Acesso
  Então devo visualizar a tela: Matriz de Acesso (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Matriz de Acesso
  resource_mnu.Clicar No Menu Identificação | Colaborador | Matriz de Acesso

Então devo visualizar a tela: Matriz de Acesso (Consulta)
  resource_consMatrizAcesso.Acessar Tela de Matriz de Acesso (Consulta)


