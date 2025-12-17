*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_equipamento.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_equipamento_filtro.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Monitoramento Gráfico de Equipamentos - Filtro
${APPNAME}     ctr_monitoramento_equipamento_filtro
${OBJETIVO}    Verificar todos os campos na tela Monitoramento Gráfico de Equipamentos - Filtro.
 

*** Test Cases ***

Testcase: Verificar todos os campos na tela Monitoramento Gráfico de Equipamentos - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento Gráfico de Equipamentos
  Ao visualizar a tela: Monitoramento Gráfico de Equipamentos
  E clicar no botão: Filtrar
  Então devo visualizar a tela: Monitoramento Gráfico de Equipamentos - Filtro
  E verificar o campo Empresa
  E verificar o campo Planta
  E verificar o campo Codin
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento Gráfico de Equipamentos
  resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento Gráfico de Equipamentos

Ao visualizar a tela: Monitoramento Gráfico de Equipamentos
  resource_ctr_monitoramento_equipamento.Acessar Tela Monitoramento Gráfico de Equipamentos

E clicar no botão: Filtrar
  resource_btn.Clicar No Botão Filtro

Então devo visualizar a tela: Monitoramento Gráfico de Equipamentos - Filtro
  resource_ctr_monitoramento_equipamento_filtro.Acessar Tela Monitoramento Gráfico de Equipamentos - Filtro

E verificar o campo Empresa
  resource_ctr_monitoramento_equipamento_filtro.Verificar o campo Empresa

E verificar o campo Planta
  resource_ctr_monitoramento_equipamento_filtro.Verificar o campo Planta

E verificar o campo Codin
  resource_ctr_monitoramento_equipamento_filtro.Verificar o campo Codin

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"