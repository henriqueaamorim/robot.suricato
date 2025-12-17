*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrpronturario.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Prontuário do Veículo
${APPNAME}     ctrpronturario
${OBJETIVO}    Verificar todas as labels na tela: Prontuário do Veículo

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Prontuário do Veículo
  [Tags]  VERIFY    249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Veículo | Prontuário de Veículo
  Quando visualizar a tela: Prontuário do Veículo
  E verificar o campo Veículo
  E verificar o campo Crachá
  Então devo preencher o campo Veículo "3"
  E clicar no botão: Mostrar
  E verificar a label Dados Gerais
  E verificar a label UF da Placa:
  E verificar a label Ano Veículo:
  E verificar a label Peso:
  E verificar a label Data p/ Troca:
  E verificar a label Tipo Combustível:
  E verificar a label Qtd. Passageiros:
  E verificar a label Mês Venc. Seguro:
  E verificar a label KM Atual:
  E verificar a label Marca:
  E verificar a label Ano Modelo:
  E verificar a label Capacidade de Carga:
  E verificar a label Chassi:
  E verificar a label Cód. Renavam:
  E verificar a label Mês Venc. IPVA:
  E verificar a label Modelo
  E verificar a label Tipo Veículo:
  E verificar a label Cor:
  E verificar a label Situação:
  E verificar a label Número do Motor:
  E verificar a label Veículo de Pool:
  E verificar a label Ativo Fixo Imobilizado:
  E verificar a label Data Compra:
  E verificar a label Data Venda:
  E verificar a label Valor Compra:
  E verificar a label Valor Venda:
  E verificar a label Doc. Comprador:
  E verificar a label Doc. Vendedor:
  E verificar a label Comprador:
  E verificar a label Vendedor:
  E verificar a label Frota
  E verificar a label Usuários
  E verificar a label Seguro
  E verificar a label Corretor 
  E verificar a label Apólice 
  E verificar a label Cobertura
  E verificar a label Vigência
  E verificar a label Validade
  E verificar a label Valor
  E verificar a label Descrição da Franquia
  E verificar a label Observação
  E verificar a label Históricos
  E verificar a label Histórico de Locais de Veículos
  #E verificar a label Histórico de Crachás de Veículos
  E verificar a label Ocorrências
  E verificar a label Infrações
  E verificar a label Reclamações
  E verificar a label Sinistros
  E verificar a label Agendamentos de Frota
  E verificar a label Movimentações de Frota
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículo | Prontuário de Veículo
  resource_mnu.Clicar No Menu Veículos | Prontuário de Veículos

Quando visualizar a tela: Prontuário do Veículo
  resource_ctrpronturario.Acessar Tela Prontuário do Veículo

Então devo preencher o campo Veículo "${NUM}"
  resource_ctrpronturario.Preencher o campo Veículo "${NUM}"

E clicar no botão: Mostrar
  resource_btn.Clicar No Botão Mostrar

E verificar o campo Veículo
  resource_ctrpronturario.Verificar o campo Veículo

E verificar o campo Crachá
  resource_ctrpronturario.Verificar o campo Crachá

E verificar a label Dados Gerais
  resource_ctrpronturario.Verificar a label Dados Gerais

E verificar a label UF da Placa:
  resource_ctrpronturario.Verificar a label UF da Placa:

E verificar a label Ano Veículo:
  resource_ctrpronturario.Verificar a label Ano Veículo:

E verificar a label Peso:
  resource_ctrpronturario.Verificar a label Peso:

E verificar a label Data p/ Troca:
  resource_ctrpronturario.Verificar a label Data p/ Troca:

E verificar a label Tipo Combustível:
  resource_ctrpronturario.Verificar a label Tipo Combustível:

E verificar a label Qtd. Passageiros:
  resource_ctrpronturario.Verificar a label Qtd. Passageiros:

E verificar a label Mês Venc. Seguro:
  resource_ctrpronturario.Verificar a label Mês Venc. Seguro:

E verificar a label KM Atual:
  resource_ctrpronturario.Verificar a label KM Atual:

