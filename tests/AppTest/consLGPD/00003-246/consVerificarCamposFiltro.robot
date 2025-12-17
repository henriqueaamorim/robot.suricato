*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consLGPD.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  LGPD - Consulta
${APPNAME}     consLGPD
${OBJETIVO}    Verificar todos os campos na tela LGPD (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela LGPD (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | LGPD
  Quando eu visualizar a tela: LGPD (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: LGPD (Filtro)
  E verificar o campo Código
  E verificar o campo Descrição
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configuração | LGPD
  resource_mnu.Clicar No Menu Configurações | LGPD

Quando eu visualizar a tela: LGPD (Consulta)
  resource_consLGPD.Acessar Tela LGPD

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: LGPD (Filtro)
  resource_consLGPD.Acessar Tela LGPD - Filtro

E verificar o campo Código
  resource_consLGPD.Verificar o campo Código

E verificar o campo Descrição
  resource_consLGPD.Verificar o campo Descrição

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
