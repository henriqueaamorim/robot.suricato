*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbaixacracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Baixa de Crachá Titular (Consulta)
${SCREENNAME}  Baixa de Crachá
${APPNAME}     consbaixacracha

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Baixa de Crachá Titular (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Baixa de Crachá
  Quando visualizar a tela: Baixa de Crachá Titular (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Filtro Baixa de Crachá Titular (Filtro)
  E verificar a label: Pesquisa
  E verifiar o campo: Crachá
  E verifiar o campo: Matrícula
  E verifiar o campo: Início Uso do Crachá
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Baixa de Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Baixa de Crachá

Quando visualizar a tela: Baixa de Crachá Titular (Consulta)
  resource_consbaixacracha.Acessar Tela Baixa de Crachá Titular

E clicar no botão: Pesquisar registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Filtro Baixa de Crachá Titular (Filtro)
    resource_consbaixacracha.Acessar Tela Filtro Baixa de Crachá Titular  

E verificar a label: Pesquisa
    resource_consbaixacracha.Verificar a label Pesquisa

E verifiar o campo: Crachá
    resource_consbaixacracha.E verificar o campo Crachá 

E verifiar o campo: Matrícula
    resource_consbaixacracha.E verificar o campo Matrícula 

E verifiar o campo: Início Uso do Crachá    
    resource_consbaixacracha.E verificar o campo Início Uso do Crachá

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"