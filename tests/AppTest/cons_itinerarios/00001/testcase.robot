*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcolaboradoresacesso.robot
Resource        ../../../../resource/app/resource_frmcolaborador.robot
Resource        ../../../../resource/app/resource_cons_itinerarios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Itinerários de Linhas de Ônibus (Busca Externa) através da tela Cadastro de Empregado - Perfil de Acesso
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  Quando eu visualizar a tela: Cadastro de Empregado
  E clicar no botão: Perfil de Acesso
  Então devo visualizar a tela: Cadastro de Empregado - Perfil de Acesso
  Ao clicar no botão: Buscar Dados Externos para Número da Linha
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Cadastro de Itinerários de Linhas de Ônibus (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

Quando eu visualizar a tela: Cadastro de Empregado
  resource_frmcolaborador.Acessar Tela Cadastro de Empregado

E clicar no botão: Perfil de Acesso
  resource_btn.Clicar No Botão Perfil de Acesso

Então devo visualizar a tela: Cadastro de Empregado - Perfil de Acesso
  resource_frmcolaboradoresacesso.Acessar Tela Cadastro de Empregado - Perfil de Acesso

Ao clicar no botão: Buscar Dados Externos para Número da Linha
  resource_frmcolaboradoresacesso.Clicar No Botão Buscar Dados Externos Para Número da Linha

Então o navegador deve exibir uma nova janela e eu visualizar a tela Cadastro de Itinerários de Linhas de Ônibus (Busca Externa)
  resource_cons_itinerarios.Acessar Tela Cadastro de Itinerários de Linhas de Ônibus (Busca Externa)
