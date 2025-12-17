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
${OBJETIVO}    Verificar todas as labels na tela: Prontuário do Veículo (Resultado)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Prontuário do Veículo (Resultado)
  [Tags]  VERIFY    246  247  
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Veículo | Prontuário de Veículo
  Quando visualizar a tela: Prontuário do Veículo
  E verificar o campo Veículo
  E verificar o campo Crachá
  Então devo preencher o campo Veículo "1"
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
  E verificar a label Data Inicial do Uso: (1)
  E verificar a label Empresa Proprietária:
  E verificar a label Veículo Locado: 
  E verificar a label Data Inicial do Contrato: (1)
  E verificar a label Código da Outra Empresa:
  E verificar a label Empresa Responsável: 
  E verificar a label Data Inicial do Uso: (2)  
  E verificar a label Número do Contrato de Locação: (2)
  E verificar a label Data Final do Contrato: (2)
  E verificar a label Tipo Responsável: (2)  
  E verificar a label Valor do Contrato: (2)
  E verificar a label Usuários
  E verificar a label Seguro
  E verificar a label HISTÓRICOS
  E verificar a label Histórico de Locais de Veículos
  E verificar a label OCORRÊNCIAS
  E verificar a label Infrações
  E verificar a label Dt./Hora Infr.
  E verificar a label Emp. Cond. (1)	
  E verificar a label Tipo
  E verificar a label Matr.
  E verificar a label Nome (1)
  E verificar a label Ende.	
  E verificar a label Dt. Pag.	
  E verificar a label Vl. Pag.	
  E verificar a label Dt. Reemb.	
  E verificar a label Vl. Reemb.	
  E verificar a label Dt. Desc.	
  E verificar a label Qtde. Parc.	
  E verificar a label Vl. Desc.	
  E verificar a label N?m. do AIT	
  E verificar a label Dt. Ind.	
  E verificar a label Dt. Lim. Ind.	
  E verificar a label Nome Ind.
  E verificar a label Reclamações
  E verificar a label Data
  E verificar a label Hora (1)
  E verificar a label Dt. Ocorrido	
  E verificar a label Hora Ocorrido	
  E verificar a label Emp. Cond. (2)	
  E verificar a label Tipo Cond. (1)	
  E verificar a label Matr. Cond.(1)
  E verificar a label Nome (2)	
  E verificar a label Desc. Reclamação	
  E verificar a label Qtde. Ptos.	
  E verificar a label Tele.
  E verificar a label Dt. Sinis.	
  E verificar a label Hora (2)
  E verificar a label Cidade	
  E verificar a label Bairro  
  E verificar a label Emp. Cond. (3)	
  E verificar a label Tipo Cond. (2)	
  E verificar a label Nome (3)
  E verificar a label Desc. Sinis.	
  E verificar a label Valor	
  E verificar a label Ptos.	
  E verificar a label Situação	
  E verificar a label Reemb.	
  E verificar a label Descon.
  E verificar a label AGENDAMENTOS DE FROTA
  E verificar a label MOVIMENTAÇÕES DE FROTA
  E verificar a label Dt./Hr Saída	
  E verificar a label Emp. Cond. (4)	
  E verificar a label Tp. Cond.	
  E verificar a label Matr. Cond. (2)
  E verificar a label Nome Cond.	
  E verificar a label Port. Saída	
  E verificar a label Motivo
  E verificar a label Destino
  E verificar a label Quil. Saída	
  E verificar a label Dt./Hr Prev.	
  E verificar a label Qtde. Pass.	
  E verificar a label Kg Transp.



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

E verificar a label Data Inicial do Uso: (1)
  resource_ctrpronturario.Verificar a label: Data Inicial do Uso: (1)

E verificar a label Empresa Proprietária:
  resource_ctrpronturario.Verificar a label: Empresa Proprietária: 

E verificar a label Veículo Locado: 
  resource_ctrpronturario.Verificar a label: Veículo Locado: 

