*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consMatrizAcesso.robot
Resource        ../../../../resource/app/resource_frmMatrizAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Matriz de Acesso (Filtro)
${SCREENNAME}  Matriz de Acesso (Consulta)
${APPNAME}     consMatrizAcesso

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Matriz de Acesso (Filtro)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Matriz de Acesso
  Quando visualizar a tela: Matriz de Acesso (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo vizualizar a tela: Matriz de Acesso (Filtro)
  E verificar a label: Pesquisa 
  E verificar o campo: Descrição
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Matriz de Acesso
  resource_mnu.Clicar No Menu Identificação | Colaborador | Matriz de Acesso

Quando visualizar a tela: Matriz de Acesso (Consulta)
  resource_consMatrizAcesso.Acessar Tela de Matriz de Acesso (Consulta)

E clicar no botão: Pesquisar registros
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo vizualizar a tela: Matriz de Acesso (Filtro)  
    resource_consMatrizAcesso.Acessar Tela de Matriz de Acesso (Filtro)

E verificar a label: Pesquisa 
    resource_consMatrizAcesso.Verificar a label Pesquisa

E verificar o campo: Descrição
    resource_consMatrizAcesso.Verificar o campo Descrição

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

