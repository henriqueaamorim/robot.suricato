*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsContratos.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Contratos (Filtro)
${APPNAME}     cnsContratos
${OBJETIVO}    Verificar todos os campos na tela Consulta de Contratos (Filtro)

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Contratos (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa Terceira | Contratos
  Então devo ver a tela: Consulta de Contratos
  E clicar no botão: Pesquisar
  Então devo ver a tela: Consulta de Contratos (Filtro)
  E verificar o campo Empresa Terceirizada
  E verificar o campo Número do Contrato
  E verificar o campo Descrição
  E verificar o campo Data Início
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa Terceira | Contratos
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Contratos

Então devo ver a tela: Consulta de Contratos
  resource_cnsContratos.Acessar Tela Consulta de Contratos

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Consulta de Contratos (Filtro)
  resource_cnsContratos.Acessar Tela Consulta de Contratos (Filtro)
  
E verificar o campo Empresa Terceirizada
  resource_cnsContratos.Verificar o campo Empresa Terceirizada

E verificar o campo Número do Contrato
  resource_cnsContratos.Verificar o campo Número do Contrato

E verificar o campo Descrição
  resource_cnsContratos.Verificar o campo Descrição

E verificar o campo Data Início
  resource_cnsContratos.Verificar o campo Data Início

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
