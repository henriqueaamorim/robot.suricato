*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizarAcessoColaboradores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Autorizar Acesso de Colaboradores (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Autorizar Acesso de Colaboradores (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Área Restrita | Autorizar Acesso
  Quando visualizar a tela: Autorizar Acesso de Colaboradores (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Autorizar Acesso de Colaboradores (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Registro | Área Restrita | Autorizar Acesso
  resource_mnu.Clicar No Menu Registro | Área Restrita | Autorizar Acesso

Quando visualizar a tela: Autorizar Acesso de Colaboradores (Consulta)
  resource_cnsAutorizarAcessoColaboradores.Acessar Tela Consulta Autorizar Acesso de Colaboradores

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Autorizar Acesso de Colaboradores (Filtro)  
    resource_cnsAutorizarAcessoColaboradores.Acessar Tela: Autorizar Acesso de Colaboradores (Filtro)