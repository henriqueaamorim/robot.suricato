*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmotivopessoasnaograta.robot
Resource        ../../../../resource/app/resource_consmotivopessoasnaogratacad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Motivo de Pessoa não Grata (Consulta)
${SCREENNAME}  Motivo de Pessoa não Grata
${APPNAME}     consmotivopessoasnaogratacad

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Motivo de Pessoa não Grata (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Pessoa Não Grata | Motivo
  Quando visualizar a tela: Motivo de Pessoa não Grata (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Descrição
  E verificar a label: Procedimento Padrão
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Pessoa Não Grata | Motivo
  resource_mnu.Clicar No Menu Identificação | Pessoa Não Grata | Motivo

Quando visualizar a tela: Motivo de Pessoa não Grata (Consulta)
  resource_consmotivopessoasnaogratacad.Acessar Tela: Motivo de Pessoa não Grata (Consulta)

Então devo verificar a label: Código
    resource_consmotivopessoasnaogratacad.Verificar a label: Código

E verificar a label: Descrição
    resource_consmotivopessoasnaogratacad.Verificar a label: Descrição

E verificar a label: Procedimento Padrão
    resource_consmotivopessoasnaogratacad.Verificar a label: Procedimento Padrão

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

