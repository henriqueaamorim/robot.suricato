*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbloqueiocolaborador.robot
Resource        ../../../../resource/app/resource_frmbloqueiocolaborador.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Bloqueio de Colaborador 
${APPNAME}     frmbloqueiocolaborador
${OBJETIVO}    Verificar todos os campos na tela Bloqueio de Colaborador 


*** Test Cases ***

Testcase: Verificar todos os campos na tela Bloqueio de Colaborador
  [Tags]  VERIFY  249  246 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio
  Quando eu visualizar a tela: Consulta de Bloqueio de Colaborador
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Bloqueio de Colaborador (Inclusão)
  E verificar o campo Código do Colaborador *
  E verificar o campo Empresa      
  E verificar o campo Tipo do Colaborador    
  E verificar o campo Matrícula     
  E verificar o campo Nome       
  E verificar o campo Data do Bloqueio do Acesso *
  E verificar o campo Hora do Bloqueio do Acesso *
  E verificar o campo Código do Motiva do Bloqueio *
  E verificar o campo Observação Bloqueia/Liberação 
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio

Quando eu visualizar a tela: Consulta de Bloqueio de Colaborador
  resource_consbloqueiocolaborador.Acessar Tela Consulta de Bloqueio de Colaborador

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Bloqueio de Colaborador (Inclusão)
  resource_frmbloqueiocolaborador.Acessar Tela Bloqueio de Colaborador (Inclusão)

E verificar o campo Código do Colaborador *
  resource_frmbloqueiocolaborador.E verificar o campo Código do Colaborador

E verificar o campo Empresa      
  resource_frmbloqueiocolaborador.E verificar o campo Empresa   

E verificar o campo Tipo do Colaborador    
  resource_frmbloqueiocolaborador.E verificar o campo Tipo do Colaborador 

E verificar o campo Matrícula     
  resource_frmbloqueiocolaborador.E verificar o campo Matrícula

E verificar o campo Nome       
  resource_frmbloqueiocolaborador.E verificar o campo Nome 

E verificar o campo Data do Bloqueio do Acesso *
  resource_frmbloqueiocolaborador.E verificar o campo Data do Bloqueio do Acesso

E verificar o campo Hora do Bloqueio do Acesso *
  resource_frmbloqueiocolaborador.E verificar o campo Hora do Bloqueio do Acesso

E verificar o campo Código do Motiva do Bloqueio *
  resource_frmbloqueiocolaborador.E verificar o campo Código do Motiva do Bloqueio

E verificar o campo Observação Bloqueia/Liberação 
  resource_frmbloqueiocolaborador.E verificar o campo Observação Bloqueia/Liberação

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"