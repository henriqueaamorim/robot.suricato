*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cons_tbContrLocalAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela Área de Risco - Painel de Controle (Filtro)


*** Test Cases ***
Testcase: Acessar Tela Área de Risco - Painel de Controle (Filtro)
  [Tags]  PRINT  POPULATED    246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Painel de Controle
  Quando ver a tela: Área de Risco - Painel de Controle (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela:Área de Risco - Painel de Controle (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Painel de Controle
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Painel de Controle

Quando ver a tela: Área de Risco - Painel de Controle (Consulta)
  resource_cons_tbContrLocalAcesso.Acessar Tela Área de Risco - Painel de Controle

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela:Área de Risco - Painel de Controle (Filtro)
  resource_cons_tbContrLocalAcesso.Acessar Tela Área de Risco - Painel de Controle