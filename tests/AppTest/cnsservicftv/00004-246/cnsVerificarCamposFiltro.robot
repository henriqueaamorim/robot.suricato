*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmservicftv.robot
Resource        ../../../../resource/app/resource_cnsservicftv.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Servidor CFTV - Modo Busca (Filtro)
${SCREENNAME}  CFTV
${APPNAME}     cnsservicftv

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Servidor CFTV - Modo Busca (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | CFTV
  Quando visualizar a tela: Servidor CFTV - Modo Busca (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Servidor CFTV - Modo Busca (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Código
  E verificar o campo: Endereço IP	
  E verificar o campo: Nome
  E verificar o campo: Porta
  E verificar o campo: Usuário
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | CFTV
  resource_mnu.Clicar No Menu Dispositivo | CFTV

Quando visualizar a tela: Servidor CFTV - Modo Busca (Consulta)
  resource_cnsservicftv.Acessar Tela Consulta Servidor CFTV - Modo Busca

E clicar no botão: Pesquisar Registro
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Servidor CFTV - Modo Busca (Filtro)
  resource_cnsservicftv.Acessar Tela Filtro Servidor CFTV - Modo Busca
  
E verificar a label: Pesquisa
    resource_cnsservicftv.Verificar a label Pesquisa

E verificar o campo: Código
    resource_cnsservicftv.Verificar o campo Código

E verificar o campo: Endereço IP
    resource_cnsservicftv.Verificar o campo Endereço IP

E verificar o campo: Nome
    resource_cnsservicftv.Verificar o campo Nome

E verificar o campo: Porta
    resource_cnsservicftv.Verificar o campo Porta

E verificar o campo: Usuário
    resource_cnsservicftv.Verificar o campo Usuário

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"