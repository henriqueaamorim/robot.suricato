*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsColetorescad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Verificar todas as labels na tela: Codin (Consulta)
${SCREENNAME}  Codin
${APPNAME}     cnsColetorescad

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Codin (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Dispositivo | Codin | Codin
  Quando ver a tela: Codin (Consulta)
  Então devo verificar a label: Planta
  E verificar a label: Código do Codin
  E verificar a label: Descrição do Codin
  E verificar a label: Endereço IP
  E verificar a label: Identificador
  E verificar a label: INDELEVEL
  E verificar a label: Localização do Codin
  E verificar a label: Equipamento Biométrico
  E verificar a label: Status do Equipamento
  E verificar se existe o campo Teste na tela

  
*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Codin
  resource_mnu.Clicar No Menu Dispositivo | Codin | Cadastro de Codin

Quando ver a tela: Codin (Consulta)
  resource_cnsColetorescad.Acessar Tela Consulta de Codins

Então devo verificar a label: Planta
    resource_cnsColetorescad.Verificar a label Planta

E verificar a label: Código do Codin
    resource_cnsColetorescad.Verificar a label Código do Codin

E verificar a label: Descrição do Codin
    resource_cnsColetorescad.Verificar a label Descrição do Codin

E verificar a label: Endereço IP
    resource_cnsColetorescad.Verificar a label Endereço IP

E verificar a label: Identificador
    resource_cnsColetorescad.Verificar a label Identificador

E verificar a label: INDELEVEL
    resource_cnsColetorescad.Verificar a label INDELEVEL

E verificar a label: Localização do Codin
    resource_cnsColetorescad.Verificar a label Localização do Codin

E verificar a label: Equipamento Biométrico
    resource_cnsColetorescad.Verificar a label Equipamento Biométrico

E verificar a label: Status do Equipamento    
    resource_cnsColetorescad.Verificar a label Status do Equipamento

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

