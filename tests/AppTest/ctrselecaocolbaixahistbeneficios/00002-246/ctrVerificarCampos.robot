*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrselecaocolbaixahistbeneficios.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Baixa Coletiva de Históricos
${APPNAME}     ctrselecaocolbaixahistbeneficios
${OBJETIVO}    Verificar todos os campos na tela Baixa Coletiva de Históricos

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Baixa Coletiva de Históricos
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Histórico
  Quando visualizar a tela: Baixa Coletiva de Históricos
  Então devo verificar o campo Empresa      
  E verificar o campo Benefício    
  E verificar o campo Data Exclusão 
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Histórico
  resource_mnu.Clicar No Menu Registro | Benefício | Histórico

Quando visualizar a tela: Baixa Coletiva de Históricos
  resource_ctrselecaocolbaixahistbeneficios.Acessar Tela Baixa Coletiva de Históricos

Então devo verificar o campo Empresa      
  resource_ctrselecaocolbaixahistbeneficios.E verificar o campo Empresa 

E verificar o campo Benefício    
  resource_ctrselecaocolbaixahistbeneficios.E verificar o campo Benefício 

E verificar o campo Data Exclusão
  resource_ctrselecaocolbaixahistbeneficios.E verificar o campo Data Exclusão

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"