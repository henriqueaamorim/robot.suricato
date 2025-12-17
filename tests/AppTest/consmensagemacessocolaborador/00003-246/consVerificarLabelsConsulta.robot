*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmensagemcolaborador.robot
Resource        ../../../../resource/app/resource_consmensagemacessocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Mensagem de Acesso (Consulta)
${SCREENNAME}  Mensagem de Acesso
${APPNAME}     consmensagemacessocolaborador

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Mensagem de Acesso (Consulta)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem 
  Quando clicar na Aba: Colaboradores
  Então devo visualizar a tela: Mensagem de Acesso (Consulta)
  E verificar a label: Empresa
  E verificar a label: Tipo de Colaborador
  E verificar a label: Matrícula
  E verificar a label: Data Inic
  E verificar a label: Hora Inicial da Mensagem
  E verificar a label: Mensagem
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Registro | Envio de Mensagem 
  resource_mnu.Clicar No Menu Registro | Envio de Mensagem

Quando clicar na Aba: Colaboradores  
  resource_consmensagemacessocolaborador.Clicar na Aba: Colaboradores

Então devo visualizar a tela: Mensagem de Acesso (Consulta)
  resource_consmensagemacessocolaborador.Acessar Tela: Mensagem de Acesso (Consulta) 

E verificar a label: Empresa
  resource_consmensagemacessocolaborador.Verificar a label: Empresa

E verificar a label: Tipo de Colaborador
  resource_consmensagemacessocolaborador.Verificar a label: Tipo de Colaborador

E verificar a label: Matrícula
  resource_consmensagemacessocolaborador.Verificar a label: Matrícula

E verificar a label: Data Inic
  resource_consmensagemacessocolaborador.Verificar a label: Data Inic

E verificar a label: Hora Inicial da Mensagem
  resource_consmensagemacessocolaborador.Verificar a label: Hora Inicial da Mensagem

E verificar a label: Mensagem
  resource_consmensagemacessocolaborador.Verificar a label: Mensagem

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  

