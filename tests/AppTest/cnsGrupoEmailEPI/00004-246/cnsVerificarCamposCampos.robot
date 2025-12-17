*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGrupoEmailEPI.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Grupo de Email - EPI (Filtro)  
${SCREENNAME}  Grupo de Email - EPI 
${APPNAME}     cnsGrupoEmailEPI

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Grupo de Email - EPI (Filtro)  
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | Grupo de Email - EPI
  Quando ver a tela: Grupo de Email - EPI (Consulta)
  E clicar no botão Pesquisar Registro
  Então devo ver a tela Grupo de Email - EPI (Filtro)
  E verificar o campo Grupo de Envio de E-mail	
  E verificar o campo Email dos colaboradores	
  E verificar o campo Período Para envio dos Email	
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | Grupo de Email - EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Grupo de Email - EPI

Quando ver a tela: Grupo de Email - EPI (Consulta)
  resource_cnsGrupoEmailEPI.Acessar Tela Grupo de Email - EPI

E clicar no botão Pesquisar Registro
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela Grupo de Email - EPI (Filtro)  
  resource_cnsGrupoEmailEPI.Acessar Tela Grupo de Email - EPI (Filtro)

E verificar o campo Grupo de Envio de E-mail	
  resource_cnsGrupoEmailEPI.Verificar o campo Grupo de Envio de E-mail

E verificar o campo Email dos colaboradores	
  resource_cnsGrupoEmailEPI.Verificar o campo Email dos colaboradores

E verificar o campo Período Para envio dos Email	
  resource_cnsGrupoEmailEPI.Verificar o campo Período Para envio dos Email

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

