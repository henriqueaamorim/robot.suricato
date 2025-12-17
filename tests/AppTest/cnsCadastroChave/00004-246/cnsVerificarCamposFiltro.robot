*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCadastroChave.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas os campos na Tela: Chave (Filtro)
${SCREENNAME}  Chave
${APPNAME}     cnsCadastroChave

*** Test Cases ***
Testcase: Verificar todas os campos na Tela: Chave (Filtro)
  [Tags]   VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Chave | Chave
  Quando visualizar a tela: Chave (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Chave (Filtro)
  E verificar o campo: Número da Chave	
  E verificar o campo: Descrição da Chave	
  E verificar o campo: Planta
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Chave
  resource_mnu.Clicar No Menu Registro | Chave | Cadastro de Chave

Quando visualizar a tela: Chave (Consulta)
    resource_cnsCadastroChave.Acessar Tela Cadastro de Chave

E clicar no botão: Pesquisar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Chave (Filtro)    
    resource_cnsCadastroChave.Acessar Tela Chave (Filtro)

E verificar o campo: Número da Chave	
    resource_cnsCadastroChave.Verificar o campo: Número da Chave

E verificar o campo: Descrição da Chave	
    resource_cnsCadastroChave.Verificar o campo: Descrição da Chave

E verificar o campo: Planta
    resource_cnsCadastroChave.Verificar o campo: Planta

E verificar se existe o campo Teste na tela    
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"