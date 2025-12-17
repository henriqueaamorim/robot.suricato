*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsBloqueioCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}     Verificar todos os campos na tela: Crachá Bloqueado (Filtro)
${SCREENNAME}   Crachá Bloqueado
${APPNAME}      cnsBloqueioCracha

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Crachá Bloqueado (Filtro)
  [Tags]    VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  Quando visualizar a tela: Crachá Bloqueado (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Crachá Bloqueado (Filtro)
  E verificar a labe: Pesquisa
  E verificar o campo: Crachá
  E verificar o campo: Data do Bloqueio	
  E verificar o campo: Hora do Bloqueio	
  E verificar o campo: Motivo
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio

Quando visualizar a tela: Crachá Bloqueado (Consulta)
  resource_cnsBloqueioCracha.Acessar Tela Consulta de Crachá Bloqueado

E clicar no botão: Pesquisar registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Crachá Bloqueado (Filtro)  
    resource_cnsBloqueioCracha.Acessar Tela: Crachá Bloqueado (Filtro)

E verificar a labe: Pesquisa
    resource_cnsBloqueioCracha.Verificar a label Pesquisa

E verificar o campo: Crachá
    resource_cnsBloqueioCracha.Verificar o campo: Crachá

E verificar o campo: Data do Bloqueio	
    resource_cnsBloqueioCracha.Verificar o campo: Data do Bloqueio

E verificar o campo: Hora do Bloqueio	
    resource_cnsBloqueioCracha.Verificar o campo: Hora do Bloqueio

E verificar o campo: Motivo
    resource_cnsBloqueioCracha.Verificar o campo: Motivo

E verificar se existe o campo Teste na tela    
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"