*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consdesbloqueiocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}     Verificar todos os campos na tela: Bloqueio de Colaborador (Filtro)
${SCREENNAME}   Bloqueio de Colaborador
${APPNAME}      consdesbloqueiocolaborador

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Bloqueio de Colaborador (Filtro)
  [Tags]    VERIFY   246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Desbloqueio
  Quando visualizar a tela: Bloqueio de Colaborador (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Bloqueio de Colaborador (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Empresa
  E verificar o campo: Tipo de Colaborador	
  E verificar o campo: Matrícula
  E verificar o campo: Data do Bloqueio	
  E verificar o campo: Hora do Bloqueio	
  E verificar o campo: Motivo do Bloqueio	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Desbloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Desbloqueio

Quando visualizar a tela: Bloqueio de Colaborador (Consulta)
  resource_consdesbloqueiocolaborador.Acessar Tela Consulta de Bloqueio de Colaborador

E clicar no botão: Pesquisar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Bloqueio de Colaborador (Filtro)  
    resource_consdesbloqueiocolaborador.Acessar Tela: Bloqueio de Colaborador (Filtro)

E verificar a label: Pesquisa
    resource_consdesbloqueiocolaborador.Verificar a label Pesquisa

E verificar o campo: Empresa
    resource_consdesbloqueiocolaborador.Verificar o campo: Empresa

E verificar o campo: Tipo de Colaborador	
    resource_consdesbloqueiocolaborador.Verificar o campo: Tipo de Colaborador

E verificar o campo: Matrícula
    resource_consdesbloqueiocolaborador.Verificar o campo: Matrícula

E verificar o campo: Data do Bloqueio	
    resource_consdesbloqueiocolaborador.Verificar o campo: Data do Bloqueio

E verificar o campo: Hora do Bloqueio	
    resource_consdesbloqueiocolaborador.Verificar o campo: Hora do Bloqueio

E verificar o campo: Motivo do Bloqueio	
    resource_consdesbloqueiocolaborador.Verificar o campo: Motivo do Bloqueio

E verificar se existe o campo Teste na tela    
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"