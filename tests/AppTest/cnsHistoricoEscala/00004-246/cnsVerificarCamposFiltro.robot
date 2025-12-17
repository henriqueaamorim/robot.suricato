*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoEscala.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas os campos na Tela: Histórico de Escala (Filtro)
${SCREENNAME}  Escala
${APPNAME}     cnsHistoricoEscala

*** Test Cases ***
Testcase: Verificar todas os campos na Tela: Histórico de Escala (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Escala
  Quando visualizar a tela: Histórico de Escala (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Histórico de Escala (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Empresa
  E verificar o campo: Tipo do Colaborador	
  E verificar o campo: Matrícula
  E verificar o campo: Nome
  E verificar o campo: Data da Alteração
  E verificar o campo: Código da Escala
  E verificar o campo: Chave Externa	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Escala
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Escala

Quando visualizar a tela: Histórico de Escala (Consulta)
  resource_cnsHistoricoEscala.Acessar Tela Consulta de Histórico de Escalas

E clicar no botão: Pesquisar registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Escala (Filtro)
    resource_cnsHistoricoEscala.Acessar Tela Filtro de Histórico de Escalas  

E verificar a label: Pesquisa
    resource_cnsHistoricoEscala.Verificar a label Pesquisa

E verificar o campo: Empresa
    resource_cnsHistoricoEscala.Verificar o campo Empresa

E verificar o campo: Tipo do Colaborador	
    resource_cnsHistoricoEscala.Verificar o campo Tipo do Colaborador

E verificar o campo: Matrícula
    resource_cnsHistoricoEscala.Verificar o campo Matrícula

E verificar o campo: Nome
    resource_cnsHistoricoEscala.Verificar o campo Nome

E verificar o campo: Data da Alteração
    resource_cnsHistoricoEscala.Verificar o campo Data da Alteração

E verificar o campo: Código da Escala
    resource_cnsHistoricoEscala.Verificar o campo Código da Escala

E verificar o campo: Chave Externa	
    resource_cnsHistoricoEscala.Verificar o campo Chave Externa

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
