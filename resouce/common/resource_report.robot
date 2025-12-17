*** Settings ***
Library  SeleniumLibrary
Library  ../../superutil/Custom.py
Resource  ../../resource/common/resource_mnu.robot
Resource  ../../resource/common/resource_btn.robot
Resource  ../../resource/app/resource_cnsRelatorio.robot

*** Variables ***


*** Keywords ***
Navegar no Relatório: Acesso a Área Restrita
  ${RELATORIO}  Set Variable  Acesso a Área Restrita

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Acesso Colaboradores Centro de Custo Veiculo
  ${RELATORIO}  Set Variable  Acesso Colaboradores Centro de Custo Veiculo

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Acesso de Grupo de Visitantes - Consulta
  ${RELATORIO}  Set Variable  Acesso de Grupo de Visitantes - Consulta

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Acesso de Veiculo
  ${RELATORIO}  Set Variable  Acesso de Veiculo

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Acesso de Visitante
  ${RELATORIO}  Set Variable  Acesso de Visitante

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Acesso de Visitantes - Consulta
  ${RELATORIO}  Set Variable  Acesso de Visitantes - Consulta

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Acessos dos Colaboradores
  ${RELATORIO}  Set Variable  Acessos dos Colaboradores

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Acessos dos Colaboradores - Consulta
  ${RELATORIO}  Set Variable  Acessos dos Colaboradores - Consulta

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Agendamento de Visitantes
  ${RELATORIO}  Set Variable  Agendamento de Visitantes

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Alarmes Não Tratados
  ${RELATORIO}  Set Variable  Alarmes Não Tratados

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Alarmes Tratados
  ${RELATORIO}  Set Variable  Alarmes Tratados

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Alarmes Tratados - Consulta
  ${RELATORIO}  Set Variable  Alarmes Tratados - Consulta

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Cadastro de Visitantes
  ${RELATORIO}  Set Variable  Cadastro de Visitantes

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Cargo Colaborador
  ${RELATORIO}  Set Variable  Cargo Colaborador

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Cargos
  ${RELATORIO}  Set Variable  Cargos

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: ClockIn ClockOut
  ${RELATORIO}  Set Variable  ClockIn ClockOut

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Codins 1
  ${RELATORIO}  Set Variable  Codins 1

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Codins 2
  ${RELATORIO}  Set Variable  Codins 2

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Colaborador Por Linha de Ônibus
  ${RELATORIO}  Set Variable  Colaborador Por Linha de Ônibus

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Colaborador por Veiculo
  ${RELATORIO}  Set Variable  Colaborador por Veiculo

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Colaborador x Matriz de Acesso
  ${RELATORIO}  Set Variable  Colaborador x Matriz de Acesso

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Colaboradores Admitidos
  ${RELATORIO}  Set Variable  Colaboradores Admitidos

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Colaboradores por Cargo
  ${RELATORIO}  Set Variable  Colaboradores por Cargo

  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Colaboradores por Empresa
  ${RELATORIO}  Set Variable  Colaboradores por Empresa
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Colaboradores por Escala
  ${RELATORIO}  Set Variable  Colaboradores por Escala
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Colaboradores por Local
  ${RELATORIO}  Set Variable  Colaboradores por Local
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta Benefícios por Colaboradores
  ${RELATORIO}  Set Variable  Consulta Benefícios por Colaboradores
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta colaborador acesso
  ${RELATORIO}  Set Variable  Consulta colaborador acesso
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta Colaborador Acesso com Centro de Custo
  ${RELATORIO}  Set Variable  Consulta Colaborador Acesso com Centro de Custo
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta Consumo Restaurante Detalhado
  ${RELATORIO}  Set Variable  Consulta Consumo Restaurante Detalhado
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta de Acesso
  ${RELATORIO}  Set Variable  Consulta de Acesso
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta de Acesso de Colaborador
  ${RELATORIO}  Set Variable  Consulta de Acesso de Colaborador
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta de Acesso de Crachá Mestre
  ${RELATORIO}  Set Variable  Consulta de Acesso de Crachá Mestre
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta de Acesso de Visitantes Consulta Pessoa Não Grata
  ${RELATORIO}  Set Variable  Consulta de Acesso de Visitantes Consulta Pessoa Não Grata
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta de Beneficios Retirada
  ${RELATORIO}  Set Variable  Consulta de Beneficios Retirada
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta de Colaboradores por Grupo de REP
  ${RELATORIO}  Set Variable  Consulta de Colaboradores por Grupo de REP
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta de Contagem de acesso diario
  ${RELATORIO}  Set Variable  Consulta de Contagem de acesso diario
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta de Devedores de Beneficios
  ${RELATORIO}  Set Variable  Consulta de Devedores de Beneficios
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta de Devedores de Benefícios
  ${RELATORIO}  Set Variable  Consulta de Devedores de Benefícios
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta de Histórico de Crachá
  ${RELATORIO}  Set Variable  Consulta de Histórico de Crachá
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta de Presenças
  ${RELATORIO}  Set Variable  Consulta de Presenças
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta de Programações
  ${RELATORIO}  Set Variable  Consulta de Programações
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta Histórico de Crachá x Numero Fisico
  ${RELATORIO}  Set Variable  Consulta Histórico de Crachá x Numero Fisico
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta pra comparativo e validação dados ERP
  ${RELATORIO}  Set Variable  Consulta pra comparativo e validação dados ERP
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Consulta Saldo de Benefícios nos Coletores
  ${RELATORIO}  Set Variable  Consulta Saldo de Benefícios nos Coletores
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Controle de Colaboradores Desligados
  ${RELATORIO}  Set Variable  Controle de Colaboradores Desligados
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Controle para a Consulta de Acesso de Colaborador
  ${RELATORIO}  Set Variable  Controle para a Consulta de Acesso de Colaborador
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Definições de Acesso Colaboradores
  ${RELATORIO}  Set Variable  Definições de Acesso Colaboradores
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Devedores de Créditos de Acesso - Consulta
  ${RELATORIO}  Set Variable  Devedores de Créditos de Acesso - Consulta
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Empresa Terceira
  ${RELATORIO}  Set Variable  Empresa Terceira
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Escala
  ${RELATORIO}  Set Variable  Escala
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver - Segunda Opção

