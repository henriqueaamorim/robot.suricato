*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoPerfil.robot
Resource        ../../../../resource/app/resource_cnsHistoricoPerfil.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Histórico de Perfil (Filtro)
${SCREENNAME}  Histórico de Perfil
${APPNAME}     cnsHistoricoPerfil


*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Histórico de Perfil (Filtro)
  [Tags]  VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Histórico de Perfil
  Quando eu visualizar a tela: Histórico de Perfil (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Histórico de Perfil (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Titular
  E verificar o campo: Provisório
  E verificar o campo: Data Inicial	
  E verificar o campo: Hora Inicial	
  E verificar o campo: Data Final	
  E verificar o campo: Hora Final	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Histórico de Perfil
  resource_mnu.Clicar No Menu Configurações | Usuários | Histórico de Perfil

Quando eu visualizar a tela: Histórico de Perfil (Consulta)
  resource_cnsHistoricoPerfil.Acessar Tela: Históricos de Perfil (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Perfil (Filtro)
  resource_cnsHistoricoPerfil.Acessar Tela: Históricos de Perfil (Filtro)

E verificar a label: Pesquisa
  resource_cnsHistoricoPerfil.Verificar a label Pesquisa

E verificar o campo: Titular
  resource_cnsHistoricoPerfil.Verificar o campo: Titular

E verificar o campo: Provisório
  resource_cnsHistoricoPerfil.Verificar o campo: Provisório

E verificar o campo: Data Inicial	
  resource_cnsHistoricoPerfil.Verificar o campo: Data Inicial

E verificar o campo: Hora Inicial	
  resource_cnsHistoricoPerfil.Verificar o campo: Hora Inicial

E verificar o campo: Data Final	
  resource_cnsHistoricoPerfil.Verificar o campo: Data Final

E verificar o campo: Hora Final	
  resource_cnsHistoricoPerfil.Verificar o campo: Hora Final

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"