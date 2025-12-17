*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conscolaboradores.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Parceiro (Filtro)
${SCREENNAME}  Parceiro
${APPNAME}     conscolaboradores

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Parceiro (Filtro)
  [Tags]  VERIFY  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Parceiro
  Quando visualizar a tela: Parceiro (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Parceiro (Filtro)
  E verificar o campo: Empresa
  E verificar o campo: Matrícula
  E verificar o campo: Nome
  E verificar o campo: PIS
  E verificar o campo: CPF	
  E verificar o campo: Crachá
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Parceiro
  resource_mnu.Clicar No Menu Identificação | Colaborador | Parceiro

Quando visualizar a tela: Parceiro (Consulta)
  resource_conscolaboradores.Acessar Tela: Parceiro (Consulta)

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Parceiro (Filtro)
    resource_conscolaboradores.Acessar Tela: Parceiro (Filtro)

E verificar o campo: Empresa
    resource_conscolaboradores.Verificar o campo Empresa

E verificar o campo: Matrícula
    resource_conscolaboradores.Verificar o campo Matrícula

E verificar o campo: Nome
    resource_conscolaboradores.Verificar o campo Nome    

E verificar o campo: PIS
    resource_conscolaboradores.Verificar o campo PIS

E verificar o campo: CPF	
    resource_conscolaboradores.Verificar o campo Número do CPF

E verificar o campo: Ramal
    resource_conscolaboradores.Verificar o campo Ramal

E verificar o campo: Crachá
    resource_conscolaboradores.Verificar o campo

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"