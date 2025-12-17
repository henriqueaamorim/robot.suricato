*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoPerfil.robot
Resource        ../../../../resource/app/resource_cnsHistoricoPerfil.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Histórico de Perfil (Consulta)
${SCREENNAME}  Histórico de Perfil
${APPNAME}     cnsHistoricoPerfil


*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Histórico de Perfil (Consulta)
  [Tags]   VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Histórico de Perfil
  Quando visualizar a tela: Histórico de Perfil (Consulta)
  Então devo verificar a label: Titular
  E verificar a label: Provisório
  E verificar a label: Data Inicial
  E verificar a label: Hora Inicial
  E verificar a label: Data Final
  E verificar a label: Hora Final
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Histórico de Perfil
  resource_mnu.Clicar No Menu Configurações | Usuários | Histórico de Perfil

Quando visualizar a tela: Histórico de Perfil (Consulta)
  resource_cnsHistoricoPerfil.Acessar Tela: Históricos de Perfil (Consulta)

Então devo verificar a label: Titular
  resource_cnsHistoricoPerfil.Verificar a label: Titular

E verificar a label: Provisório
  resource_cnsHistoricoPerfil.Verificar a label: Provisório

E verificar a label: Data Inicial
  resource_cnsHistoricoPerfil.Verificar a label: Data Inicial

E verificar a label: Hora Inicial
  resource_cnsHistoricoPerfil.Verificar a label: Hora Inicial

E verificar a label: Data Final
  resource_cnsHistoricoPerfil.Verificar a label: Data Final

E verificar a label: Hora Final
  resource_cnsHistoricoPerfil.Verificar a label: Hora Final

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

