*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTrocaPermissao.robot
Resource        ../../../../resource/app/resource_frmTrocaPermissao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Programação - Troca de Grupo de Acesso (Filtro)
${SCREENNAME}  Programação - Troca de Grupo de Acesso
${APPNAME}     cnsTrocaPermissao


*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Programação - Troca de Grupo de Acesso (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Grupo de Acesso
  Quando visualizar a tela: Programação - Troca de Grupo de Acesso (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Programação - Troca de Grupo de Acesso (Filtro)
  E verifcar a label: Pesquisa
  E verificar o campo: Empresa
  E verificar o campo: Tipo
  E verificar o campo: Matrícula
  E verificar o campo: Nome	    
  E verificar o campo: Data Inicial	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Grupo de Acesso
  resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Grupo de Acesso

Quando visualizar a tela: Programação - Troca de Grupo de Acesso (Consulta)
  resource_cnsTrocaPermissao.Acessar Tela: Programação - Troca de Grupo de Acesso (Consulta)

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Programação - Troca de Grupo de Acesso (Filtro)  
    resource_cnsTrocaPermissao.Acessar Tela: Programação - Troca de Grupo de Acesso (Filtro)

E verifcar a label: Pesquisa
    resource_cnsTrocaPermissao.Verificar a label Pesquisa

E verificar o campo: Empresa
    resource_cnsTrocaPermissao.Verificar o campo Empresa

E verificar o campo: Tipo
    resource_cnsTrocaPermissao.Verificar o campo Tipo

E verificar o campo: Matrícula
    resource_cnsTrocaPermissao.Verificar o campo Matrícula 

E verificar o campo: Nome
    resource_cnsTrocaPermissao.Verificar o campo Nome

E verificar o campo: Data Inicial	
    resource_cnsTrocaPermissao.Verificar o campo Data Inicial

E verificar se existe o campo Teste na tela    
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
