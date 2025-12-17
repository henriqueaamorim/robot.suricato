*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conscolaboradores.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Terceiro (Consulta)
${SCREENNAME}  Terceiro
${APPNAME}     conscolaboradores

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Terceiro (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Terceiro
  Quando visualizar a tela: Terceiro (Consulta)
  Então devo verificar a label: External Key
  E verificar a label: Código do Colaborador
  E verificar a label: Empresa
  E verificar a label: Tipo de Colaborador
  E verificar a label: Matrícula
  E verificar a label: Nome
  E verificar a label: PIS
  E verificar a label: Crachá
  E verificar a label: Utiliza Controle Biométrico
  E verificar a label: Número do CPF
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Terceiro
  resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Cadastro de Terceiro

Quando visualizar a tela: Terceiro (Consulta)
  resource_conscolaboradores.Acessar Tela: Terceiro (Consulta)

Então devo verificar a label: External Key
    resource_conscolaboradores.Verificar a label External Key

E verificar a label: Código do Colaborador
    resource_conscolaboradores.Verificar a label Código do Colaborador

E verificar a label: Empresa
    resource_conscolaboradores.Verificar a label Empresa

E verificar a label: Tipo de Colaborador
    resource_conscolaboradores.Verificar a label Tipo de Colaborador

E verificar a label: Matrícula
    resource_conscolaboradores.Verificar a label Matrícula

E verificar a label: Nome
    resource_conscolaboradores.Verificar a label Nome

E verificar a label: PIS
    resource_conscolaboradores.Verificar a label PIS

E verificar a label: Crachá
    resource_conscolaboradores.Verificar a label Crachá

E verificar a label: Utiliza Controle Biométrico
    resource_conscolaboradores.Verificar a label Utiliza Controle Biométrico

E verificar a label: Número do CPF
    resource_conscolaboradores.Verificar a label Número do CPF
  
E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"