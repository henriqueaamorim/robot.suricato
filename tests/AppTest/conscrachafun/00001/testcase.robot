*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conscolaboradores.robot
Resource        ../../../../resource/app/resource_ctrgravahistorico.robot
Resource        ../../../../resource/app/resource_conscrachafun.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta Crachá (Busca Externa) através da tela Empregado
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  Então devo visualizar a tela: Consulta de Colaboradores/Terceiros/Parceiros
  E clicar no botão: Editar o Registro "1"
  E clicar no botão: Histórico Colaborador
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Empregado
  Ao clicar no botão: Buscar Dados Externos para Crachá
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Crachá (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

Então devo visualizar a tela: Consulta de Colaboradores/Terceiros/Parceiros
  resource_conscolaboradores.Acessar Tela Consulta de Colaboradores/Terceiros/Parceiros

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

E clicar no botão: Histórico Colaborador
  resource_btn.Clicar No Botão Histórico Colaborador

Então o navegador deve exibir uma nova janela e eu visualizar a tela Empregado
  resource_ctrgravahistorico.Acessar Tela Empregado

Ao clicar no botão: Buscar Dados Externos para Crachá
  resource_ctrgravahistorico.Clicar No Botão Buscar Dados Externos Para Crachá

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Crachá (Busca Externa)
  resource_conscrachafun.Acessar Tela Consulta Crachá (Busca Externa)
