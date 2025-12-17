*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cons_TiposEPi.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}     Verificar todas as labels na tela: Cadastro Tipos Equipamento de Proteção Individual (Consulta)
${SCREENNAME}   Cadastro Tipos Equipamento de Proteção Individual
${APPNAME}      cons_TiposEPi

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Cadastro Tipos Equipamento de Proteção Individual (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | Tipos de EPI
  Quando ver a tela: Cadastro Tipos Equipamento de Proteção Individual (Consulta)
  Então devo verificar a label Cód Tipo
  E verificar a label Descrição
  E verificar se existe o campo Teste na tela  

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | Tipos de EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Tipos de EPI

Quando ver a tela: Cadastro Tipos Equipamento de Proteção Individual (Consulta)
  resource_cons_TiposEPi.Acessar Tela Consulta Cadastro Tipos Equipamento de Proteção Individual

Então devo verificar a label Cód Tipo
    resource_cons_TiposEPi.Verificar a label Cód. Tipo

E verificar a label Descrição
    resource_cons_TiposEPi.Verificar a label Descrição

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"