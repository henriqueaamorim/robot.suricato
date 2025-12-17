*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmconfiguraremail.robot
Resource        ../../../../resource/app/resource_ctrTestarEmail.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Testar Email
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Configurações | Email
  Ao visualizar a tela: Configuração do E-mail (Atualização)
  E clicar no botão: Testar Email
  Então devo visualizar a tela: Testar Email

*** Keywords ***
Dado que eu acesse o menu: Configurações | Email
  resource_mnu.Clicar No Menu Configurações | Email

Ao visualizar a tela: Configuração do E-mail (Atualização)
  resource_frmconfiguraremail.Acessar Tela Configuração do E-mail (Atualização)

E clicar no botão: Testar Email
  resource_btn.Clicar No Botão Testar Email

Então devo visualizar a tela: Testar Email
  resource_ctrTestarEmail.Acessar Tela Testar Email
