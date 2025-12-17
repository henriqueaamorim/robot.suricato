*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmotivosusofrota.robot
Resource        ../../../../resource/app/resource_cnsmotivosusofrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Motivos de Uso da Frota (Filtro)
${SCREENNAME}  Motivos de Uso da Frota
${APPNAME}     cnsmotivosusofrota

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Motivos de Uso da Frota (Filtro)
  [Tags]  VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Motivo de Uso
  Quando visualizar a tela: Motivos de Uso da Frota (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo verificar a tela: Motivos de Uso da Frota (Filtro)
  E verificar o campo: Motivo do Uso	
  E verificar o campo: Descrição
  E verificar o campo: Tipo de Uso	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Motivo de Uso
  resource_mnu.Clicar No Menu Veículos | Cadastro | Motivo de Uso

Quando visualizar a tela: Motivos de Uso da Frota (Consulta)
  resource_cnsmotivosusofrota.Acessar Tela Consulta Motivos de Uso da Frota

E clicar no botão: Pesquisar Registro
  resource_btn.Clicar no botão Pesquisar Registros

Então devo verificar a tela: Motivos de Uso da Frota (Filtro)  
  resource_cnsmotivosusofrota.Acessar Tela Consulta Motivos de Uso da Frota (Filtro)

E verificar o campo: Motivo do Uso	
   resource_cnsmotivosusofrota.Verificar o campo: Motivo do Uso

E verificar o campo: Descrição
  resource_cnsmotivosusofrota.Verificar o campo: Descrição

E verificar o campo: Tipo de Uso	
  resource_cnsmotivosusofrota.Verificar o campo: Tipo de Uso

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"