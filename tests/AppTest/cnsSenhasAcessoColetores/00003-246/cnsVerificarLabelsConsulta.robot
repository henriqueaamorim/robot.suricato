*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsSenhasAcessoColetores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Senha de Acesso para Equipamento (Consulta)
${SCREENNAME}  Senha de Acesso para Equipamento (Consulta)
${APPNAME}     cnsSenhasAcessoColetores

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Senha de Acesso para Equipamento (Consulta)
  [Tags]   VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Senha de Acesso para Equipamento
  Quando visualizar a tela: Senha de Acesso para Equipamento (Consulta)
  Então devo verificar a label: Empresa
  E verificar a label: Tipo
  E verificar a label: Matrícula
  E verificar a label: Nome
  E verificar a label: Alteração
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Senha de Acesso para Equipamento
  resource_mnu.Clicar No Menu Identificação | Colaborador | Senha

Quando visualizar a tela: Senha de Acesso para Equipamento (Consulta)
  resource_cnsSenhasAcessoColetores.Acessar Tela Consulta de Senhas de Acesso nos Codins

Então devo verificar a label: Empresa
  resource_cnsSenhasAcessoColetores.Verificar a label Empresa

E verificar a label: Tipo
  resource_cnsSenhasAcessoColetores.Verificar a label Tipo

E verificar a label: Matrícula
  resource_cnsSenhasAcessoColetores.Verificar a label Matrícula

E verificar a label: Nome
  resource_cnsSenhasAcessoColetores.Verificar a label Nome

E verificar a label: Alteração
  resource_cnsSenhasAcessoColetores.Verificar a label Alteração

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
