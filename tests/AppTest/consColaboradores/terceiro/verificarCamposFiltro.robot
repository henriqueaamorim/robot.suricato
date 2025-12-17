*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conscolaboradores.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Terceiro (Filtro)
${SCREENNAME}  Terceiro
${APPNAME}     conscolaboradores

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Terceiro (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Terceiro
  Quando visualizar a tela: Terceiro (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Terceiro (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Empresa
  E verificar o campo: Tipo de Colaborador	
  E verificar o campo: Nome
  E verificar o campo: Apelido
  E verificar o campo: Matrícula
  E verificar o campo: PIS
  E verificar o campo: Número do CPF	
  E verificar o campo: Ramal
  E verificar o campo: External Key	
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Terceiro
  resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Cadastro de Terceiro

Quando visualizar a tela: Terceiro (Consulta)
  resource_conscolaboradores.Acessar Tela: Terceiro (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.E Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Terceiro (Filtro)
    resource_conscolaboradores.Acessar Tela: Terceiro (Filtro)

E verificar a label: Pesquisa
    resource_conscolaboradores.Verificar a label Pesquisa
  
E verificar o campo: Empresa
    resource_conscolaboradores.Verificar o campo Empresa
  
E verificar o campo: Tipo de Colaborador	
    resource_conscolaboradores.Verificar o campo Tipo de Colaborador
  
E verificar o campo: Nome
    resource_conscolaboradores.Verificar o campo Nome

E verificar o campo: Apelido
    resource_conscolaboradores.Verificar o campo Apelido
  
E verificar o campo: Matrícula
    resource_conscolaboradores.Verificar o campo Matrícula
  
E verificar o campo: PIS
    resource_conscolaboradores.Verificar o campo PIS

E verificar o campo: Número do CPF	
    resource_conscolaboradores.Verificar o campo Número do CPF

E verificar o campo: Ramal
    resource_conscolaboradores.Verificar o campo Ramal

E verificar o campo: External Key	
    resource_conscolaboradores.Verificar o campo External Key

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"