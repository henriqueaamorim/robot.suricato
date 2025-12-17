*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbaixacrachaprov.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Acessar Tela: Realização das Baixas de Crachá Provisório (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Realização das Baixas de Crachá Provisório (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Provisório | Baixa Provisório
  Quando visualizar a tela: Realização das Baixas de Crachá Provisório (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Realização das Baixas de Crachá Provisório (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Provisório | Baixa Provisório
  resource_mnu.Clicar No Menu Entrada | Provisório | Baixa Provisório

Quando visualizar a tela: Realização das Baixas de Crachá Provisório (Consulta)
  resource_consbaixacrachaprov.Acessar Tela: Realização das Baixas de Crachá Provisório (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Realização das Baixas de Crachá Provisório (Filtro)
  resource_consbaixacrachaprov.Acessar Tela: Realização das Baixas de Crachá Provisório (Filtro)