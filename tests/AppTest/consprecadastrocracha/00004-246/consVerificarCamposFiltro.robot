*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprecadastrocracha69cra.robot
Resource        ../../../../resource/app/resource_consprecadastrocracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Pré-Cadastro de Crachá (Filtro)
${SCREENNAME}  Pré-Cadastro de Crachá
${APPNAME}     consprecadastrocracha

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Pré-Cadastro de Crachá (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Pré-Cadastro de Crachá
  Quando visualizar a tela: Pré-Cadastro de Crachá (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Pré-Cadastro de Crachá (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Tipo do Crachá	
  E verificar o campo: Crachá
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Pré-Cadastro de Crachá
  resource_mnu.Clicar No Menu Registro | Crachá | Pré-Cadastro de Crachá

Quando visualizar a tela: Pré-Cadastro de Crachá (Consulta)
  resource_consprecadastrocracha.Acessar Tela: Pré-Cadastro de Crachá (Consulta)

E clicar no botão: Pesquisar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Pré-Cadastro de Crachá (Filtro)  
    resource_consprecadastrocracha.Acessar Tela: Pré-Cadastro de Crachá (Filtro)

E verificar a label: Pesquisa
    resource_consprecadastrocracha.Verificar a label Pesquisa

E verificar o campo: Tipo do Crachá	
    resource_consprecadastrocracha.Verificar o campo: Tipo do Crachá

E verificar o campo: Crachá
    resource_consprecadastrocracha.Verificar o campo: Crachá

E verificar se existe o campo Teste na tela    
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"