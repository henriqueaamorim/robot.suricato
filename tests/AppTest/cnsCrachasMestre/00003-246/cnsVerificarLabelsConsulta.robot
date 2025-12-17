*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCrachasMestre.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Crachá Mestre (Consulta)
${SCREENNAME}  Crachá Mestre
${APPNAME}     cnsCrachasMestre

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Crachá Mestre (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Mestre e Acesso Geral
  Quando visualizar a tela: Crachá Mestre (Consulta)
  Então devo verificar a label: Empresa
  E verificar a label: Tipo do Colaborador
  E verificar a label: Cadastro Responsável
  E verificar a label: Data Início
  E verificar a label: Hora Início
  E verificar a label: Crachá
  E verificar a label: Data Final
  E verificar a label: Hora Final
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Mestre e Acesso Geral
  resource_mnu.Clicar No Menu Registro | Crachá | Mestre e Acesso Geral

Quando visualizar a tela: Crachá Mestre (Consulta)
  resource_cnsCrachasMestre.Acessar Tela Consulta de Crachás Mestre

Então devo verificar a label: Empresa
    resource_cnsCrachasMestre.Verificar a label: Empresa

E verificar a label: Tipo do Colaborador
    resource_cnsCrachasMestre.Verificar a label: Tipo do Colaborador

E verificar a label: Cadastro Responsável
    resource_cnsCrachasMestre.Verificar a label: Cadastro Responsável

E verificar a label: Data Início
    resource_cnsCrachasMestre.Verificar a label: Data Início

E verificar a label: Hora Início
    resource_cnsCrachasMestre.Verificar a label: Hora Início

E verificar a label: Crachá
    resource_cnsCrachasMestre.Verificar a label: Crachá

E verificar a label: Data Final
    resource_cnsCrachasMestre.Verificar a label: Data Final

E verificar a label: Hora Final
    resource_cnsCrachasMestre.Verificar a label: Hora Final

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"