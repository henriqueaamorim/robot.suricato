*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmotivopessoasnaograta.robot
Resource        ../../../../resource/app/resource_consmotivopessoasnaogratacad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Motivo de Pessoa não Grata (Filtro)
${SCREENNAME}  Motivo de Pessoa não Grata
${APPNAME}     consmotivopessoasnaogratacad

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Motivo de Pessoa não Grata (Filtro)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Pessoa Não Grata | Motivo
  Quando visualizar a tela: Motivo de Pessoa não Grata (Consulta)
  E clicar no botão: Pesquisar resgistros
  Então devo visualizar a tela: Motivo de Pessoa não Grata (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Descrição	
  E verificar o campo: Código	
  E verificar o campo: Procedimento Padrão	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Pessoa Não Grata | Motivo
  resource_mnu.Clicar No Menu Identificação | Pessoa Não Grata | Motivo

Quando visualizar a tela: Motivo de Pessoa não Grata (Consulta)
  resource_consmotivopessoasnaogratacad.Acessar Tela: Motivo de Pessoa não Grata (Consulta)

E clicar no botão: Pesquisar resgistros
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Motivo de Pessoa não Grata (Filtro)
  resource_consmotivopessoasnaogratacad.Acessar Tela: Motivo de Pessoa não Grata (Filtro)

E verificar a label: Pesquisa
    resource_consmotivopessoasnaogratacad.Verificar a label Pesquisa

E verificar o campo: Descrição	
    resource_consmotivopessoasnaogratacad.Verificar o campo: Descrição

E verificar o campo: Código	
    resource_consmotivopessoasnaogratacad.Verificar o campo: Código

E verificar o campo: Procedimento Padrão	
    resource_consmotivopessoasnaogratacad.Verificar o campo: Procedimento Padrão

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"