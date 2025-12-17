*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frminfracoesfrota.robot
Resource        ../../../../resource/app/resource_cnsinfracoesfrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Infrações (Filtro)
${SCREENNAME}  Infrações
${APPNAME}     cnsinfracoesfrota

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Infrações (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Infrações | Cadastro
  Quando visualizar a tela: Infrações (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Infrações (Filtro)
  E verificar o campo: Data Infrações	
  E verificar o campo: Hora Infrações	
  E verificar o campo: Veículo
  E verificar o campo: Condutor
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Infrações | Cadastro
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Cadastro

Quando visualizar a tela: Infrações (Consulta)
  resource_cnsinfracoesfrota.Acessar Tela Consulta Infrações

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Infrações (Filtro)  
  resource_cnsinfracoesfrota.Acessar Tela Infrações (Filtro)

E verificar o campo: Data Infrações	
  resource_cnsinfracoesfrota.Verificar o campo: Data Infrações

E verificar o campo: Hora Infrações	
  resource_cnsinfracoesfrota.Verificar o campo: Hora Infrações

E verificar o campo: Veículo
  resource_cnsinfracoesfrota.Verificar o campo: Veículo

E verificar o campo: Condutor
  resource_cnsinfracoesfrota.Verificar o campo: Condutor

E verificar se existe o campo Teste na tela   
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  	