E verificar a label Data Inicial do Contrato: (1)
  resource_ctrpronturario.Verificar a label: Data Inicial do Contrato: (1)

E verificar a label Código da Outra Empresa:
  resource_ctrpronturario.Verificar a label: Código da Outra Empresa: 

E verificar a label Empresa Responsável: 
  resource_ctrpronturario.Verificar a label: Empresa Responsável: 

E verificar a label Data Inicial do Uso: (2)
  resource_ctrpronturario.Verificar a label: Data Inicial do Uso: (2)

E verificar a label Número do Contrato de Locação: (2)
  resource_ctrpronturario.Verificar a label: Número do Contrato de Locação: (2)

E verificar a label Data Final do Contrato: (2)
  resource_ctrpronturario.Verificar a label: Data Final do Contrato: (2)

E verificar a label Tipo Responsável: (2)  
  resource_ctrpronturario.Verificar a label: Tipo Responsável:

E verificar a label Valor do Contrato: (2)
  resource_ctrpronturario.Verificar a label: Valor do Contrato: 

E verificar a label Usuários
  resource_ctrpronturario.Verificar a label Usuários

E verificar a label Seguro
  resource_ctrpronturario.Verificar a label: SEGURO

E verificar a label HISTÓRICOS
  resource_ctrpronturario.Verificar a label: HISTÓRICOS

E verificar a label Histórico de Locais de Veículos
  resource_ctrpronturario.Verificar a label: Histórico de Locais de Veículos

E verificar a label OCORRÊNCIAS
  resource_ctrpronturario.Verificar a label: OCORRÊNCIAS

E verificar a label Infrações
  resource_ctrpronturario.Verificar a label: Infrações

E verificar a label Dt./Hora Infr.
  resource_ctrpronturario.Verificar a label: Dt./Hora Infr.	

E verificar a label Emp. Cond. (1)	
  resource_ctrpronturario.Verificar a label: Emp. Cond. (1)	

E verificar a label Tipo
  resource_ctrpronturario.Verificar a label: Tipo	

E verificar a label Matr.
  resource_ctrpronturario.Verificar a label: Matr.	

E verificar a label Nome (1)
  resource_ctrpronturario.Verificar a label: Nome(1)

E verificar a label Ende.	
  resource_ctrpronturario.Verificar a label: Ende.		

E verificar a label Dt. Pag.	
  resource_ctrpronturario.Verificar a label: Dt. Pag.		

E verificar a label Vl. Pag.	
  resource_ctrpronturario.Verificar a label: Vl. Pag.	

E verificar a label Dt. Reemb.	
  resource_ctrpronturario.Verificar a label: Dt. Reemb.	

E verificar a label Vl. Reemb.	
  resource_ctrpronturario.Verificar a label: Vl. Reemb.	

E verificar a label Dt. Desc.	
  resource_ctrpronturario.Verificar a label: Dt. Desc.	

E verificar a label Qtde. Parc.	
  resource_ctrpronturario.Verificar a label: Qtde. Parc.	

E verificar a label Vl. Desc.	
  resource_ctrpronturario.Verificar a label: Vl. Desc.	

E verificar a label N?m. do AIT	
  resource_ctrpronturario.Verificar a label: N?m. do AIT	

E verificar a label Dt. Ind.	
  resource_ctrpronturario.Verificar a label: Dt. Ind.	

E verificar a label Dt. Lim. Ind.	
  resource_ctrpronturario.Verificar a label: Dt. Lim. Ind.	

E verificar a label Nome Ind.
  resource_ctrpronturario.Verificar a label: Nome Ind.

E verificar a label Reclamações
  resource_ctrpronturario.Verificar a label: Reclamações
 
E verificar a label Data
  resource_ctrpronturario.Verificar a label: Data

E verificar a label Hora (1)
  resource_ctrpronturario.Verificar a label: Hora(1)

E verificar a label Dt. Ocorrido
  resource_ctrpronturario.Verificar a label: Dt. Ocorrido	

