*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmBloqueioCracha.robot
Resource        ../../../../resource/app/resource_cnsBloqueioCracha.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Bloqueio de Crachá
${APPNAME}     frmBloqueioCracha
${OBJETIVO}    Verificar todos os campos na tela Bloqueio de Crachá


*** Test Cases ***

Testcase: Verificar todos os campos na tela Bloqueio de Crachá
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  Quando eu visualizar a tela: Consulta de Crachá Bloqueado
  Clicar No Botão Abrir Um Novo Registro
  Então devo visualizar a tela: Acessar Tela Bloqueio de Crachá (Inclusão)
  E verificar o campo Crachá *        
  E verificar o campo Número Físico 
  E verificar o campo Data do Bloqueio *
  E verificar o campo Hora do Bloqueio *
  E verificar o campo Motivo *
  E verificar o campo Observações 
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio

Quando eu visualizar a tela: Consulta de Crachá Bloqueado
  resource_cnsBloqueioCracha.Acessar Tela Consulta de Crachá Bloqueado

Clicar No Botão Abrir Um Novo Registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Acessar Tela Bloqueio de Crachá (Inclusão)
  resource_frmBloqueioCracha.Acessar Tela Bloqueio de Crachá (Inclusão)

E verificar o campo Crachá *        
  resource_frmBloqueioCracha.E verificar o campo Crachá

E verificar o campo Número Físico 
  resource_frmBloqueioCracha.E verificar o campo Número Físico 

E verificar o campo Data do Bloqueio *
  resource_frmBloqueioCracha.E verificar o campo Data do Bloqueio

E verificar o campo Hora do Bloqueio *
  resource_frmBloqueioCracha.E verificar o campo Hora do Bloqueio

E verificar o campo Motivo *
  resource_frmBloqueioCracha.E verificar o campo Motivo

E verificar o campo Observações 
  resource_frmBloqueioCracha.E verificar o campo Observações 

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

