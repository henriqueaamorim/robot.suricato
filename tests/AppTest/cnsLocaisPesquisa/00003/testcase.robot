*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmContratos.robot
Resource        ../../../../resource/app/resource_cnsContratos.robot
Resource        ../../../../resource/app/resource_cnsLocaisPesquisa.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Locais (Busca Externa)
${APPNAME}     cnsLocaisPesquisa
${OBJETIVO}    Verificar todos os campos na tela Consulta de Locais (Busca Externa)

*** Test Cases ***
Testcase: Verificar todos os campos na tela Consulta de Locais (Busca Externa)
  [Tags]  VERIFY    
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa Terceira | Contratos
  Quando eu visualizar a tela: Consulta de Contratos
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Contratos (Inclusão)
  E clicar no botão: Buscar Dados Externos para Local
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Locais (Busca Externa)
  E verificar a label Tabela de Organograma
  E verificar a label Descrição do Organograma
  E verificar a label Local
  E verificar a label Descrição do Local
  E verificar a label Criação
  E verificar a label Extinção
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa Terceira | Contratos
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Contratos

Quando eu visualizar a tela: Consulta de Contratos
  resource_cnsContratos.Acessar Tela Consulta de Contratos

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Contratos (Inclusão)
  resource_frmContratos.Acessar Tela Contratos (Inclusão)

E clicar no botão: Buscar Dados Externos para Local
  resource_frmContratos.Clicar No Botão Buscar Dados Externos Para Local

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Locais (Busca Externa)
  resource_cnsLocaisPesquisa.Acessar Tela Consulta de Locais (Busca Externa)

E verificar a label Tabela de Organograma
  resource_cnsLocaisPesquisa.Verificar a label Tabela de Organograma

E verificar a label Descrição do Organograma
  resource_cnsLocaisPesquisa.Verificar a label Descrição do Organograma

E verificar a label Local
  resource_cnsLocaisPesquisa.Verificar a label Local

E verificar a label Descrição do Local
  resource_cnsLocaisPesquisa.Verificar a label Descrição do Local

E verificar a label Criação
  resource_cnsLocaisPesquisa.Verificar a label Criação

E verificar a label Extinção
  resource_cnsLocaisPesquisa.Verificar a label Extinção

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
