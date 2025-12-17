*** Settings ***
Resource        ../../../../../resource/resource_login.robot
Resource        ../../../../../resource/app/resource_conscolaboradores.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Empregado (Filtro)
${SCREENNAME}  Empregado
${APPNAME}     conscolaboradores

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Empregado (Filtro)
  [Tags]  VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  Quando visualizar a tela: Empregado (Consulta)
  E clicar no botão Pesquisar
  Então devo visualizar a tela: Empregado (Filtro)
  E verificar o campo: Empresa
  E verificar o campo: Matrícula
  E verificar o campo: Nome
  E verificar o campo: PIS
  E verificar o campo: CPF	
  E verificar o campo: Crachá

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

Quando visualizar a tela: Empregado (Consulta)
  resource_conscolaboradores.Acessar Tela: Empregado (Consulta)

E clicar no botão Pesquisar
  resource_btn.E Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Empregado (Filtro)
    resource_conscolaboradores.Acessar Tela: Empregado (Filtro)

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

E verificar o campo: Crachá
    resource_conscolaboradores.Verificar o campo Crachá
