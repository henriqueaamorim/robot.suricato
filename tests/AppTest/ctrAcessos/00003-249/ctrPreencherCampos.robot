*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrAcessos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}   Preencher todos os campos na tela Comandos do Acesso On-Line.

*** Test Cases ***
Testcase: Preencher todos os campos na tela Comandos do Acesso On-Line
  [Tags]  REGISTER  POLYVALENT   249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Acesso
  Então devo visualizar a tela: Comandos do Acesso On-Line
  E selecionar uma opção no campo Planta "AAB - 6"
  E selecionar uma opção no campo Gateway "Descrição - 1"
  #E selecionar uma opção no campo Código do Codin ""

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Acesso
  resource_mnu.Clicar No Menu Controle | Comando | Acesso

Então devo visualizar a tela: Comandos do Acesso On-Line
  resource_ctrAcessos.Acessar Tela Comandos do Acesso On-Line

E selecionar uma opção no campo Planta "${PLANTA}"
  resource_ctrAcessos.Selecionar uma opção no campo Planta "${PLANTA}"

E selecionar uma opção no campo Gateway "${GATEWAY}"
  resource_ctrAcessos.Selecionar uma opção no campo Gateway "${GATEWAY}"

E selecionar uma opção no campo Código do Codin "${CÓDIGO_DO_CODIN}"
  resource_ctrAcessos.Selecionar uma opção no campo Código do Codin "${CÓDIGO_DO_CODIN}"
