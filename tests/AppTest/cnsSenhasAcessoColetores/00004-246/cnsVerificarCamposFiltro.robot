*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsSenhasAcessoColetores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Senha de Acesso para Equipamento (Filtro)
${SCREENNAME}  Senha de Acesso para Equipamento (Consulta)
${APPNAME}     cnsSenhasAcessoColetores

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Senha de Acesso para Equipamento (Filtro)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Senha de Acesso para Equipamento
  Quando visualizar a tela: Senha de Acesso para Equipamento (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Senha de Acesso para Equipamento (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Empresa
  E verificar o campo: Tipo
  E verificar o campo: Matrícula
  E verificar o campo: Nome
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Senha de Acesso para Equipamento
  resource_mnu.Clicar No Menu Identificação | Colaborador | Senha

Quando visualizar a tela: Senha de Acesso para Equipamento (Consulta)
  resource_cnsSenhasAcessoColetores.Acessar Tela Consulta de Senhas de Acesso nos Codins

E clicar no botão: Pesquisar registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Senha de Acesso para Equipamento (Filtro)  
    resource_cnsSenhasAcessoColetores.Acessar Tela: Senha de Acesso para Equipamento (Filtro)

E verificar a label: Pesquisa
    resource_cnsSenhasAcessoColetores.Verificar a label Pesquisa

E verificar o campo: Empresa
    resource_cnsSenhasAcessoColetores.Verificar o campo Empresa

E verificar o campo: Tipo
    resource_cnsSenhasAcessoColetores.Verificar o campo Tipo

E verificar o campo: Matrícula
    resource_cnsSenhasAcessoColetores.Verificar o campo Matrícula 

E verificar o campo: Nome
    resource_cnsSenhasAcessoColetores.Verificar o campo Nome

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"