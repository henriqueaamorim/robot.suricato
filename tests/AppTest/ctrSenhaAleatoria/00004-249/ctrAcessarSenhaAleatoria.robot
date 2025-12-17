*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrSenhaAleatoria.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***
Testcase: Acessar Tela Solicitação de Senha Aleatória para Codins
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Cadastro de Senha de Acesso Temporária
  Então devo visualizar a tela: Solicitação de Senha Aleatória para Codins

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Cadastro de Senha de Acesso Temporária
  resource_mnu.Clicar No Menu Identificação | Colaborador | Cadastro de Senha de Acesso Temporária

Então devo visualizar a tela: Solicitação de Senha Aleatória para Codins
  resource_ctrSenhaAleatoria.Acessar Tela Solicitação de Senha Aleatória para Codins
