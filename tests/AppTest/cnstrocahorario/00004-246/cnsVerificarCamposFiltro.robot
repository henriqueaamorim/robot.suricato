*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmtrocahorario.robot
Resource        ../../../../resource/app/resource_cnstrocahorario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Programação - Troca de Horário (Filtro)
${SCREENNAME}  Programação - Troca de Horário (Consulta)
${APPNAME}     cnstrocahorario

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Programação - Troca de Horário (Filtro)
  [Tags]    VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Horário
  Quando eu visualizar a tela: Programação - Troca de Horário (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Programação - Troca de Horário (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Empresa	
  E verificar o campo: Tipo	
  E verificar o campo: Matrícula
  E verificar o campo: Nome
  E verificar o campo: Data da Troca	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Horário
  resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Horário
  
Quando eu visualizar a tela: Programação - Troca de Horário (Consulta)
  resource_cnstrocahorario.Acessar Tela Consulta de Troca de Horários

E clicar no botão: Pesquisar registro
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Programação - Troca de Horário (Filtro)
  resource_cnstrocahorario.Acessar Tela de Troca de Horários (Filtro)

E verificar a label: Pesquisa
    resource_cnstrocahorario.Verificar a label Pesquisa

E verificar o campo: Empresa	
    resource_cnstrocahorario.Verificar o campo Empresa

E verificar o campo: Tipo	
    resource_cnstrocahorario.Verificar o campo Tipo

E verificar o campo: Matrícula
    resource_cnstrocahorario.Verificar o campo Matrícula 

E verificar o campo: Nome
    resource_cnstrocahorario.Verificar o campo Nome

E verificar o campo: Data da Troca	
    resource_cnstrocahorario.Verificar o campo Data da Troca

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"