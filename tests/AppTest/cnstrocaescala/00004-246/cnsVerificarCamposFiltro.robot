*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmtrocaescala.robot
Resource        ../../../../resource/app/resource_cnstrocaescala.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Programação - Troca de Escala (Filtro)
${SCREENNAME}  Programação - Troca de Escala
${APPNAME}     cnstrocaescala

*** Test Cases ***

Testcase: Verificar todos os campos na tela: Programação - Troca de Escala (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Escala
  Quando visualizar a tela: Programação - Troca de Escala (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Programação - Troca de Escala (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Empresa
  E verificar o campo: Tipo
  E verificar o campo: Matrícula
  E verificar o campo: Nome
  E verificar o campo: Data Inicial	
  E verificar se existe o campo Teste na tela
 
*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Escala
  Clicar No Menu Identificação | Colaborador | Programação | Troca de Escala

Quando visualizar a tela: Programação - Troca de Escala (Consulta)
  resource_cnstrocaescala.Acessar Tela: Programação - Troca de Escala (Consulta)

E clicar no botão: Pesquisar Registros  
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Programação - Troca de Escala (Filtro)
  resource_cnstrocaescala.Acessar Tela: Programação - Troca de Escala (Filtro)

E verificar a label: Pesquisa
    resource_cnstrocaescala.Verificar a label Pesquisa

E verificar o campo: Empresa
    resource_cnstrocaescala.Verificar o campo Empresa

E verificar o campo: Tipo
    resource_cnstrocaescala.Verificar o campo Tipo

E verificar o campo: Matrícula
    resource_cnstrocaescala.Verificar o campo Matrícula 

E verificar o campo: Nome
    resource_cnstrocaescala.Verificar o campo Nome

E verificar o campo: Data Inicial	
    resource_cnstrocaescala.Verificar o campo Data Inicial

E verificar se existe o campo Teste na tela 
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
