*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcrachaempregado.robot
Resource        ../../../../resource/app/resource_conscrachavalidos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Crachás (Busca Externa) através da tela Crachá Titular (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Crachá
  Quando eu visualizar a tela: Crachá Titular (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Crachá Titular (Inclusão)
  Ao clicar no botão: Buscar Dados Externos para Crachá
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Crachás (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Crachá

Quando eu visualizar a tela: Crachá Titular (Atualização)
  resource_frmcrachaempregado.Acessar Tela Crachá Titular (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Crachá Titular (Inclusão)
  resource_frmcrachaempregado.Acessar Tela Crachá Titular (Inclusão)

Ao clicar no botão: Buscar Dados Externos para Crachá
  resource_frmcrachaempregado.Clicar No Botão Buscar Dados Externos Para Crachá

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Crachás (Busca Externa)
  resource_conscrachavalidos.Acessar Tela Consulta de Crachás (Busca Externa)
