*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGrupoEmailEPI.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Grupo de Email - EPI (Consulta)  
${SCREENNAME}  Grupo de Email - EPI 
${APPNAME}     cnsGrupoEmailEPI

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Grupo de Email - EPI (Consulta)  
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | Grupo de Email - EPI
  Quando ver a tela: Grupo de Email - EPI (Consulta)
  Então devo verificar a label Grupo de Envio de E-mail
  E verificar a label Email dos colaboradores
  E verificar a label Período Para envio dos Email
  E verificar a label Status (Ativo?)
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | Grupo de Email - EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Grupo de Email - EPI

Quando ver a tela: Grupo de Email - EPI (Consulta)
  resource_cnsGrupoEmailEPI.Acessar Tela Grupo de Email - EPI

Então devo verificar a label Grupo de Envio de E-mail
  resource_cnsGrupoEmailEPI.Verificar a label Grupo de Envio de E-mail

E verificar a label Email dos colaboradores
  resource_cnsGrupoEmailEPI.Verificar a label Email dos colaboradores

E verificar a label Período Para envio dos Email
  resource_cnsGrupoEmailEPI.Verificar a label Período Para envio dos Email

E verificar a label Status (Ativo?)  
  resource_cnsGrupoEmailEPI.Verificar a label Status (Ativo?)

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

