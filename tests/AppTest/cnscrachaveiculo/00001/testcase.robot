*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricocrachaveiculo.robot
Resource        ../../../../resource/app/resource_cnscrachaveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Crachás de Veículos (Consulta) através da tela Histórico de Crachás para Veículos (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Crachá Veículo
  Quando eu visualizar a tela: Histórico de Crachás para Veículos (Atualização)
  E clicar no botão: Abrir um novo registro
  Ao visualizar a tela: Histórico de Crachás para Veículos (Inclusão)
  E clicar no botão: Buscar Dados Externos para Crachá
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Crachás de Veículos (Consulta) (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Crachá Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Crachá Veículo

Quando eu visualizar a tela: Histórico de Crachás para Veículos (Atualização)
  resource_frmhistoricocrachaveiculo.Acessar Tela Histórico de Crachás para Veículos (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Ao visualizar a tela: Histórico de Crachás para Veículos (Inclusão)
  resource_frmhistoricocrachaveiculo.Acessar Tela Histórico de Crachás para Veículos (Inclusão)

E clicar no botão: Buscar Dados Externos para Crachá
  resource_frmhistoricocrachaveiculo.Clicar No Botão Buscar Dados Externos Para Crachá

Então o navegador deve exibir uma nova janela e eu visualizar a tela Crachás de Veículos (Consulta) (Busca Externa)
  resource_cnscrachaveiculo.Acessar Tela Crachás de Veículos (Consulta) (Busca Externa)
