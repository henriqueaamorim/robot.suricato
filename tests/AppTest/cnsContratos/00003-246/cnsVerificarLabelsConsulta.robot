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
${OBJETIVO}    Verificar todas as labels na tela Contrato (Consulta)


*** Test Cases ***
Testcase: Verificar todas as labels na tela Contrato (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa Terceira | Contrato
  Quando ver a tela: Contrato (Consulta)
  Então verificar a label Empresa Terceirizada 
  E verificar a label Número do Contrato
  E verificar a label Descrição
  E verificar a label Data Início
  E verificar a label Data Final
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa Terceira | Contrato
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Contratos

Quando ver a tela: Contrato (Consulta)
  resource_cnsContratos.Acessar Tela Consulta de Contratos

Então verificar a label Empresa Terceirizada 
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
