*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculofrota.robot
Resource        ../../../../resource/app/resource_conscontratofrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Contratos (Busca Externa) através da tela Veículos Frota (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Veículos
  Ao visualizar a tela: Veículos Frota (Atualização)
  E clicar no botão: Buscar Dados Externos para Contrato
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Contratos (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Empresa | Veículos
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Veículos

Ao visualizar a tela: Veículos Frota (Atualização)
  resource_frmveiculofrota.Acessar Tela Veículos Frota (Atualização)

E clicar no botão: Buscar Dados Externos para Contrato
  resource_frmveiculofrota.Clicar No Botão Buscar Dados Externos Para Contrato

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Contratos (Busca Externa)
  resource_conscontratofrota.Acessar Tela Consulta de Contratos (Busca Externa)
