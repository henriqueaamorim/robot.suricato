*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsColetorescad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Codin (Filtro)
${SCREENNAME}  Codin
${APPNAME}     cnsColetorescad

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Codin (Filtro)
  [Tags]   VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Dispositivo | Codin | Codin
  Quando ver a tela: Codin (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo ver a tela: Codin (Filtro)
  E verificar o campo: Endereço IP	
  E verificar o campo: Identificador
  E verificar o campo: INDELEVEL	
  E verificar o campo: Localização do Codin	
  E verificar o campo: Descrição do Codin	
  E verificar o campo: Equipamento Biométrico	
  E verificar o campo: Status do Equipamento	
  E verificar se existe o campo Teste na tela

  
*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Codin
    resource_mnu.Clicar No Menu Dispositivo | Codin | Cadastro de Codin

Quando ver a tela: Codin (Consulta)
    resource_cnsColetorescad.Acessar Tela Consulta de Codins

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Codin (Filtro)
    resource_cnsColetorescad.Acessar Tela: Codin (Filtro)

E verificar o campo: Endereço IP	
    resource_cnsColetorescad.Verificar o campo Endereço IP

E verificar o campo: Identificador
    resource_cnsColetorescad.Verificar o campo Identificador

E verificar o campo: INDELEVEL	
    resource_cnsColetorescad.Verificar o campo INDELEVEL

E verificar o campo: Localização do Codin	
    resource_cnsColetorescad.Verificar o campo Localização do Codin

E verificar o campo: Descrição do Codin	
    resource_cnsColetorescad.Verificar o campo Descrição do Codin

E verificar o campo: Equipamento Biométrico	
    resource_cnsColetorescad.Verificar o campo Equipamento Biométrico

E verificar o campo: Status do Equipamento	    
    resource_cnsColetorescad.Verificar o campo Status do Equipamento

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

