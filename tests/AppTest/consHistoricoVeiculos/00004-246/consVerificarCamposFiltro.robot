*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculocolaboradores.robot
Resource        ../../../../resource/app/resource_consHistoricoVeiculos.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${SCREENNAME}  Consulta de Histórico por Veiculos
${APPNAME}     consHistoricoVeiculos
${OBJETIVO}    Verificar todos os campos na tela: Veículo de Colaborador (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Veículo de Colaborador (Filtro)
  [Tags]  VERIFY  246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo de Colaborador
  Quando eu visualizar a tela: Veículo de Colaborador (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Veículo de Colaborador (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Código do Veículo	
  E verificar o campo: Crachá
  E verificar o campo: Data Início
  E verificar o campo: Data Fim
  E verificar o campo: Placa
  E verificar o campo: Marca	
  E verificar o campo: Modelo
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo de Colaborador
  resource_mnu.Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

Quando eu visualizar a tela: Veículo de Colaborador (Consulta)
  resource_consHistoricoVeiculos.Acessar Tela Consulta de Histórico por Veiculos

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Veículo de Colaborador (Filtro)
  resource_consHistoricoVeiculos.Acessar Tela: Veículo de Colaborador (Filtro)

E verificar a label: Pesquisa
  resource_consHistoricoVeiculos.Verificar a label: Pesquisa  

E verificar o campo: Código do Veículo	
    resource_consHistoricoVeiculos.Verificar o campo: Código do Veículo

E verificar o campo: Crachá
    resource_consHistoricoVeiculos.Verificar o campo: Crachá

E verificar o campo: Data Início
    resource_consHistoricoVeiculos.Verificar o campo: Data Início

E verificar o campo: Data Fim
    resource_consHistoricoVeiculos.Verificar o campo: Data Fim

E verificar o campo: Placa
    resource_consHistoricoVeiculos.Verificar o campo: Placa

E verificar o campo: Marca	
    resource_consHistoricoVeiculos.Verificar o campo: Marca

E verificar o campo: Modelo
    resource_consHistoricoVeiculos.Verificar o campo: Modelo

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
