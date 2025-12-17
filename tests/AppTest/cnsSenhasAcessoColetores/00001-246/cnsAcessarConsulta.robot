*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsSenhasAcessoColetores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Senha de Acesso para Equipamento (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Senha de Acesso para Equipamento (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Senha de Acesso para Equipamento
  Então devo visualizar a tela: Senha de Acesso para Equipamento (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Senha de Acesso para Equipamento
  resource_mnu.Clicar No Menu Identificação | Colaborador | Senha

Então devo visualizar a tela: Senha de Acesso para Equipamento (Consulta)
  resource_cnsSenhasAcessoColetores.Acessar Tela Consulta de Senhas de Acesso nos Codins
