*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsPontes.robot
Resource        ../../../../resource/app/resource_frmPontes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Programação - Troca de Ponte (Filtro) 
${SCREENNAME}  Programação - Troca de Ponte (Consulta) 
${APPNAME}     cnsPontes

*** Test Cases ***

Testcase: Verificar todos os campos na tela: Programação - Troca de Ponte (Filtro) 
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Ponte
  Quando eu visualizar a tela: Programação - Troca de Ponte (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Programação - Troca de Ponte (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Empresa 
  E verificar o campo: Tipo
  E verificar o campo: Nome
  E verificar o campo: Data 1	
  E verificar o campo: Matrícula	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Ponte
   resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Ponte

Quando eu visualizar a tela: Programação - Troca de Ponte (Consulta)
   resource_cnsPontes.Acessar Tela: Programação - Troca de Ponte (Consulta)

E clicar no botão: Pesquisar registro
   resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Programação - Troca de Ponte (Filtro)
   resource_cnsPontes.Acessar Tela: Programação - Troca de Ponte (FIltro)

E verificar a label: Pesquisa 
    resource_cnsPontes.Verificar a label Pesquisa

E verificar o campo: Empresa
    resource_cnsPontes.Verificar o campo Empresa

E verificar o campo: Tipo
    resource_cnsPontes.Verificar o campo Tipo

E verificar o campo: Nome
    resource_cnsPontes.Verificar o campo Nome

E verificar o campo: Data 1	
    resource_cnsPontes.Verificar o campo Data 1 

E verificar o campo: Matrícula	
    resource_cnsPontes.Verificar o campo Matrícula 

E verificar se existe o campo Teste na tela   
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"