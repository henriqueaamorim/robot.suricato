*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditoscoletivos.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Créditos de Acesso Coletivos (Atualização)
${APPNAME}     ctrcreditoscoletivos
${OBJETIVO}    Verificar todos os campos na tela Créditos de Acesso Coletivos (Atualização)

*** Test Cases ***

Testcase: Verificar todos os campos na tela Créditos de Acesso Coletivos (Atualização)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crédito de Acesso | Coletivo
  Então devo visualizar a tela: Créditos de Acesso Coletivos (Atualização)
  E verificar o campo Data Inicial: * 
  E verificar o campo Data Final: * 
  E verificar o campo Hora Inicial: * 
  E verificar o campo Hora Final: *
  E verificar o campo Quantidade de Créditos: * 
  E verificar o campo Excluir créditos do período 
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso | Coletivo
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Coletivo

Então devo visualizar a tela: Créditos de Acesso Coletivos (Atualização)
  resource_ctrcreditoscoletivos.Acessar Tela Créditos de Acesso Coletivos (Atualização)

E verificar o campo Data Inicial: * 
  resource_ctrcreditoscoletivos.E verificar o campo Data Inicial: 

E verificar o campo Data Final: * 
  resource_ctrcreditoscoletivos.E verificar o campo Data Final:

E verificar o campo Hora Inicial: * 
  resource_ctrcreditoscoletivos.E verificar o campo Hora Inicial:

E verificar o campo Hora Final: *
  resource_ctrcreditoscoletivos.E verificar o campo Hora Final:

E verificar o campo Quantidade de Créditos: * 
  resource_ctrcreditoscoletivos.E verificar o campo Quantidade de Créditos:

E verificar o campo Excluir créditos do período 
  resource_ctrcreditoscoletivos.E verificar o campo Excluir créditos do período

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"