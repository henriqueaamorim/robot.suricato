*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcrachaprovisoriocolaborador.robot
Resource        ../../../../resource/app/resource_conscrachaentregueprov.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Crachá Provisório
${APPNAME}     conscrachaentregueprov
${OBJETIVO}    Verificar todos os campos na tela: Crachá Provisório (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Crachá Provisório (Filtro)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Provisório | Colaborador
  Quando eu visualzar a tela: Crachá Provisório
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Crachá Provisório (Filtro)
  E verificar o campo: Crachá
  E verificar o campo: Empresa
  E verificar o campo: Tipo do Colaborador
  E verificar o campo: Matrícula
  E verificar o campo: Nome
  E verificar o campo: Data Inicial do Uso
  E verificar o campo: Hora Inicial do Uso
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Provisório | Colaborador
  resource_mnu.Clicar No Menu Entrada | Provisório | Colaborador

Quando eu visualzar a tela: Crachá Provisório
  resource_conscrachaentregueprov.Acessar Tela: Crachá Provisório 

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Crachá Provisório (Filtro)
  resource_conscrachaentregueprov.Acessar Tela: Crachá Provisório (Filtro)

E verificar o campo: Crachá
    resource_conscrachaentregueprov.Verificar o campo: Crachá

E verificar o campo: Empresa
    resource_conscrachaentregueprov.Verificar o campo: Empresa

E verificar o campo: Tipo do Colaborador
    resource_conscrachaentregueprov.Verificar o campo: Tipo do Colaborador

E verificar o campo: Matrícula
    resource_conscrachaentregueprov.Verificar o campo: Matrícula

E verificar o campo: Nome
    resource_conscrachaentregueprov.Verificar o campo: Nome

E verificar o campo: Data Inicial do Uso
    resource_conscrachaentregueprov.Verificar o campo: Data Inicial do Uso

E verificar o campo: Hora Inicial do Uso
    resource_conscrachaentregueprov.Verificar o campo: Hora Inicial do Uso

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
