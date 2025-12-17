*** Settings ***
Resource        ../../resource/resource_login.robot
Resource        ../../resource/common/resource_mnu.robot
Suite Setup     Acessar Suricato
Suite Teardown  Fechar navegador
Test Setup      Sleep    2s


*** Test Cases ***
Cenario: Navegar No Menu Identificação | Colaborador | Empregado
  Clicar No Menu Identificação | Colaborador | Empregado

Cenário: Navegar No Menu Identificação | Colaborador | Terceiro | Cadastro de Terceiro
  Clicar No Menu Identificação | Colaborador | Terceiro | Cadastro de Terceiro

Cenário: Navegar No Menu Identificação | Colaborador | Terceiro | Tipo de Terceiro
  Clicar No Menu Identificação | Colaborador | Terceiro | Tipo de Terceiro

Cenário: Navegar No Menu Identificação | Colaborador | Parceiro
  Clicar No Menu Identificação | Colaborador | Parceiro

Cenário: Navegar No Menu Identificação | Colaborador | Histórico | Crachá
  Clicar No Menu Identificação | Colaborador | Histórico | Crachá

Cenário: Navegar No Menu Identificação | Colaborador | Histórico | Afastamento
  Clicar No Menu Identificação | Colaborador | Histórico | Afastamento

Cenário: Navegar No Menu Identificação | Colaborador | Histórico | Escala
  Clicar No Menu Identificação | Colaborador | Histórico | Escala

Cenário: Navegar No Menu Identificação | Colaborador | Histórico | Baixa de Crachá
  Clicar No Menu Identificação | Colaborador | Histórico | Baixa de Crachá

Cenário: Navegar No Menu Identificação | Colaborador | Histórico | Cargo
  Clicar No Menu Identificação | Colaborador | Histórico | Cargo

Cenário: Navegar No Menu Identificação | Colaborador | Histórico | Local
  Clicar No Menu Identificação | Colaborador | Histórico | Local

Cenário: Navegar No Menu Identificação | Colaborador | Histórico | Filial
  Clicar No Menu Identificação | Colaborador | Histórico | Filial

Cenário: Navegar No Menu Identificação | Colaborador | Histórico | Centro de Custo
  Clicar No Menu Identificação | Colaborador | Histórico | Centro de Custo

Cenário: Navegar No Menu Identificação | Colaborador | Histórico | Contrato
  Clicar No Menu Identificação | Colaborador | Histórico | Contrato

Cenário: Navegar No Menu Identificação | Colaborador | Programação | Troca de Escala
  Clicar No Menu Identificação | Colaborador | Programação | Troca de Escala

Cenário: Navegar No Menu Identificação | Colaborador | Programação | Troca de Grupo de Acesso
  Clicar No Menu Identificação | Colaborador | Programação | Troca de Grupo de Acesso

Cenário: Navegar No Menu Identificação | Colaborador | Programação | Troca de Horário
  Clicar No Menu Identificação | Colaborador | Programação | Troca de Horário

Cenário: Navegar No Menu Identificação | Colaborador | Programação | Troca de Ponte
  Clicar No Menu Identificação | Colaborador | Programação | Troca de Ponte

Cenário: Navegar No Menu Identificação | Colaborador | Grupo de Acesso Coletivo
  Clicar No Menu Identificação | Colaborador | Grupo de Acesso Coletivo

Cenário: Navegar No Menu Identificação | Colaborador | Lote de Crachá
  Clicar No Menu Identificação | Colaborador | Lote de Crachá

Cenário: Navegar No Menu Identificação | Colaborador | Senha
  Clicar No Menu Identificação | Colaborador | Senha

Cenário: Navegar No Menu Identificação | Colaborador | Matriz de Acesso
  Clicar No Menu Identificação | Colaborador | Matriz de Acesso

Cenário: Navegar No Menu Identificação | Colaborador | Cadastro de Senha de Acesso Temporária
  Clicar No Menu Identificação | Colaborador | Cadastro de Senha de Acesso Temporária

Cenário: Navegar No Menu Identificação | Visitante | Cadastro de Visitante
  Clicar No Menu Identificação | Visitante | Cadastro de Visitante

Cenário: Navegar No Menu Identificação | Visitante | Tipo de Visita
  Clicar No Menu Identificação | Visitante | Tipo de Visita

Cenário: Navegar No Menu Identificação | Visitante | Agendamento Visitante
  Clicar No Menu Identificação | Visitante | Agendamento Visitante

Cenário: Navegar No Menu Identificação | Visitante | Grupo de Visitante
  Clicar No Menu Identificação | Visitante | Grupo de Visitante

Cenário: Navegar No Menu Identificação | Visitante | Agendamento de Grupo
  Clicar No Menu Identificação | Visitante | Agendamento de Grupo

Cenário: Navegar No Menu Identificação | Visitante | Solicitar Aprovação de Visita
  Clicar No Menu Identificação | Visitante | Solicitar Aprovação de Visita

Cenário: Navegar No Menu Identificação | Visitante | Aprovar Solicitação de Visita
  Clicar No Menu Identificação | Visitante | Aprovar Solicitação de Visita

Cenário: Navegar No Menu Identificação | Candidato | Cadastro de Candidato
  Clicar No Menu Identificação | Candidato | Cadastro de Candidato

Cenário: Navegar No Menu Identificação | Candidato | Agendamento
  Clicar No Menu Identificação | Candidato | Agendamento

Cenário: Navegar No Menu Identificação | Candidato | Autorização Acesso
  Clicar No Menu Identificação | Candidato | Autorização Acesso

Cenário: Navegar No Menu Identificação | Pessoa Não Grata | Cadastro de Pessoa Não Grata
  Clicar No Menu Identificação | Pessoa Não Grata | Cadastro de Pessoa Não Grata

Cenário: Navegar No Menu Identificação | Pessoa Não Grata | Motivo
  Clicar No Menu Identificação | Pessoa Não Grata | Motivo
