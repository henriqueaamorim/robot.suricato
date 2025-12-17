*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCadastroEPI.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar Todas os campos na Tela: EPI (Filtro)
${SCREENNAME}  EPI
${APPNAME}     cnsCadastroEPI

*** Test Cases ***
Testcase: Verificar Todas os campos na Tela: EPI (Filtro)
  [Tags]    VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI
  Quando ver a tela: EPI (Consulta)
  E clicar no botao Pesquisar
  Então devo ver a tela: EPI (Filtro)
  E verificar o campo Descrição
  E verificar o campo Tipo
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI

Quando ver a tela: EPI (Consulta)
  resource_cnsCadastroEPI.Acessar Tela Cadastro de EPI

E clicar no botao Pesquisar
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: EPI (Filtro)
    resource_cnsCadastroEPI.Acessar Tela Cadastro de EPI (Filtro)

E verificar o campo Descrição
    resource_cnsCadastroEPI.Verificar o campo Descrição

E verificar o campo Tipo
    resource_cnsCadastroEPI.Verificar o campo Tipo

E verificar se existe o campo Teste na tela
     resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"