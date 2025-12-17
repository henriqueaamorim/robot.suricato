*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_equipamento.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Monitoramento Gráfico de Equipamentos
${APPNAME}     ctr_monitoramento_equipamento
${OBJETIVO}    Verificar todas as labels na tela: Monitoramento Gráfico de Equipamentos (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Monitoramento Gráfico de Equipamentos (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento Gráfico de Equipamentos
  Quando visualizar a tela: Monitoramento Gráfico de Equipamentos (Consulta)
  Então devo verificar a label: Empresa (Bloco)
  E verificar a label: Planta (Bloco)
  E verificar a label: Codin (Bloco)
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento Gráfico de Equipamentos
  resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento Gráfico de Equipamentos

Quando visualizar a tela: Monitoramento Gráfico de Equipamentos (Consulta)
  resource_ctr_monitoramento_equipamento.Acessar Tela Monitoramento Gráfico de Equipamentos

Então devo verificar a label: Empresa (Bloco)
  resource_ctr_monitoramento_equipamento.Verificar a label Empresa (Bloco)

E verificar a label: Planta (Bloco)
  resource_ctr_monitoramento_equipamento.Verificar a label Planta (Bloco)

E verificar a label: Codin (Bloco)
  resource_ctr_monitoramento_equipamento.Verificar a label Codin (Bloco)

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"