E verificar a label Marca:
  resource_ctrpronturario.Verificar a label Marca:

E verificar a label Ano Modelo:
  resource_ctrpronturario.Verificar a label Ano Modelo:

E verificar a label Capacidade de Carga:
  resource_ctrpronturario.Verificar a label Capacidade de Carga:

E verificar a label Chassi:
  resource_ctrpronturario.Verificar a label Chassi:

E verificar a label Cód. Renavam:
  resource_ctrpronturario.Verificar a label Cód. Renavam:

E verificar a label Mês Venc. IPVA:
  resource_ctrpronturario.Verificar a label Mês Venc. IPVA:

E verificar a label Modelo
  resource_ctrpronturario.Verificar a label Modelo

E verificar a label Tipo Veículo:
  resource_ctrpronturario.Verificar a label Tipo Veículo:

E verificar a label Cor:
  resource_ctrpronturario.Verificar a label Cor:

E verificar a label Situação:
  resource_ctrpronturario.Verificar a label Situação:

E verificar a label Número do Motor:
  resource_ctrpronturario.Verificar a label Número do Motor:

E verificar a label Veículo de Pool:
  resource_ctrpronturario.Verificar a label Veículo de Pool:

E verificar a label Ativo Fixo Imobilizado:
  resource_ctrpronturario.Verificar a label Ativo Fixo Imobilizado:

E verificar a label Data Compra:
  resource_ctrpronturario.Verificar a label Data Compra:

E verificar a label Data Venda:
  resource_ctrpronturario.Verificar a label Data Venda:

E verificar a label Valor Compra:
  resource_ctrpronturario.Verificar a label Valor Compra:

E verificar a label Valor Venda:
  resource_ctrpronturario.Verificar a label Valor Venda:

E verificar a label Doc. Comprador:
  resource_ctrpronturario.Verificar a label Doc. Comprador:

E verificar a label Doc. Vendedor:
  resource_ctrpronturario.Verificar a label Doc. Vendedor:

E verificar a label Comprador:
  resource_ctrpronturario.Verificar a label Comprador:

E verificar a label Vendedor:
  resource_ctrpronturario.Verificar a label Vendedor:

E verificar a label Frota
  resource_ctrpronturario.Verificar a label Frota
  
E verificar a label Usuários
  resource_ctrpronturario.Verificar a label Usuários

E verificar a label Seguro
  resource_ctrpronturario.Verificar a label Seguro

E verificar a label Corretor 
  resource_ctrpronturario.Verificar a label Corretor 

E verificar a label Apólice 
  resource_ctrpronturario.Verificar a label Apólice 

E verificar a label Cobertura
  resource_ctrpronturario.Verificar a label Cobertura

E verificar a label Vigência
  resource_ctrpronturario.Verificar a label Vigência

E verificar a label Validade
  resource_ctrpronturario.Verificar a label Validade

E verificar a label Valor
  resource_ctrpronturario.Verificar a label Valor

E verificar a label Descrição da Franquia
  resource_ctrpronturario.Verificar a label Descrição da Franquia

E verificar a label Observação
  resource_ctrpronturario.Verificar a label Observação

E verificar a label Históricos
  resource_ctrpronturario.Verificar a label Históricos

E verificar a label Histórico de Locais de Veículos
  resource_ctrpronturario.Verificar a label Histórico de Locais de Veículos

E verificar a label Histórico de Crachás de Veículos
  resource_ctrpronturario.Verificar a label Histórico de Crachás de Veículos

E verificar a label Ocorrências
  resource_ctrpronturario.Verificar a label Ocorrências

E verificar a label Infrações
  resource_ctrpronturario.Verificar a label Infrações

E verificar a label Reclamações
  resource_ctrpronturario.Verificar a label Reclamações

E verificar a label Sinistros
  resource_ctrpronturario.Verificar a label Sinistros

E verificar a label Agendamentos de Frota
  resource_ctrpronturario.Verificar a label Agendamentos de Frota

E verificar a label Movimentações de Frota
  resource_ctrpronturario.Verificar a label Movimentações de Frota

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
