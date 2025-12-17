*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsDesbloqueioLogin.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***
Testcase: Preencher todos os campos da tela Ativação de Usuário
  [Tags]  REGISTER  POLYVALENT   249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Ativação de Usuário
  Então devo visualizar a tela: Ativação de Usuário
  E preencher o campo Usuário "ok"
  E preencher o campo Login "ok"

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Ativação de Usuário
  resource_mnu.Clicar No Menu Configurações | Usuários | Ativação de Usuário

Então devo visualizar a tela: Ativação de Usuário
  resource_cnsDesbloqueioLogin.Acessar Tela Ativação de Usuário

E preencher o campo Usuário "${USUÁRIO}"
  resource_cnsDesbloqueioLogin.Preencher o campo Usuário "${USUÁRIO}"

E preencher o campo Login "${LOGIN}"
  resource_cnsDesbloqueioLogin.Preencher o campo Login "${LOGIN}"
