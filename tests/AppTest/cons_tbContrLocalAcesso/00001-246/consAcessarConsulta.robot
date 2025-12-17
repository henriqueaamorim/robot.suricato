*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cons_tbContrLocalAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela Área de Risco - Painel de Controle (Consulta)


*** Test Cases ***
Testcase: Acessar Tela Área de Risco - Painel de Controle (Consulta)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Painel de Controle
  Então devo ver a tela: Área de Risco - Painel de Controle (Consulta)



*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Painel de Controle
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Painel de Controle

Então devo ver a tela: Área de Risco - Painel de Controle (Consulta)
  resource_cons_tbContrLocalAcesso.Acessar Tela Área de Risco - Painel de Controle

