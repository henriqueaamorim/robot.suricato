*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmotivobloqueio.robot
Resource        ../../../../resource/app/resource_cnsMotivoBloqueioPesquisacad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Motivo de Bloqueio (Filtro)
${SCREENNAME}  Motivo de Bloqueio
${APPNAME}     cnsMotivoBloqueioPesquisacad


*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Motivo de Bloqueio (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio
  Quando eu visualizar a tela: Motivo de Bloqueio (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Motivo de Bloqueio (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Código do Motivo	
  E verificar o campo: Descrição	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio

Quando eu visualizar a tela: Motivo de Bloqueio (Consulta)
  resource_cnsMotivoBloqueioPesquisacad.Acessar Tela: Motivo de Bloqueio (Consulta)

E clicar no botão: Pesquisar registro
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Motivo de Bloqueio (Filtro)
  resource_cnsMotivoBloqueioPesquisacad.Acessar Tela: Motivo de Bloqueio (Filtro)

E verificar a label: Pesquisa
  resource_cnsMotivoBloqueioPesquisacad.Verificar a label Pesquisa

E verificar o campo: Código do Motivo	
  resource_cnsMotivoBloqueioPesquisacad.Verificar o campo: Código do Motivo

E verificar o campo: Descrição	
  resource_cnsMotivoBloqueioPesquisacad.Verificar o campo: Descrição

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"