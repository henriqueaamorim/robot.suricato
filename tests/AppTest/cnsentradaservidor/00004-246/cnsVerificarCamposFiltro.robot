*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsentradaservidor.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Autorização de Entrada (Filtro)
${APPNAME}     cnsentradaservidor
${OBJETIVO}    Verificar todos os campos na tela: Autorização de Entrada (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Autorização de Entrada (Filtro)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Entrada
  Quando visualizar a tela: Autorização de Entrada (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Autorização de Entrada (Filtro)
  E verificar a label Pesquisa
  E verificar o campo Empresa
  E verificar o campo Tipo do Colaborador
  E verificar o campo Matrícula
  E verificar o campo Data de Entrada
  E verificar o campo Hora de Entrada
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Entrada
  resource_mnu.Clicar No Menu Entrada | Autorização | Entrada

Quando visualizar a tela: Autorização de Entrada (Consulta)
  resource_cnsentradaservidor.Acessar Tela: Autorização de Entrada (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Autorização de Entrada (Filtro)
  resource_cnsentradaservidor.Acessar Tela: Autorização de Entrada (Filtro)
  
E verificar a label Pesquisa
  resource_cnsentradaservidor.Verificar a label Pesquisa

E verificar o campo Empresa
  resource_cnsentradaservidor.Verificar o campo Empresa

E verificar o campo Tipo do Colaborador
  resource_cnsentradaservidor.Verificar o campo Tipo do Colaborador

E verificar o campo Matrícula
  resource_cnsentradaservidor.Verificar o campo Matrícula

E verificar o campo Data de Entrada
  resource_cnsentradaservidor.Verificar o campo Data de Entrada

E verificar o campo Hora de Entrada
  resource_cnsentradaservidor.Verificar o campo Hora de Entrada

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
