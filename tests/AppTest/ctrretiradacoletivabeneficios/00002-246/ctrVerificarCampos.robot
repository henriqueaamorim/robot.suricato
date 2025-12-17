*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrretiradacoletivabeneficios.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consumo de Benefícios
${APPNAME}     ctrretiradacoletivabeneficios
${OBJETIVO}    Verificar todos os campos na tela: Consumo de Benefícios

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Consumo de Benefícios
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Consumo
  Quando visualizar a tela: Consumo de Benefícios
  Então devo verificar o campo Empresa        
  E verificar o campo Benefício 
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Consumo
  resource_mnu.Clicar No Menu Registro | Benefício | Consumo

Quando visualizar a tela: Consumo de Benefícios
  resource_ctrretiradacoletivabeneficios.Acessar Tela Consumo de Benefícios

Então devo verificar o campo Empresa        
  resource_ctrretiradacoletivabeneficios.E verificar o campo Empresa  

E verificar o campo Benefício 
  resource_ctrretiradacoletivabeneficios.E verificar o campo Benefício 

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  
