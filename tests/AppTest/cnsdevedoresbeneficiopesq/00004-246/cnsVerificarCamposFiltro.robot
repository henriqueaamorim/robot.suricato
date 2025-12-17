*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmdevedoresbeneficios.robot
Resource        ../../../../resource/app/resource_cnsdevedoresbeneficiopesq.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Devedores de Benefícios (Filtro)
${SCREENNAME}  Devedores de Benefícios
${APPNAME}     cnsdevedoresbeneficiopesq

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Devedores de Benefícios (Filtro)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Autorização de Devedores
  Quando eu visualizar a tela: Devedores de Benefícios (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Devedores de Benefícios (Filtro)
  E verificar o campo: Empresa
  E verificar o campo: Tipo Colaborador	
  E verificar o campo: Matricula
  E verificar o campo: Data
  E verificar o campo: Hora
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Autorização de Devedores
  resource_mnu.Clicar No Menu Registro | Benefício | Autorização de Devedores

Quando eu visualizar a tela: Devedores de Benefícios (Consulta)
  resource_cnsdevedoresbeneficiopesq.Acessar Tela: Devedores de Benefícios (Consulta)

E clicar no botão: Pesquisar registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Devedores de Benefícios (Filtro)
  resource_cnsdevedoresbeneficiopesq.Acessar Tela Consulta Devedores de Benefícios (Filtro)

E verificar o campo: Empresa
    resource_cnsdevedoresbeneficiopesq.Verificar o campo: Empresa

E verificar o campo: Tipo Colaborador	
    resource_cnsdevedoresbeneficiopesq.Verificar o campo: Tipo Colaborador

E verificar o campo: Matricula
    resource_cnsdevedoresbeneficiopesq.Verificar o campo: Matricula

E verificar o campo: Data
    resource_cnsdevedoresbeneficiopesq.Verificar o campo: Data

E verificar o campo: Hora
    resource_cnsdevedoresbeneficiopesq.Verificar o campo: Hora

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"