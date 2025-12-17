*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmdevedoresbeneficios.robot
Resource        ../../../../resource/app/resource_cnsdevedoresbeneficiopesq.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Devedores de Benefícios (Consulta)
${SCREENNAME}  Devedores de Benefícios
${APPNAME}     cnsdevedoresbeneficiopesq

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Devedores de Benefícios (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Autorização de Devedores
  Quando visualizar a tela: Devedores de Benefícios (Consulta)
  Então devo verificar a label: Id
  E verificar a label: Empresa
  E verificar a label: Tipo Colaborador
  E verificar a label: Matricula
  E verificar a label: Nome
  E verificar a label: Data
  E verificar a label: Hora
  E verificar a label: Crachá
  E verificar a label: Lista Benefícios
  E verificar a label: Codin
  E verificar a label: Status
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Autorização de Devedores
  resource_mnu.Clicar No Menu Registro | Benefício | Autorização de Devedores

Quando visualizar a tela: Devedores de Benefícios (Consulta)
  resource_cnsdevedoresbeneficiopesq.Acessar Tela: Devedores de Benefícios (Consulta)

Então devo verificar a label: Id
    resource_cnsdevedoresbeneficiopesq.Verificar a label: Id

E verificar a label: Empresa
    resource_cnsdevedoresbeneficiopesq.Verificar a label: Empresa

E verificar a label: Tipo Colaborador
    resource_cnsdevedoresbeneficiopesq.Verificar a label: Tipo Colaborador

E verificar a label: Matricula
    resource_cnsdevedoresbeneficiopesq.Verificar a label: Matricula

E verificar a label: Nome
    resource_cnsdevedoresbeneficiopesq.Verificar a label: Nome

E verificar a label: Data
    resource_cnsdevedoresbeneficiopesq.Verificar a label: Data

E verificar a label: Hora
    resource_cnsdevedoresbeneficiopesq.Verificar a label: Hora

E verificar a label: Crachá
    resource_cnsdevedoresbeneficiopesq.Verificar a label: Crachá

E verificar a label: Lista Benefícios
    resource_cnsdevedoresbeneficiopesq.Verificar a label: Lista Benefícios

E verificar a label: Codin
    resource_cnsdevedoresbeneficiopesq.Verificar a label: Codin

E verificar a label: Status
    resource_cnsdevedoresbeneficiopesq.Verificar a label: Status

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
