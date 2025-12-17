*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conscrachaentregueempre.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}     Verificar todos os campos na Tela: Crachá Titular (Filtro)
${SCREENNAME}  Crachá
${APPNAME}     conscrachaentregueempre

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Crachá Titular (Filtro)
  [Tags]    VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Crachá
  Quando visualizar a tela: Crachá Titular (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Crachá Titular (Filtro)
  E verificar o campo: Empresa	
  E verificar o campo: Tipo do Colaborador	
  E verificar o campo: Crachá
  E verificar o campo: Matrícula	
  E verificar o campo: Nome
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Crachá

Quando visualizar a tela: Crachá Titular (Consulta)
  resource_conscrachaentregueempre.Acessar Tela Consulta de Crachá Titular

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Crachá Titular (Filtro)
  resource_conscrachaentregueempre.Acessar Tela Filtro de Crachá Titular

E verificar o campo: Empresa	
    resource_conscrachaentregueempre.Verificar o campo Empresa

E verificar o campo: Tipo do Colaborador	
    resource_conscrachaentregueempre.Verificar o campo Tipo do Colaborador

E verificar o campo: Crachá
    resource_conscrachaentregueempre.Verificar o campo Crachá

E verificar o campo: Matrícula	
    resource_conscrachaentregueempre.Verificar o campo Matrícula

E verificar o campo: Nome
    resource_conscrachaentregueempre.Verificar o campo Nome

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"