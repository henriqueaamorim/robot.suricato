*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcrachaempregado.robot
Resource        ../../../../resource/app/resource_cnscolab.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Colaboradores (Busca Externa) através da tela Crachá Titular (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Crachá
  Quando eu visualizar a tela: Crachá Titular (Atualização)
  E clicar no botão: Abrir um novo registro
  Ao visualizar a tela: Crachá Titular (Inclusão)
  E clicar no botão: Buscar Dados Externos para Código do Colaborador
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Colaboradores (Busca Externa)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Crachá

Quando eu visualizar a tela: Crachá Titular (Atualização)
  resource_frmcrachaempregado.Acessar Tela Crachá Titular (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Ao visualizar a tela: Crachá Titular (Inclusão)
  resource_frmcrachaempregado.Acessar Tela Crachá Titular (Inclusão)

E clicar no botão: Buscar Dados Externos para Código do Colaborador
  resource_frmcrachaempregado.Clicar No Botão Buscar Dados Externos Para Código do Colaborador

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Colaboradores (Busca Externa)
  resource_cnscolab.Acessar Tela Consulta de Colaboradores (Busca Externa)
