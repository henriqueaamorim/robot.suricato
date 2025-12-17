*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrtrocacracha.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Troca de Crachá
${APPNAME}     ctrtrocacracha
${OBJETIVO}    Verificar todos os campos na tela: Troca de Crachá

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Troca de Crachá
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Troca de Crachá
  Quando visualizar a tela: Troca de Crachá 
  Então devo verificar a label: Colaborador
  E verificar o campo Colaborador *
  E verificar o campo Nome   
  E verificar o campo Matrícula 
  E verificar o campo Empresa
  E verificar o campo Tipo 
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Troca de Crachá
  resource_mnu.Clicar No Menu Registro | Crachá | Troca de Crachá

Quando visualizar a tela: Troca de Crachá 
  resource_ctrtrocacracha.Acessar Tela Troca de Crachá

Então devo verificar a label: Colaborador
  resource_ctrtrocacracha.E verificar a label: Colaborador

E verificar o campo Colaborador *
  resource_ctrtrocacracha.E verificar o campo Colaborador

E verificar o campo Nome   
  resource_ctrtrocacracha.E verificar o campo Nome 

E verificar o campo Matrícula 
  resource_ctrtrocacracha.E verificar o campo Matrícula 

E verificar o campo Empresa
  resource_ctrtrocacracha.E verificar o campo Empresa

E verificar o campo Tipo 
  resource_ctrtrocacracha.E verificar o campo Tipo

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  
