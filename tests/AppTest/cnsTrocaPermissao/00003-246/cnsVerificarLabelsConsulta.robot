*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTrocaPermissao.robot
Resource        ../../../../resource/app/resource_frmTrocaPermissao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Programação - Troca de Grupo de Acesso (Consulta)
${SCREENNAME}  Programação - Troca de Grupo de Acesso
${APPNAME}     cnsTrocaPermissao

*** Test Cases ***

Testcase: Verificar todas as labels na Tela: Programação - Troca de Grupo de Acesso (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Grupo de Acesso
  Quando visualizar a tela: Programação - Troca de Grupo de Acesso (Consulta)
  Então devo verificar a label: Empresa
  E verificar a label: Tipo
  E verificar a label: Matrícula
  E verificar a label: Nome
  E verificar a label: Data Inicial
  E verificar a label: Hora Inicial
  E verificar a label: Data de Término
  E verificar a label: Hora de Término
  E verificar a label: Dia Útil
  E verificar a label: Sábado
  E verificar a label: Domingo
  E verificar a label: Feriado
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Grupo de Acesso
  resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Grupo de Acesso

Quando visualizar a tela: Programação - Troca de Grupo de Acesso (Consulta)
  resource_cnsTrocaPermissao.Acessar Tela: Programação - Troca de Grupo de Acesso (Consulta)

Então devo verificar a label: Empresa
    resource_cnsTrocaPermissao.Verificar a label Empresa

E verificar a label: Tipo
    resource_cnsTrocaPermissao.Verificar a label Tipo

E verificar a label: Matrícula
    resource_cnsTrocaPermissao.Verificar a label Matrícula

E verificar a label: Nome
    resource_cnsTrocaPermissao.Verificar a label Nome

E verificar a label: Data Inicial
    resource_cnsTrocaPermissao.Verificar a label Data Inicial

E verificar a label: Hora Inicial
    resource_cnsTrocaPermissao.Verificar a label Hora Inicial

E verificar a label: Data de Término
    resource_cnsTrocaPermissao.Verificar a label Data de Término

E verificar a label: Hora de Término
    resource_cnsTrocaPermissao.Verificar a label Hora de Término

E verificar a label: Dia Útil
    resource_cnsTrocaPermissao.Verificar a label Dia Útil

E verificar a label: Sábado
    resource_cnsTrocaPermissao.Verificar a label Sábado

E verificar a label: Domingo
    resource_cnsTrocaPermissao.Verificar a label Domingo

E verificar a label: Feriado
    resource_cnsTrocaPermissao.Verificar a label Feriado

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

