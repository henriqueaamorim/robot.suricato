*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTipoUsuario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas os campos na tela: Tipo de Contrato (Filtro)
${SCREENNAME}  Tipo de Usuário
${APPNAME}     cnsTipoUsuario

*** Test Cases ***
Testcase: Verificar todas os campos na tela: Tipo de Contrato (Filtro)
  [Tags]    VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Tipo de Usuário
  Quando ver a tela: Tipo de Usuário (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Tipo de Usuário (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Id
  E verificar o campo: Tipo Usuário	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Tipo de Usuário
  resource_mnu.Clicar No Menu Identificação | Colaborador | Tipo de Usuário

Quando ver a tela: Tipo de Usuário (Consulta)
  resource_cnsTipoUsuario.Acessar Tela: Tipo de Usuário (Consulta)

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Tipo de Usuário (Filtro)  
  resource_cnsTipoUsuario.Acessar Tela: Tipo de Usuário (Filtro)

E verificar a label: Pesquisa
  resource_cnsTipoUsuario.Verificar a label Pesquisa

E verificar o campo: Id
  resource_cnsTipoUsuario.Verificar o campo Id

E verificar o campo: Tipo Usuário	
  resource_cnsTipoUsuario.Verificar o campo Tipo Usuário

E verificar se existe o campo Teste na tela    
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"