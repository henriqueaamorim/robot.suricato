*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsContratos.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Contratos
${APPNAME}     cnsContratos
${OBJETIVO}    Verificar todos os campos na tela Consulta de Contratos

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Contratos
  [Tags]  VERIFY  246  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa Terceira | Contratos
  Então devo ver a tela: Consulta de Contratos
  E verificar a label Empresa Terceirizada 
  E verificar a label Número do Contrato
  E verificar a label Descrição
  E verificar a label Data Início
  E verificar a label Data Final
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa Terceira | Contratos
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Contratos

Então devo ver a tela: Consulta de Contratos
  resource_cnsContratos.Acessar Tela Consulta de Contratos

E verificar a label Empresa Terceirizada 
  resource_cnsContratos.Verificar a label Empresa Terceirizada 

E verificar a label Número do Contrato
  resource_cnsContratos.Verificar a label Número do Contrato

E verificar a label Descrição
  resource_cnsContratos.Verificar a label Descrição

E verificar a label Data Início
  resource_cnsContratos.Verificar a label Data Início

E verificar a label Data Final
  resource_cnsContratos.Verificar a label Data Final

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
