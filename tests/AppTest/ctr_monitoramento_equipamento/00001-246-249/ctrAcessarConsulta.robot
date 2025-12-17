*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_equipamento.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Monitoramento Gráfico de Equipamentos (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Monitoramento Gráfico de Equipamentos (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento Gráfico de Equipamentos
  Então devo visualizar a tela: Monitoramento Gráfico de Equipamentos (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento Gráfico de Equipamentos
  resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento Gráfico de Equipamentos

Então devo visualizar a tela: Monitoramento Gráfico de Equipamentos (Consulta)
  resource_ctr_monitoramento_equipamento.Acessar Tela Monitoramento Gráfico de Equipamentos
