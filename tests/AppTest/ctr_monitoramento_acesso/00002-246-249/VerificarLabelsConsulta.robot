*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_acesso.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}   Monitoramento Acesso - Grid
${APPNAME}      ctr_monitoramento_acesso
${OBJETIVO}     Verificar todas as labels na tela: Monitoramento Acesso - Gri (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Monitoramento Acesso - Grid (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Acesso - Grid
  Então devo visualizar a tela: Monitoramento Acesso - Grid (Consulta)
  E verificar o label Foto
  E verificar o label Nome
  E verificar o label Dados
  E verificar o label Codin
  E verificar o label Data
  E verificar o label Crachá
  E verificar o label Direção
  E verificar o label Tipo de Acesso
  E verificar o label Veículo
  E verificar o label MultiAcesso
  E verificar button OFF (Bloco)
  E verificar button Filtro (Bloco)
  E verificar button Limpar (Bloco)
  E verificar o label Planta (Bloco)
  E verificar o label Codin (Bloco)
  E verificar o label Crachá (Bloco)
  E verificar o label Direção (Bloco)
  E verificar o label Tipo de Acesso (Bloco)
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Acesso - Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Acesso - Grid

Então devo visualizar a tela: Monitoramento Acesso - Grid (Consulta)
  resource_ctr_monitoramento_acesso.Acessar Tela Monitoramento Acesso - Grid

E verificar o label Foto
  resource_ctr_monitoramento_acesso.Verificar o label Foto

E verificar o label Nome
  resource_ctr_monitoramento_acesso.Verificar o label Nome

E verificar o label Dados
  resource_ctr_monitoramento_acesso.Verificar o label Dados

E verificar o label Codin
  resource_ctr_monitoramento_acesso.Verificar o label Codin

E verificar o label Data
  resource_ctr_monitoramento_acesso.Verificar o label Data

E verificar o label Crachá
  resource_ctr_monitoramento_acesso.Verificar o label Crachá

E verificar o label Direção
  resource_ctr_monitoramento_acesso.Verificar o label Direção

E verificar o label Tipo de Acesso
  resource_ctr_monitoramento_acesso.Verificar o label Tipo de Acesso

E verificar o label Veículo
  resource_ctr_monitoramento_acesso.Verificar o label Veículo

E verificar o label MultiAcesso
  resource_ctr_monitoramento_acesso.Verificar o label MultiAcesso

E verificar button OFF (Bloco)
  resource_ctr_monitoramento_acesso.Verificar BTN OFF (Bloco)

E verificar button Filtro (Bloco)
  resource_ctr_monitoramento_acesso.Verificar BTN Filtro (Bloco)

E verificar button Limpar (Bloco)
  resource_ctr_monitoramento_acesso.Verificar BTN Limpar (Bloco)

E verificar o label Planta (Bloco)
  resource_ctr_monitoramento_acesso.Verificar o label Planta (Bloco)

E verificar o label Codin (Bloco)
  resource_ctr_monitoramento_acesso.Verificar o label Codin (Bloco)

E verificar o label Crachá (Bloco)
  resource_ctr_monitoramento_acesso.Verificar o label Crachá (Bloco)

E verificar o label Direção (Bloco)
  resource_ctr_monitoramento_acesso.Verificar o label Direção (Bloco)

E verificar o label Tipo de Acesso (Bloco)
  resource_ctr_monitoramento_acesso.Verificar o label Tipo de Acesso (Bloco)

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"