*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricosituacaveiculo.robot
Resource        ../../../../resource/app/resource_cnsveiculofrota_cap.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta Veículos Frota (Busca Externa) através da tela Histórico de Situações de Veículos (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Situação Veículo
  Quando eu visualizar a tela: Histórico de Situações de Veículos (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Histórico de Situações de Veículos (Inclusão)
  Ao clicar no botão: Buscar Dados Externos para Veículos
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Veículos Frota - Modo Busca (Busca Externa)
  Ao clicar no botão: Pesquisar Registros
  Então o navegador exibirá a tela: Consulta Veículos Frota (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Situação Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Situação Veículo

Quando eu visualizar a tela: Histórico de Situações de Veículos (Atualização)
  resource_frmhistoricosituacaveiculo.Acessar Tela Histórico de Situações de Veículos (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Histórico de Situações de Veículos (Inclusão)
  resource_frmhistoricosituacaveiculo.Acessar Tela Histórico de Situações de Veículos (Inclusão)

Ao clicar no botão: Buscar Dados Externos para Veículos
  resource_frmhistoricosituacaveiculo.Clicar No Botão Buscar Dados Externos Para Veículo

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Veículos Frota - Modo Busca (Busca Externa)
  resource_cnsveiculofrota_cap.Acessar Tela Consulta Veículos Frota - Modo Busca (Busca Externa)

Ao clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então o navegador exibirá a tela: Consulta Veículos Frota (Busca Externa)
  resource_cnsveiculofrota_cap.Acessar Tela Consulta Veículos Frota (Busca Externa)
