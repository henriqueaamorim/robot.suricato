*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consrestrito.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Acesso as Áreas Restritas (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Acesso as Áreas Restritas (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Área Restrita | Consultar Acesso
  Quando visualizar a tela: Acesso as Áreas Restritas (Filtro)
  E clicar no botão: Pesquisa
  Então devo vizualizar a tela: Acesso as Áreas Restritas (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Registro | Área Restrita | Consultar Acesso
  resource_mnu.Clicar No Menu Registro | Área Restrita | Consultar Acesso

Quando visualizar a tela: Acesso as Áreas Restritas (Filtro)
  resource_consrestrito.Acessar Tela: Acesso as Áreas Restritas (Filtro)

E clicar no botão: Pesquisa
  resource_btn.Clicar No Botão Pesquisa

Então devo vizualizar a tela: Acesso as Áreas Restritas (Consulta)    
  resource_consrestrito.Acessar Tela: Acesso as Áreas Restritas (Consulta)