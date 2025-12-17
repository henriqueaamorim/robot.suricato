*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGrupoHoraExtra.robot
Resource        ../../../../resource/app/resource_frm_tbhoraextra.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Grupo de Hora Extra (Consulta)
${SCREENNAME}  Grupo de Hora Extra
${APPNAME}     cnsGrupoHoraExtra


*** Test Cases ***
Testcase: Verificar todas as labels na tela: Grupo de Hora Extra (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Hora Extra
  Quando visualizar a tela: Grupo de Hora Extra (Consulta)
  Então devo verificar a label: ID Cadastro
  E verificar a label: Nome do Grupo
  E verificar a label: Horário 1
  E verificar a label: Horário 2
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Configuração | Hora Extra
  resource_mnu.Clicar No Menu Configurações | Hora Extra

Quando visualizar a tela: Grupo de Hora Extra (Consulta)
  resource_cnsGrupoHoraExtra.Acessar Tela Grupo de Hora Extra

Então devo verificar a label: ID Cadastro
  resource_cnsGrupoHoraExtra.Verificar a label: ID Cadastro

E verificar a label: Nome do Grupo
  resource_cnsGrupoHoraExtra.Verificar a label: Nome do Grupo

E verificar a label: Horário 1
  resource_cnsGrupoHoraExtra.Verificar a label: Horário 1

E verificar a label: Horário 2
  resource_cnsGrupoHoraExtra.Verificar a label: Horário 2

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
