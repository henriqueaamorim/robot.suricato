*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizarAcessoColaboradores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Autorizar Acesso de Colaboradores (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Autorizar Acesso de Colaboradores (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Área Restrita | Autorizar Acesso
  Então devo visualizar a tela: Autorizar Acesso de Colaboradores (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Registro | Área Restrita | Autorizar Acesso
  resource_mnu.Clicar No Menu Registro | Área Restrita | Autorizar Acesso

Então devo visualizar a tela: Autorizar Acesso de Colaboradores (Consulta)
  resource_cnsAutorizarAcessoColaboradores.Acessar Tela Consulta Autorizar Acesso de Colaboradores
