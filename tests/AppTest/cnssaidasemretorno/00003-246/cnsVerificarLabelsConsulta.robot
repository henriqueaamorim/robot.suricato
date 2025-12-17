*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnssaidasemretorno.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Devolução de Veículo
${APPNAME}     cnssaidasemretorno
${OBJETIVO}    Verificar todas as labels na tela: Devolução de Veículo (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Devolução de Veículo (Consulta)
  [Tags]  VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Devolução
  Quando visualizar a tela: Devolução de Veículo
  Então devo verificar a label Veículo
  E verificar a label Modelo
  E verificar a label Data/Hora de Saída
  E verificar a label Empresa
  E verificar a label Colaborador
  E verificar a label Matricula
  E verificar a label Nome
  E verificar a label Portaria de Saída
  E verificar a label Motivo do Uso
  E verificar a label Destino
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Devolução
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Devolução

Quando visualizar a tela: Devolução de Veículo
  resource_cnssaidasemretorno.Acessar Tela Devolução de Veículo

Então devo verificar a label Veículo
  resource_cnssaidasemretorno.Verificar a label Veículo

E verificar a label Modelo
  resource_cnssaidasemretorno.Verificar a label Modelo

E verificar a label Data/Hora de Saída
  resource_cnssaidasemretorno.Verificar a label Data/Hora de Saída

E verificar a label Empresa
  resource_cnssaidasemretorno.Verificar a label Empresa

E verificar a label Colaborador
  resource_cnssaidasemretorno.Verificar a label Colaborador

E verificar a label Matricula
  resource_cnssaidasemretorno.Verificar a label Matricula

E verificar a label Nome
  resource_cnssaidasemretorno.Verificar a label Nome

E verificar a label Portaria de Saída
  resource_cnssaidasemretorno.Verificar a label Portaria de Saída

E verificar a label Motivo do Uso
  resource_cnssaidasemretorno.Verificar a label Motivo do Uso

E verificar a label Destino
  resource_cnssaidasemretorno.Verificar a label Destino

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
