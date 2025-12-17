*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCadastroChave.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Chave (Consulta)
${SCREENNAME}  Chave
${APPNAME}     cnsCadastroChave

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Chave (Consulta)
  [Tags]   VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Chave | Chave
  Quando visualizar a tela: Chave (Consulta)
  Então devo verificar a label: Número da Chave
  E verificar a label: Descrição da Chave
  E verificar a label: Planta
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Chave
  resource_mnu.Clicar No Menu Registro | Chave | Cadastro de Chave

Quando visualizar a tela: Chave (Consulta)
  resource_cnsCadastroChave.Acessar Tela Cadastro de Chave

Então devo verificar a label: Número da Chave
  resource_cnsCadastroChave.Verificar a label: Número da Chave

E verificar a label: Descrição da Chave
  resource_cnsCadastroChave.Verificar a label: Descrição da Chave

E verificar a label: Planta
  resource_cnsCadastroChave.Verificar a label: Planta

E verificar se existe o campo Teste na tela    
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"