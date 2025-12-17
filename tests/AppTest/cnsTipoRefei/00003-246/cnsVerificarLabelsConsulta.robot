*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTipoRefei.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Tipo de Refeição (Consulta)
${SCREENNAME}  Tipo de Refeição
${APPNAME}     cnsTipoRefei

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Tipo de Refeição (Consulta)
  [Tags]  VERIFY  246  247  248  249 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Tipo de Refeição
  Quando visualizar a tela: Tipo de Refeição (Consulta)
  Então devo verificar a label: Empresa
  E verificar a label: Planta
  E verificar a label: Data Inicial
  E verificar a label: Data Final
  E verificar a label: Hora Inicial
  E verificar a label: Hora Final
  E verificar a label: Função
  E verificar a label: Refeição
  E verificar a label: Valor
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Configuração | Tipo de Refeição
  resource_mnu.Clicar No Menu Configurações | Cadastro de Tipo de Refeição

Quando visualizar a tela: Tipo de Refeição (Consulta)
  resource_cnsTipoRefei.Acessar Tela Consulta de Tipo de Refeição

Então devo verificar a label: Empresa
  resource_cnsTipoRefei.Verificar a label: Empresa

E verificar a label: Planta
  resource_cnsTipoRefei.Verificar a label: Planta

E verificar a label: Data Inicial
  resource_cnsTipoRefei.Verificar a label: Data Inicial

E verificar a label: Data Final
  resource_cnsTipoRefei.Verificar a label: Data Final

E verificar a label: Hora Inicial
  resource_cnsTipoRefei.Verificar a label: Hora Inicial

E verificar a label: Hora Final
  resource_cnsTipoRefei.Verificar a label: Hora Final

E verificar a label: Função
  resource_cnsTipoRefei.Verificar a label: Função

E verificar a label: Refeição
  resource_cnsTipoRefei.Verificar a label: Refeição

E verificar a label: Valor
  resource_cnsTipoRefei.Verificar a label: Valor

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"