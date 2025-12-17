*** Settings ***
Resource        ../../resource/resource_login.robot
Resource        ../../resource/common/resource_mnu.robot
Suite Setup     Acessar Suricato
Suite Teardown  Fechar navegador
Test Setup      Sleep    2s


*** Test Cases ***
Cenario: Navegar No Menu Entrada | Visitante | Entrada de Visitante
  Clicar No Menu Entrada | Visitante | Entrada de Visitante

Cenário: Navegar No Menu Entrada | Visitante | Saída de Visitante
  Clicar No Menu Entrada | Visitante | Saída de Visitante

Cenário: Navegar No Menu Entrada | Visitante | Entrada de Grupo
  Clicar No Menu Entrada | Visitante | Entrada de Grupo

Cenário: Navegar No Menu Entrada | Visitante | Entrada de Visitantes com Captura de Fotos
  Clicar No Menu Entrada | Visitante | Entrada de Visitantes com Captura de Fotos

Cenário: Navegar No Menu Entrada | Visitante | Consultar Ticket WSG
  Clicar No Menu Entrada | Visitante | Consultar Ticket WSG

Cenário: Navegar No Menu Entrada | Candidato | Entrada
  Clicar No Menu Entrada | Candidato | Entrada

Cenário: Navegar No Menu Entrada | Candidato | Saída
  Clicar No Menu Entrada | Candidato | Saída

Cenário: Navegar No Menu Entrada | Provisório | Colaborador
  Clicar No Menu Entrada | Provisório | Colaborador

Cenário: Navegar No Menu Entrada | Provisório | Baixa Provisório
  Clicar No Menu Entrada | Provisório | Baixa Provisório

Cenário: Navegar No Menu Entrada | Autorização | Agendamento
  Clicar No Menu Entrada | Autorização | Agendamento

Cenário: Navegar No Menu Entrada | Autorização | Entrada
  Clicar No Menu Entrada | Autorização | Entrada

Cenário: Navegar No Menu Entrada | Autorização | Baixa de Autorização
  Clicar No Menu Entrada | Autorização | Baixa de Autorização

Cenário: Navegar No Menu Entrada | Veículo | Cadastro
  Clicar No Menu Entrada | Veículo | Cadastro

Cenário: Navegar No Menu Entrada | Veículo | Entrada
  Clicar No Menu Entrada | Veículo | Entrada

Cenário: Navegar No Menu Entrada | Veículo | Saída
  Clicar No Menu Entrada | Veículo | Saída

Cenário: Navegar No Menu Entrada | Material | Cadastro
  Clicar No Menu Entrada | Material | Cadastro

Cenário: Navegar No Menu Entrada | Material | Material por Pessoa
  Clicar No Menu Entrada | Material | Material por Pessoa

Cenário: Navegar No Menu Entrada | Material | Solicitação de Saída
  Clicar No Menu Entrada | Material | Solicitação de Saída

Cenário: Navegar no Menu Entrada | Material | Autorização
  Clicar No Menu Entrada | Material | Autorização

Cenário: Navegar No Menu Entrada | Material | Movimentação
  Clicar No Menu Entrada | Material | Movimentação

Cenário: Navegar No Menu Entrada | Veículo de Colaborador - Cadastro
  Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

Cenário: Navegar No Menu Entrada | Marcação de Acesso Manual
  Clicar No Menu Entrada | Marcação de Acesso Manual
