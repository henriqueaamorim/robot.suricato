*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsSenhasAcessoColetores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Senha de Acesso para Equipamento (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Senha de Acesso para Equipamento (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Senha de Acesso para Equipamento
  Quando visualizar a tela: Senha de Acesso para Equipamento (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Senha de Acesso para Equipamento (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Senha de Acesso para Equipamento
  resource_mnu.Clicar No Menu Identificação | Colaborador | Senha

Quando visualizar a tela: Senha de Acesso para Equipamento (Consulta)
  resource_cnsSenhasAcessoColetores.Acessar Tela Consulta de Senhas de Acesso nos Codins

E clicar no botão: Pesquisar registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Senha de Acesso para Equipamento (Filtro)  
     resource_cnsSenhasAcessoColetores.Acessar Tela: Senha de Acesso para Equipamento (Filtro)