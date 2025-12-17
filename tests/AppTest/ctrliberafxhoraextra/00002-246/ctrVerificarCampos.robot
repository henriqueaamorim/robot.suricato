*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrliberafxhoraextra.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Liberação de Faixa Horária Coletiva
${APPNAME}     ctrliberafxhoraextra
${OBJETIVO}    Verificar todos os campos na tela: Liberação de Faixa Horária Coletiva

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Liberação de Faixa Horária Coletiva
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Liberação Faixa Horária
  Então devo visualizar a tela: Liberação de Faixa Horária Coletiva
  E verificar o campo: Data Inicial   
  E verificar o campo: Data Final   
  E verificar o campo: Hora Inicial   
  E verificar o campo: Hora Final  
  E verificar o campo: Colaboradores selecionados	
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Liberação Faixa Horária
  resource_mnu.Clicar No Menu Registro | Liberação Faixa Horária | Coletiva

Então devo visualizar a tela: Liberação de Faixa Horária Coletiva
  resource_ctrliberafxhoraextra.Acessar Tela Liberação de Faixa Horária Coletiva

E verificar o campo: Data Inicial   
  resource_ctrliberafxhoraextra.E verificar o campo Data Inicial

E verificar o campo: Data Final   
  resource_ctrliberafxhoraextra.E verificar o campo Data Final

E verificar o campo: Hora Inicial   
  resource_ctrliberafxhoraextra.E verificar o campo Hora Inicial

E verificar o campo: Hora Final  
  resource_ctrliberafxhoraextra.E verificar o campo Hora Final

E verificar o campo: Colaboradores selecionados	
    resource_ctrliberafxhoraextra.E verificar o campo: Colaboradores selecionados

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"