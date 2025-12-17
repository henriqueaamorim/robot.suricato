*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consvisitantecorpcad.robot
Resource        ../../../../resource/app/resource_frmvisitantecorp.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Visitante (Filtro)
${SCREENNAME}  Visitante
${APPNAME}     consvisitantecorpcad

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Visitante (Filtro)
  [Tags]    VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Visitante
  Quando visualizar a tela: Visitante (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Visitante (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Tipo de Documento	
  E verificar o campo: Número do Documento	
  E verificar o campo: Nome
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Visitante
  resource_mnu.Clicar No Menu Identificação | Visitante | Cadastro de Visitante

Quando visualizar a tela: Visitante (Consulta)
  resource_consvisitantecorpcad.Acessar Tela: Visitante (Consulta)

E clicar no botão: Pesquisar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Visitante (Filtro)  
    resource_consvisitantecorpcad.Acessar Tela: Visitante (Filtro)

E verificar a label: Pesquisa
    resource_consvisitantecorpcad.Verificar a label Pesquisa

E verificar o campo: Tipo de Documento	
    resource_consvisitantecorpcad.Verificar o campo Tipo de Documento

E verificar o campo: Número do Documento	
    resource_consvisitantecorpcad.Verificar o campo Número do Documento

E verificar o campo: Nome
    resource_consvisitantecorpcad.Verificar o campo Nome

E verificar se existe o campo Teste na tela    
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"