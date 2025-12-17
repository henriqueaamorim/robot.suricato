*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrdistribuicaobeneficiocoletiva.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Atribuição de Benefícios
${APPNAME}     ctrdistribuicaobeneficiocoletiva
${OBJETIVO}    Verificar todos os campos na tela: Atribuição de Benefícios

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Atribuição de Benefícios
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Atribuição
  Então devo visualizar a tela: Atribuição de Benefícios
  E verificar o campo: Código Benefício 
  E verificar o campo: Data Inicial da Atribuição 
  E verificar o campo: Hora Inicial da Atribuição 
  E verificar o campo: Data Final da Atribuição 
  E verificar o campo: Hora Final da Atribuição 
  E verificar o campo: Mês Competência 
  E verificar o campo: Qtde Entregas 
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Atribuição
  resource_mnu.Clicar No Menu Registro | Benefício | Atribuição

Então devo visualizar a tela: Atribuição de Benefícios
  resource_ctrdistribuicaobeneficiocoletiva.Acessar Tela Atribuição de Benefícios

E verificar o campo: Código Benefício 
  resource_ctrdistribuicaobeneficiocoletiva.E verificar o campo Código Benefício 

E verificar o campo: Data Inicial da Atribuição 
  resource_ctrdistribuicaobeneficiocoletiva.E verificar o campo Data Inicial da Atribuição 

E verificar o campo: Hora Inicial da Atribuição 
  resource_ctrdistribuicaobeneficiocoletiva.E verificar o campo Hora Inicial da Atribuição 

E verificar o campo: Data Final da Atribuição 
  resource_ctrdistribuicaobeneficiocoletiva.E verificar o campo Data Final da Atribuição 

E verificar o campo: Hora Final da Atribuição 
  resource_ctrdistribuicaobeneficiocoletiva.E verificar o campo Hora Final da Atribuição 

E verificar o campo: Mês Competência 
  resource_ctrdistribuicaobeneficiocoletiva.E verificar o campo Mês Competência

E verificar o campo: Qtde Entregas 
  resource_ctrdistribuicaobeneficiocoletiva.E verificar o campo Qtde Entregas

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"