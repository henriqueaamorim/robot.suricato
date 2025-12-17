*** Settings ***
Resource        ../../../../../resource/resource_login.robot
Resource        ../../../../../resource/app/resource_conscolaboradores.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Empregado (Consulta)
${SCREENNAME}  Empregado
${APPNAME}     conscolaboradores

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Empregado (Consulta)
  [Tags]  VERIFY  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  Quando visualizar a tela: Empregado (Consulta)
  E verificar a label: Código
  E verificar a label: Empresa
  E verificar a label: Matrícula
  E verificar a label: Nome
  E verificar a label: PIS
  E verificar a label: CPF
  E verificar a label: Crachá


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

Quando visualizar a tela: Empregado (Consulta)
  resource_conscolaboradores.Acessar Tela: Empregado (Consulta)

Então devo verificar a label: External Key
    resource_conscolaboradores.Verificar a label External Key

E verificar a label: Código
    resource_conscolaboradores.Verificar a label Código do Colaborador

E verificar a label: Empresa
    resource_conscolaboradores.Verificar a label Empresa

E verificar a label: Matrícula
    resource_conscolaboradores.Verificar a label Matrícula

E verificar a label: Nome
    resource_conscolaboradores.Verificar a label Nome

E verificar a label: PIS
    resource_conscolaboradores.Verificar a label PIS

E verificar a label: CPF
    resource_conscolaboradores.Verificar a label Número do CPF

E verificar a label: Crachá
    resource_conscolaboradores.Verificar a label Crachá    
