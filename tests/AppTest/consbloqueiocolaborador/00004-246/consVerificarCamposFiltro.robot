*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbloqueiocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Bloqueio de Colaborador (Filtro)
${SCREENNAME}  Bloqueio de Colaborador
${APPNAME}     consbloqueiocolaborador

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Bloqueio de Colaborador (Filtro)
  [Tags]    VERIFY   246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio
  Quando visualizar a tela: Bloqueio de Colaborador (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Bloqueio de Colaborador (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Empresa
  E verificar o campo: Tipo do Colaborador	
  E verificar o campo: Matrícula
  E verificar o campo: Data do Bloqueio	
  E verificar o campo: Hora do Bloqueio	
  E verificar o campo: Motivo do Bloqueio	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio

Quando visualizar a tela: Bloqueio de Colaborador (Consulta)
  resource_consbloqueiocolaborador.Acessar Tela Consulta de Bloqueio de Colaborador

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Bloqueio de Colaborador (Filtro)  
    resource_consbloqueiocolaborador.Acessar Tela: Bloqueio de Colaborador (Filtro)

E verificar a label: Pesquisa
    resource_consbloqueiocolaborador.Verificar a label Pesquisa

E verificar o campo: Empresa
    resource_consbloqueiocolaborador.Verificar o campo: Empresa

E verificar o campo: Tipo do Colaborador	
    resource_consbloqueiocolaborador.Verificar o campo: Tipo do Colaborador

E verificar o campo: Matrícula
    resource_consbloqueiocolaborador.Verificar o campo: Matrícula

E verificar o campo: Data do Bloqueio	
    resource_consbloqueiocolaborador.Verificar o campo: Data do Bloqueio

E verificar o campo: Hora do Bloqueio	
    resource_consbloqueiocolaborador.Verificar o campo: Hora do Bloqueio

E verificar o campo: Motivo do Bloqueio	
    resource_consbloqueiocolaborador.Verificar o campo: Motivo do Bloqueio

E verificar se existe o campo Teste na tela     
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
