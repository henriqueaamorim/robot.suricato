*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbaixacrachaprov.robot
Resource        ../../../../resource/app/resource_frmbaixacrachaprov.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Baixa de Crachá Provisório (Atualização)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Entrada | Provisório | Baixa Provisório
  Ao visualizar a tela: Consulta para Realização das Baixas de Crachá Provisório
  E clicar no número de crachá desejado na coluna "Crachá"
  Então devo visualizar a tela: Baixa de Crachá Provisório (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Provisório | Baixa Provisório
  resource_mnu.Clicar No Menu Entrada | Provisório | Baixa Provisório

Ao visualizar a tela: Consulta para Realização das Baixas de Crachá Provisório
  resource_consbaixacrachaprov.Acessar Tela: Realização das Baixas de Crachá Provisório (Consulta)

E clicar no número de crachá desejado na coluna "Crachá"
  resource_consbaixacrachaprov.Selecionar Crachá

Então devo visualizar a tela: Baixa de Crachá Provisório (Atualização)
  resource_frmbaixacrachaprov.Acessar Tela Baixa de Crachá Provisório (Atualização)