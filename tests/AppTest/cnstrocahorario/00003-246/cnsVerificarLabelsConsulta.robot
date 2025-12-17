*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmtrocahorario.robot
Resource        ../../../../resource/app/resource_cnstrocahorario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Programação - Troca de Horário (Consulta)
${SCREENNAME}  Programação - Troca de Horário (Consulta)
${APPNAME}     cnstrocahorario


*** Test Cases ***
Testcase: Verificar todas as labels na tela: Programação - Troca de Horário (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Horário
  Quando visualizar a tela: Programação - Troca de Horário (Consulta)
  Então devo verificar a label: Empresa
  E verificar a lebel: Tipo
  E verificar a lebel: Nome
  E verificar a lebel: Matrícula
  E verificar a lebel: Data da Troca
  E verificar a lebel: Novo Horário
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Horário
  resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Horário
  
Quando visualizar a tela: Programação - Troca de Horário (Consulta)
  resource_cnstrocahorario.Acessar Tela Consulta de Troca de Horários

Então devo verificar a label: Empresa
    resource_cnstrocahorario.Verificar a label Empresa

E verificar a lebel: Tipo
    resource_cnstrocahorario.Verificar a label Tipo

E verificar a lebel: Nome
    resource_cnstrocahorario.Verificar a label Nome

E verificar a lebel: Matrícula
    resource_cnstrocahorario.Verificar a label Matrícula

E verificar a lebel: Data da Troca
    resource_cnstrocahorario.Verificar a label Data da Troca

E verificar a lebel: Novo Horário
    resource_cnstrocahorario.Verificar a label Novo Horário

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

