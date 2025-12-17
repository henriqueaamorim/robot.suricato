*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoContratos.robot
Resource        ../../../../resource/app/resource_cnsterceiros.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Terceiro - Filtro (Busca Externa) através da tela Histórico de Contratos (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Contrato
  Quando eu visualizar a tela: Histórico de Contratos (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Histórico de Contratos (Inclusão)
  Ao clicar no botão: Buscar Dados Externos Para Código do Colaborador
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Terceiro - Filtro (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Contrato
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Contrato

Quando eu visualizar a tela: Histórico de Contratos (Atualização)
  resource_frmHistoricoContratos.Acessar Tela Histórico de Contratos (Atualização)

E clicar no botão: Abrir um novo registro
    resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Histórico de Contratos (Inclusão)
  resource_frmHistoricoContratos.Acessar Tela Histórico de Contratos (Inclusão)

Ao clicar no botão: Buscar Dados Externos Para Código do Colaborador
  resource_frmHistoricoContratos.Clicar No Botão Buscar Dados Externos Para Código do Colaborador

Então o navegador deve exibir uma nova janela e eu visualizar a tela Terceiro - Filtro (Busca Externa)
  resource_cnsterceiros.Acessar Tela Terceiro - Filtro (Busca Externa)