Navegar no Relatório: Exportação ClockIn ClockOut
  ${RELATORIO}  Set Variable  Exportação ClockIn ClockOut
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Ficha Complementar Colaborador
  ${RELATORIO}  Set Variable  Ficha Complementar Colaborador
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Grupo de Acesso
  ${RELATORIO}  Set Variable  Grupo de Acesso
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Grupo de Acesso de Colaboradores
  ${RELATORIO}  Set Variable  Grupo de Acesso de Colaboradores
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Liberação de Faixa Horária
  ${RELATORIO}  Set Variable  Liberação de Faixa Horária
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Lista de Colaboradores Invalidos para Carga no REP - Controle
  ${RELATORIO}  Set Variable  Lista de Colaboradores Invalidos para Carga no REP - Controle
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Log de Aplicação - Cadastro
  ${RELATORIO}  Set Variable  Log de Aplicação - Cadastro
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Log de Integração com WebService Guardian
  ${RELATORIO}  Set Variable  Log de Integração com WebService Guardian
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Marcação de Acesso
  ${RELATORIO}  Set Variable  Marcação de Acesso
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Marcação de Ponto Codin Mobile
  ${RELATORIO}  Set Variable  Marcação de Ponto Codin Mobile
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Matriz de Acesso de Colaborador
  ${RELATORIO}  Set Variable  Matriz de Acesso de Colaborador
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Movimentação de Visitantes
  ${RELATORIO}  Set Variable  Movimentação de Visitantes
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Movimento de Colaboradores
  ${RELATORIO}  Set Variable  Movimento de Colaboradores
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Organograma
  ${RELATORIO}  Set Variable  Organograma
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Pessoas Não Gratas
  ${RELATORIO}  Set Variable  Pessoas Não Gratas
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Pessoas por Ambiente
  ${RELATORIO}  Set Variable  Pessoas por Ambiente
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Portaria
  ${RELATORIO}  Set Variable  Portaria
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Processamento LDC
  ${RELATORIO}  Set Variable  Processamento LDC
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Processo Automático de Relatório
  ${RELATORIO}  Set Variable  Processo Automático de Relatório
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Relatório - Provisório em Aberto
  ${RELATORIO}  Set Variable  Relatório - Provisório em Aberto
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Relatório de Consumo de Restaurante - Analítico
  ${RELATORIO}  Set Variable  Relatório de Consumo de Restaurante - Analítico
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Relatório de Consumo de Restaurante - Resumo
  ${RELATORIO}  Set Variable  Relatório de Consumo de Restaurante - Resumo
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Relatório de Entrada de Visitantes
  ${RELATORIO}  Set Variable  Relatório de Entrada de Visitantes
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Relatório de Perfil de Acesso Colaboradores
  ${RELATORIO}  Set Variable  Relatório de Perfil de Acesso Colaboradores
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Saída de Visitantes - Consulta
  ${RELATORIO}  Set Variable  Saída de Visitantes - Consulta
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Situações
  ${RELATORIO}  Set Variable  Situações
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Solicitações e Aprovações de Agendamentos de Visitantes
  ${RELATORIO}  Set Variable  Solicitações e Aprovações de Agendamentos de Visitantes
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Tipo de Acesso
  ${RELATORIO}  Set Variable  Tipo de Acesso
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Tipo de Alarme
  ${RELATORIO}  Set Variable  Tipo de Alarme
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Titular Crachá - Consulta
  ${RELATORIO}  Set Variable  Titular Crachá - Consulta
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Total de Horas Trabalhadas
  ${RELATORIO}  Set Variable  Total de Horas Trabalhadas
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Tratamento de Eventos de Transito
  ${RELATORIO}  Set Variable  Tratamento de Eventos de Transito
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Codins
  ${RELATORIO}  Set Variable  Codins
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Colaborador por Filial
  ${RELATORIO}  Set Variable  Colaborador por Filial
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver

Navegar no Relatório: Marcação de Acesso - Exportação CSV
  ${RELATORIO}  Set Variable  Marcação de Acesso - Exportação CSV
  resource_cnsRelatorio.Setar Campo Descrição "${RELATORIO}"
  resource_btn.Clicar no botão Pesquisar Registros (Inferior)
  resource_cnsRelatorio.Clicar No Campo Ver
