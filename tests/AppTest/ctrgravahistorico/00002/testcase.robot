*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcolaborador.robot
Resource        ../../../../resource/app/resource_ctrgravahistorico.robot
Resource        ../../../../resource/app/resource_conscolaboradores.robot

Test Setup      Acessar Suricato  
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${APPNAME}     ctrgravahistorico
${SCREENNAME}  Empregado
${OBJETIVO}    Verificar todos os campos na tela Empregado.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Empregado
  [Tags]  VERIFY  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  Então devo visualizar a tela: Consulta de Colaboradores/Terceiros/Parceiros
  E clicar no botão: Editar Registro "1"
  Então devo visualizar a tela: Cadastro de Empregado
  E clicar no botão: Histórico Colaborador
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Empregado
  E verificar o campo Filial
  E verificar a label Local
  E verificar a label Cargo
  E verificar o campo Escala
  E verificar o campo Crachá
  E verificar a label Centro de Custo
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

Então devo visualizar a tela: Consulta de Colaboradores/Terceiros/Parceiros
  resource_conscolaboradores.Acessar Tela Consulta de Colaboradores/Terceiros/Parceiros

E clicar no botão: Editar Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Cadastro de Empregado
  resource_frmcolaborador.Acessar Tela Cadastro de Empregado

E clicar no botão: Histórico Colaborador
  resource_btn.Clicar No Botão Histórico Colaborador

Então o navegador deve exibir uma nova janela e eu visualizar a tela Empregado
  resource_ctrgravahistorico.Acessar Tela Empregado

E verificar o campo Filial
  resource_ctrgravahistorico.Verificar o campo Filial

E verificar a label Local
  resource_ctrgravahistorico.Verificar a label Local

E verificar a label Cargo
  resource_ctrgravahistorico.Verificar a label Cargo

E verificar o campo Escala
  resource_ctrgravahistorico.Verificar o campo Escala

E verificar o campo Crachá
  resource_ctrgravahistorico.Verificar o campo Crachá

E verificar a label Centro de Custo
  resource_ctrgravahistorico.Verificar a label Centro de Custo

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
