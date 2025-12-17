*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrDefinicoesAcesso.robot
Resource        ../../../../resource/app/resource_ctrdefinicoescrachaprecadastro.robot
Resource        ../../../../resource/app/resource_cnsdefinicoescrachaprecadastro.robot
Resource        ../../../../resource/app/resource_abadefinicoescracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos da tela Definições do Crachá - Pré Cadastro

*** Test Cases ***

Testcase: Preencher todos os campos da tela Definições do Crachá - Pré Cadastro
  [Tags]  REGISTER  POLYVALENT 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Crachá
  Quando eu visualizar a tela: Definições de Acesso
  E clicar na aba: Pré-Cadastro
  Então devo visualizar a tela: Definições do Crachá - Pré Cadastro
  Ao clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Definições do Crachá - Pré-Cadastro

*** Keywords ***
Dado que eu acesse o menu: Configurações | Crachá
  resource_mnu.Clicar No Menu Configurações | Crachá

Quando eu visualizar a tela: Definições de Acesso
  resource_ctrDefinicoesAcesso.Acessar Tela Definições de Acesso

E clicar na aba: Pré-Cadastro
  resource_abadefinicoescracha.Clicar Na Aba Pré-Cadastro

Então devo visualizar a tela: Definições do Crachá - Pré Cadastro
  resource_ctrdefinicoescrachaprecadastro.Acessar Tela Definições do Crachá - Pré Cadastro

Ao clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Definições do Crachá - Pré-Cadastro
  resource_cnsdefinicoescrachaprecadastro.Acessar Tela Consulta de Definições do Crachá - Pré-Cadastro
