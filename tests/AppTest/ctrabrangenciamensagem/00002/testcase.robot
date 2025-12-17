*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrmensagemcoletiva.robot
Resource        ../../../../resource/app/resource_ctrabrangenciamensagem.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${APPNAME}     ctrabrangenciamensagem
${SCREENNAME}  Abrangência
${OBJETIVO}    Verificar todos os campos na tela Abrangência.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Abrangência
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem | Coletiva
  Ao visualizar a tela: Mensagens Coletivas
  E clicar no botão: Seleção
  Então devo visualizar a tela: Abrangência
  E verificar o campo Empresa:
  E verificar o campo Tipo de Colaborador:
  E verificar o campo Colaborador:
  E verificar o campo Filial:
  E verificar o campo Local:
  E verificar o campo Cargo:
  E verificar o campo Escala:
  E verificar o campo Empresa Terceira:
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Envio de Mensagem | Coletiva
  resource_mnu.Clicar No Menu Registro | Envio de Mensagem | Coletiva

Ao visualizar a tela: Mensagens Coletivas
  resource_ctrmensagemcoletiva.Acessar Tela Mensagens Coletivas

E clicar no botão: Seleção
  resource_btn.Clicar No Botão Seleção

Então devo visualizar a tela: Abrangência
  resource_ctrabrangenciamensagem.Acessar Tela Abrangência

E verificar o campo Empresa:
  resource_ctrabrangenciamensagem.Verificar o campo Empresa:

E verificar o campo Tipo de Colaborador:
  resource_ctrabrangenciamensagem.Verificar o campo Tipo de Colaborador:

E verificar o campo Colaborador:
  resource_ctrabrangenciamensagem.Verificar o campo Colaborador:

E verificar o campo Filial:
  resource_ctrabrangenciamensagem.Verificar o campo Filial:

E verificar o campo Local:
  resource_ctrabrangenciamensagem.Verificar o campo Local:

E verificar o campo Cargo:
  resource_ctrabrangenciamensagem.Verificar o campo Cargo:

E verificar o campo Escala:
  resource_ctrabrangenciamensagem.Verificar o campo Escala:

E verificar o campo Empresa Terceira:
  resource_ctrabrangenciamensagem.Verificar o campo Empresa Terceira:

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
