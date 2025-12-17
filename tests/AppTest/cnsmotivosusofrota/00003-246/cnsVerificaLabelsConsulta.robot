*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmotivosusofrota.robot
Resource        ../../../../resource/app/resource_cnsmotivosusofrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Motivos de Uso da Frota (Consulta)
${SCREENNAME}  Motivos de Uso da Frota
${APPNAME}     cnsmotivosusofrota

*** Test Cases ***
Testcase: Acessar Tela: Motivos de Uso da Frota (Consulta)
  [Tags]  VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Motivo de Uso
  Quando visualizar a tela: Motivos de Uso da Frota (Consulta)
  Então devo verificar a label: Motivo do Uso
  E verificar a label: Descrição
  E verificar a label: Tipo de Uso
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Motivo de Uso
  resource_mnu.Clicar No Menu Veículos | Cadastro | Motivo de Uso

Quando visualizar a tela: Motivos de Uso da Frota (Consulta)
  resource_cnsmotivosusofrota.Acessar Tela Consulta Motivos de Uso da Frota

Então devo verificar a label: Motivo do Uso
  resource_cnsmotivosusofrota.Verificar a label Motivo do Uso

E verificar a label: Descrição
  resource_cnsmotivosusofrota.Verificar a label Descrição

E verificar a label: Tipo de Uso
  resource_cnsmotivosusofrota.Verificar a label Tipo de Uso

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"