*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_frmautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_cnsmotivoacessoimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Motivo de Acesso de Candidato (Filtro)
${SCREENNAME}  Motivo de Acesso de Candidato
${APPNAME}     cnsmotivoacessoimprensa

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Motivo de Acesso de Candidato (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Motivo de Acesso
  Quando visualizar a tela: Motivo de Acesso de Candidato (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Motivo de Acesso de Candidato (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Código
  E verificar o campo: Motivo
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Motivo de Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Motivo de Acesso

Quando visualizar a tela: Motivo de Acesso de Candidato (Consulta)
  resource_cnsmotivoacessoimprensa.Acessar Tela: Motivo de Acesso de Candidato (Consulta)

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Motivo de Acesso de Candidato (Filtro)  
  resource_cnsmotivoacessoimprensa.Acessar Tela: Motivo de Acesso de Candidato (Filtro)

E verificar a label: Pesquisa
    resource_cnsmotivoacessoimprensa.Verificar a label Pesquisa

E verificar o campo: Código
    resource_cnsmotivoacessoimprensa.Verificar o campo: Código

E verificar o campo: Motivo
    resource_cnsmotivoacessoimprensa.Verificar o campo: Motivo

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"