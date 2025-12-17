*** Settings ***
Resource        ../../../resource/resource_login.robot
Resource        ../../../resource/app/resource_frmcolaborador.robot
Resource        ../../../resource/app/resource_ctrgravahistorico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Verifica se os combos de Escala e Centro de Custo recarregam após um cadastro realizado


*** Test Cases ***

Testcase: Registra um empregado e adiciona Escala e Centro de Custo
  [Tags]  REGISTER  ISSUES  PRINT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  Ao visualizar a tela: Cadastro de Empregado
  Então devo clicar no botão: Abrir um novo registro
  E Preencher o campo Nome "Ronaldo"
  E clicar em Incluir Registro
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Empregado
  E Selecionar o Campo Escala "Descrição"
  E Selecionar o Campo Centro De Custo "Teste CC1"
  Então Printar Tela
  E clicar em OK
  Então Deve Voltar Para A Janela de Cadastro
  E Verificar o campo Escala deve conter "Descrição"
  E verificar o campo Centro de Custo deve conter "Teste CC1"  
  Então Printar Tela Cadastro de Empregado


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

Ao visualizar a tela: Cadastro de Empregado
  resource_frmcolaborador.Acessar Tela Cadastro de Empregado

Então devo clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E Preencher o campo Nome "${NOME}"
  resource_frmcolaborador.Preencher o campo Nome "${NOME}"

E clicar em Incluir Registro
  resource_btn.Clicar no Botão Incluir o Registro

Então o navegador deve exibir uma nova janela e eu visualizar a tela Empregado
  resource_ctrgravahistorico.Acessar Tela Empregado

E Selecionar o Campo Escala "${ESCALA}"
  resource_ctrgravahistorico.Selecionar um item no campo Escala "${ESCALA}"
  
E Selecionar o Campo Centro De Custo "${CC}"
  resource_ctrgravahistorico.Selecionar um item no campo Centro de Custo "${CC}"

Então Printar Tela
  resource_ctrgravahistorico.Acessar Tela Empregado

E clicar em OK
  resource_btn.Clicar no Botão Incluir o Registro

Então Deve Voltar Para A Janela de Cadastro
  resource_frmcolaborador.Voltar para Janela Cadastro de Empregado

E Verificar o campo Escala deve conter "${ESCALA}"
  resource_frmcolaborador.Verificar o campo Escala "${ESCALA}"

E verificar o campo Centro de Custo deve conter "${CC}"
  resource_frmcolaborador.Verificar o campo Centro de Custo "${CC}"

Então Printar Tela Cadastro de Empregado
  resource_frmcolaborador.Acessar Tela Cadastro de Empregado







