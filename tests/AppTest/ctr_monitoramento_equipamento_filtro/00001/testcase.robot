*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_equipamento.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_equipamento_filtro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Monitoramento Gráfico de Equipamentos - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento Gráfico de Equipamentos
  Ao visualizar a tela: Monitoramento Gráfico de Equipamentos
  E clicar no botão: Filtrar
  Então devo visualizar a tela: Monitoramento Gráfico de Equipamentos - Filtro

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento Gráfico de Equipamentos
  resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento Gráfico de Equipamentos

Ao visualizar a tela: Monitoramento Gráfico de Equipamentos
  resource_ctr_monitoramento_equipamento.Acessar Tela Monitoramento Gráfico de Equipamentos

E clicar no botão: Filtrar
  resource_btn.Clicar No Botão Filtro

Então devo visualizar a tela: Monitoramento Gráfico de Equipamentos - Filtro
  resource_ctr_monitoramento_equipamento_filtro.Acessar Tela Monitoramento Gráfico de Equipamentos - Filtro
