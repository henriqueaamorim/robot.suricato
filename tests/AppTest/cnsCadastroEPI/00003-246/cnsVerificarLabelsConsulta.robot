*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCadastroEPI.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar Todas as Labels na Tela: EPI (Consulta)
${SCREENNAME}  EPI
${APPNAME}     cnsCadastroEPI

*** Test Cases ***
Testcase: Verificar Todas as Labels na Tela: EPI (Consulta)
  [Tags]   VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI
  Quando ver a tela: EPI (Consulta)
  Então devo verificar a label Cód
  E verificar a label Descrição Cód
  E verificar a label Tipo
  E verificar a label Descrição Tipo
  E verificar a label Validade (Dias)
  E verificar a label Revisão (Dias)
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI

Quando ver a tela: EPI (Consulta)
  resource_cnsCadastroEPI.Acessar Tela Cadastro de EPI

Então devo verificar a label Cód  
    resource_cnsCadastroEPI.Verificar a label Cód.

E verificar a label Descrição Cód
    resource_cnsCadastroEPI.Verificar a label Descrição Cód

E verificar a label Tipo
    resource_cnsCadastroEPI.Verificar a label Tipo

E verificar a label Descrição Tipo
    resource_cnsCadastroEPI.Verificar a label Descrição Tipo

E verificar a label Validade (Dias)
    resource_cnsCadastroEPI.Verificar a label Validade (Dias)

E verificar a label Revisão (Dias)
    resource_cnsCadastroEPI.Verificar a label Revisão (Dias)

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"