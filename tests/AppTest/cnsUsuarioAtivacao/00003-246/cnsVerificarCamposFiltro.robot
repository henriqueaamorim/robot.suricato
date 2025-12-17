*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsUsuarioAtivacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas os campos na tela: Ativar Relatório (Filtro)
${SCREENNAME}  Ativar Relatório
${APPNAME}     cnsUsuarioAtivacao


*** Test Cases ***
Testcase: Verificar todas os campos na tela: Ativar Relatório (Filtro)
  [Tags]   VERIFY  246  247  
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatório | Ativar
  Quando visualizar a tela: Ativar Relatório (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Ativar Relatório (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Nome
  E verificar o campo: Descrição	
  E verificar o campo: Ativo
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Relatório | Ativar
  resource_mnu.Clicar No Menu Relatório | Ativar

Quando visualizar a tela: Ativar Relatório (Consulta)
  resource_cnsUsuarioAtivacao.Acessar Tela Ativar Relatório

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Ativar Relatório (Filtro)
  resource_cnsUsuarioAtivacao.Acessar Tela Ativar Relatório - Filtro

E verificar a label: Pesquisa
  resource_cnsUsuarioAtivacao.Verificar a label Pesquisa

E verificar o campo: Nome
  resource_cnsUsuarioAtivacao.Verificar o campo: Nome

E verificar o campo: Descrição	
  resource_cnsUsuarioAtivacao.Verificar o campo: Descrição

E verificar o campo: Ativo
  resource_cnsUsuarioAtivacao.Verificar o campo: Ativo

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"