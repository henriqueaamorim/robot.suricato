*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsDesbloquearCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Verificar todos os campos na tela: Desbloquear Crachá (Filtro)
${SCREENNAME}   Desbloquear Crachá
${APPNAME}      cnsDesbloquearCracha

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Desbloquear Crachá (Filtro)
  [Tags]  VERIFY    246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio
  Quando visualizar a tela: Desbloquear Crachá (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo verificar a tela: Desbloquear Crachá (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Crachá
  E verificar o campo: Data do Bloqueio	
  E verificar o campo: Hora do Bloqueio	
  E verificar o campo: Motivo do Bloqueio	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio

Quando visualizar a tela: Desbloquear Crachá (Consulta)
  resource_cnsDesbloquearCracha.Acessar Tela Consulta Desbloquear Crachá

E clicar no botão: Pesquisar registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo verificar a tela: Desbloquear Crachá (Filtro)  
    resource_cnsDesbloquearCracha.Acessar Tela: Desbloquear Crachá (Filtro)

E verificar a label: Pesquisa
    resource_cnsDesbloquearCracha.Verificar a label Pesquisa

E verificar o campo: Crachá
    resource_cnsDesbloquearCracha.Verificar o campo: Crachá

E verificar o campo: Data do Bloqueio	
    resource_cnsDesbloquearCracha.Verificar o campo: Data do Bloqueio

E verificar o campo: Hora do Bloqueio	
    resource_cnsDesbloquearCracha.Verificar o campo: Hora do Bloqueio

E verificar o campo: Motivo do Bloqueio	
    resource_cnsDesbloquearCracha.Verificar o campo: Motivo do Bloqueio

E verificar se existe o campo Teste na tela     
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"