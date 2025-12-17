*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consTipodeContrato.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Tipo de Contrato (Filtro)
${SCREENNAME}  Tipo de Contrato (Consulta)
${APPNAME}     consTipodeContrato

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Tipo de Contrato (Filtro)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Tipo de Contrato
  Quando ver a tela: Tipo de Contrato (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo vizualizar a tela: Tipo de Contrato (Filtro)
  E verifiar o campo: Tipo de Contrato	
  E verifiar o campo: Descrição
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Tipo de Contrato
  resource_mnu.Clicar No Menu Identificação | Colaborador | Tipo de Contrato

Quando ver a tela: Tipo de Contrato (Consulta)
  resource_consTipodeContrato.Acessar Tela Tipo de Contrato (Consulta)

E clicar no botão: Pesquisar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo vizualizar a tela: Tipo de Contrato (Filtro)
    resource_consTipodeContrato.Acessar Tela de Tipo de Contrato (Filtro)

E verifiar o campo: Tipo de Contrato	
    resource_consTipodeContrato.Verificar o campo Tipo de Contrato

E verifiar o campo: Descrição
    resource_consTipodeContrato.Verificar o campo Descrição

E verificar se existe o campo Teste na tela    
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
