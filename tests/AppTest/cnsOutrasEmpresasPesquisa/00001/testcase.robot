*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoContratos.robot
Resource        ../../../../resource/app/resource_cnsOutrasEmpresasPesquisa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Empresas Terceiras (Busca Externa) através da tela Histórico de Contratos (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Contrato
  Quando eu visualizar a tela: Histórico de Contratos (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: HisfrmContratostórico de Contratos (Inclusão)
  Ao clicar no botão: Buscar Dados Externos para Empresa Terceirizada
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Empresas Terceiras (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Contrato
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Contrato

Quando eu visualizar a tela: Histórico de Contratos (Atualização)
  resource_frmHistoricoContratos.Acessar Tela Histórico de Contratos (Atualização)

E clicar no botão: Abrir um novo registro
    resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Histórico de Contratos (Inclusão)
  resource_frmHistoricoContratos.Acessar Tela Histórico de Contratos (Inclusão)

Ao clicar no botão: Buscar Dados Externos para Empresa Terceirizada
  resource_frmHistoricoContratos.Clicar No Botão Buscar Dados Externos Para Empresa Terceirizada

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Empresas Terceiras (Busca Externa)
  resource_cnsOutrasEmpresasPesquisa.Acessar Tela Consulta de Empresas Terceiras (Busca Externa)