E verificar a label Hora Ocorrido	
  resource_ctrpronturario.Verificar a label: Hora Ocorrido	

E verificar a label Emp. Cond. (2)	
  resource_ctrpronturario.Verificar a label: Emp. Cond. (2)	

E verificar a label Tipo Cond. (1)	
  resource_ctrpronturario.Verificar a label: Tipo Cond. (1)	

E verificar a label Matr. Cond.(1)	
  resource_ctrpronturario.Verificar a label: Matr. Cond.(1)

E verificar a label Nome (2)	
  resource_ctrpronturario.Verificar a label: Nome(2)

E verificar a label Desc. Reclamação	
  resource_ctrpronturario.Verificar a label: Desc. Reclamação	

E verificar a label Qtde. Ptos.	
  resource_ctrpronturario.Verificar a label: Qtde. Ptos.	

E verificar a label Tele.
  resource_ctrpronturario.Verificar a label: Tele.

E verificar a label Dt. Sinis.	
  resource_ctrpronturario.Verificar a label: Dt. Sinis.

E verificar a label Hora (2)
  resource_ctrpronturario.Verificar a label: Hora(2)

E verificar a label Cidade	
  resource_ctrpronturario.Verificar a label: Cidade

E verificar a label Bairro  
  resource_ctrpronturario.Verificar a label: Bairro	

E verificar a label Emp. Cond. (3)	
  resource_ctrpronturario.Verificar a label: Emp. Cond. (3)		

E verificar a label Tipo Cond. (2)	
  resource_ctrpronturario.Verificar a label: Tipo Cond. (2)		

E verificar a label Nome (3)
  resource_ctrpronturario.Verificar a label: Nome(3)

E verificar a label Desc. Sinis.	
  resource_ctrpronturario.Verificar a label: Desc. Sinis.	

E verificar a label Valor	
  resource_ctrpronturario.Verificar a label: Valor

E verificar a label Ptos.	
  resource_ctrpronturario.Verificar a label: Ptos.	

E verificar a label Situação	
  resource_ctrpronturario.Verificar a label: Situação

E verificar a label Reemb.	
  resource_ctrpronturario.Verificar a label: Reemb.	

E verificar a label Descon.
  resource_ctrpronturario.Verificar a label: Descon.

E verificar a label AGENDAMENTOS DE FROTA
  resource_ctrpronturario.Verificar a label: AGENDAMENTOS DE FROTA

E verificar a label MOVIMENTAÇÕES DE FROTA
  resource_ctrpronturario.Verificar a label: MOVIMENTAÇÕES DE FROTA

E verificar a label Dt./Hr Saída	
  resource_ctrpronturario.Verificar a label: Dt./Hr Saída	

E verificar a label Emp. Cond. (4)	
  resource_ctrpronturario.Verificar a label: Emp. Cond. (4)	

E verificar a label Tp. Cond.	
  resource_ctrpronturario.Verificar a label: Tp. Cond.	

E verificar a label Matr. Cond.(2)
  resource_ctrpronturario.Verificar a label: Matr. Cond.(2)	

E verificar a label Nome Cond.	
  resource_ctrpronturario.Verificar a label: Nome Cond.	

E verificar a label Port. Saída	
  resource_ctrpronturario.Verificar a label: Port. Saída	

E verificar a label Motivo
  resource_ctrpronturario.Verificar a label: Motivo

E verificar a label Destino
  resource_ctrpronturario.Verificar a label: Destino

E verificar a label Quil. Saída	
  resource_ctrpronturario.Verificar a label: Quil. Saída	

E verificar a label Dt./Hr Prev.	
  resource_ctrpronturario.Verificar a label: Dt./Hr Prev.	

E verificar a label Qtde. Pass.	
  resource_ctrpronturario.Verificar a label: Qtde. Pass.	

E verificar a label Kg Transp.
  resource_ctrpronturario.Verificar a label: Kg Transp.