*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cns_monitoramento_dispositivo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}



*** Variables ***
${OBJETIVO}   Acessar Tela: Monitoramento de Dispositivos (Filtro)



*** Test Cases ***
Testcase: Acessar Tela: Monitoramento de Dispositivos (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Dispositivo Grid
  Quando visualizar a tela: Monitoramento de Dispositivos (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo vizualizar a tela: Monitoramento de Dispositivos (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Dispositivo Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Dispositivos Grid

Quando visualizar a tela: Monitoramento de Dispositivos (Consulta)
  resource_cns_monitoramento_dispositivo.Acessar Tela: Monitoramento de Dispositivos (Consulta)

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo vizualizar a tela: Monitoramento de Dispositivos (Filtro)  
    resource_cns_monitoramento_dispositivo.Acessar Tela: Monitoramento de Dispositivos (Filtro)