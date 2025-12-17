*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizarAcessoColaboradores.robot
Resource        ../../../../resource/app/resource_frmAutorizarAcessoColaboradores.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Área Restrita de Colaboradores
${APPNAME}     frmAutorizarAcessoColaboradores
${OBJETIVO}    Verificar todos os campos na tela Área Restrita de Colaboradores

*** Test Cases ***

Testcase: Verificar todos os campos na tela Área Restrita de Colaboradores
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Área Restrita | Autorizar Acesso
  Quando eu visualizar a tela: Consulta Autorizar Acesso de Colaboradores
  E clicar no botão: Abrir um novo registro Registros
  Então devo visualizar a tela: Acessar Tela Áreas Restritas de Colaboradores (Inclusão)
  E verificar o campo Código do Colaborador
  E verificar o campo Empresa
  E verificar o campo Tipo do Colaborador
  E verificar o campo Matrícula
  E verificar o campo Nome
  E verificar o campo Data Inicial
  E verificar o campo Hora Inicial
  E verificar o campo Grupo de Acesso
  E verificar o campo Data Final
  E verificar o campo Hora Final
  E verificar o campo Observações
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Área Restrita | Autorizar Acesso
  resource_mnu.Clicar No Menu Registro | Área Restrita | Autorizar Acesso

Quando eu visualizar a tela: Consulta Autorizar Acesso de Colaboradores
  resource_cnsAutorizarAcessoColaboradores.Acessar Tela Consulta Autorizar Acesso de Colaboradores

E clicar no botão: Abrir um novo registro Registros
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Acessar Tela Áreas Restritas de Colaboradores (Inclusão)
  resource_frmAutorizarAcessoColaboradores.Acessar Tela Áreas Restritas de Colaboradores (Inclusão)

E verificar o campo Código do Colaborador
  resource_frmAutorizarAcessoColaboradores.E verificar o campo Código do Colaborador   

E verificar o campo Empresa
  resource_frmAutorizarAcessoColaboradores.E verificar o campo Empresa     

E verificar o campo Tipo do Colaborador
  resource_frmAutorizarAcessoColaboradores.E verificar o campo Tipo do Colaborador 

E verificar o campo Matrícula  
  resource_frmAutorizarAcessoColaboradores.E verificar o campo Matrícula  

E verificar o campo Nome  
  resource_frmAutorizarAcessoColaboradores.E verificar o campo Nome  

E verificar o campo Data Inicial 
  resource_frmAutorizarAcessoColaboradores.E verificar o campo Data Inicial 

E verificar o campo Hora Inicial 
  resource_frmAutorizarAcessoColaboradores.E verificar o campo Hora Inicial 

E verificar o campo Grupo de Acesso 
  resource_frmAutorizarAcessoColaboradores.E verificar o campo Grupo de Acesso 

E verificar o campo Data Final 
  resource_frmAutorizarAcessoColaboradores.E verificar o campo Data Final 

E verificar o campo Hora Final 
  resource_frmAutorizarAcessoColaboradores.E verificar o campo Hora Final 

E verificar o campo Observações
  resource_frmAutorizarAcessoColaboradores.E verificar o campo Observações

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"