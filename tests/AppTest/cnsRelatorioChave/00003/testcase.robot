*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsRelatorioChave.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatório de Chave - Filtro
${APPNAME}     cnsRelatorioChave
${OBJETIVO}    Verificar todos os campos na tela Relatório de Chave - Filtro

*** Test Cases ***

Testcase: Acessar Tela Relatório de Chave - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Registro | Chave | Relatório de Cadastro de Chave
  Ao visualizar a tela: Relatório de Chave
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Relatório de Chave - Filtro
  E verificar o campo Número da Chave        
  E verificar o campo Descrição da Chave         
  E verificar o campo Planta     
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Relatório de Cadastro de Chave
  resource_mnu.Clicar No Menu Registro | Chave | Relatório de Cadastro de Chave

Ao visualizar a tela: Relatório de Chave
  resource_cnsRelatorioChave.Acessar Tela Relatório de Chave

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Relatório de Chave - Filtro
  resource_cnsRelatorioChave.Acessar Tela Relatório de Chave - Filtro

E verificar o campo Número da Chave        
  resource_cnsRelatorioChave.E verificar o campo Número da Chave        

E verificar o campo Descrição da Chave         
  resource_cnsRelatorioChave.E verificar o campo Descrição da Chave

E verificar o campo Planta     
  resource_cnsRelatorioChave.E verificar o campo Planta

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"