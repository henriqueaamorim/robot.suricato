*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmotivosusofrota.robot
Resource        ../../../../resource/app/resource_cnsmotivosusofrota.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta Motivos de Uso da Frota
${APPNAME}     cnsmotivosusofrota
${OBJETIVO}    Verificar todos os campos na tela Consulta Motivos de Uso da Frota.

*** Test Cases ***
Testcase: Verificar todos os campos na tela Consulta Motivos de Uso da Frota
  [Tags]  VERIFY  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Motivo de Uso
  Quando eu visualizar a tela: Motivos de Uso da Frota (Inclusão)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Motivos de Uso da Frota
  E verificar a label Motivo do Uso
  E verificar a label Descrição
  E verificar a label Tipo de Uso
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Motivo de Uso
  resource_mnu.Clicar No Menu Veículos | Cadastro | Motivo de Uso

Quando eu visualizar a tela: Motivos de Uso da Frota (Inclusão)
  resource_frmmotivosusofrota.Acessar Tela Motivos de Uso da Frota (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Motivos de Uso da Frota
  resource_cnsmotivosusofrota.Acessar Tela Consulta Motivos de Uso da Frota

E verificar a label Motivo do Uso
  resource_cnsmotivosusofrota.Verificar a label Motivo do Uso

E verificar a label Descrição
  resource_cnsmotivosusofrota.Verificar a label Descrição

E verificar a label Tipo de Uso
  resource_cnsmotivosusofrota.Verificar a label Tipo de Uso

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
