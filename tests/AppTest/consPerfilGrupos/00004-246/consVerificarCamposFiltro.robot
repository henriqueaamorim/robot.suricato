*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consPerfilGrupos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Tipo de Biometria por Grupo de Usuário (Filtro)
${SCREENNAME}  Tipo de Biometria por Grupo de Usuário 
${APPNAME}     consPerfilGrupos


*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Tipo de Biometria por Grupo de Usuário (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Tipo de Biometria por Grupo de Usuário
  Quando visualizar a tela: Tipo de Biometria por Grupo de Usuário (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Tipo de Biometria por Grupo de Usuário (Filtro)
  E verificar o campo: Grupo de Usuários	
  E verificar o campo: Tipo de Biometria	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Tipo de Biometria por Grupo de Usuário
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Tipo de Biometria por Grupo de Usuário

Quando visualizar a tela: Tipo de Biometria por Grupo de Usuário (Consulta)
  resource_consPerfilGrupos.Acessar Tela Tipo de Biometria por Grupo de Usuário

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Tipo de Biometria por Grupo de Usuário (Filtro)  
  resource_consPerfilGrupos.Acessar Tela Tipo de Biometria por Grupo de Usuário (Filtro)

E verificar o campo: Grupo de Usuários	
  resource_consPerfilGrupos.Verificar o campo: Grupo de Usuários
  

E verificar o campo: Tipo de Biometria	
  resource_consPerfilGrupos.Verificar o campo: Tipo de Biometria

E verificar se existe o campo Teste na tela   
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"