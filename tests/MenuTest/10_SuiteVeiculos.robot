*** Settings ***
Resource        ../../resource/resource_login.robot
Resource        ../../resource/common/resource_mnu.robot
Suite Setup     Acessar Suricato
Suite Teardown  Fechar navegador
Test Setup      Sleep    2s


*** Test Cases ***

Cenario: Navegar No Menu Veículos | Prontuário de Veículos
  Clicar No Menu Veículos | Prontuário de Veículos

Cenario: Navegar No Menu Veículos | Cadastro | Veículo
  Clicar No Menu Veículos | Cadastro | Veículo

Cenário: Navegar No Menu Veículos | Cadastro | Marcas
  Clicar No Menu Veículos | Cadastro | Marcas

Cenário: Navegar No Menu Veículos | Cadastro | Modelos
  Clicar No Menu Veículos | Cadastro | Modelos

Cenario: Navegar No Menu Veículos | Cadastro | Acessórios
  Clicar No Menu Veículos | Cadastro | Acessórios

Cenario: Navegar No Menu Veículos | Cadastro | Situações
  Clicar No Menu Veículos | Cadastro | Situações

Cenário: Navegar No Menu Veículos | Cadastro | Motivo de Uso
  Clicar No Menu Veículos | Cadastro | Motivo de Uso

Cenário: Navegar No Menu Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota
  Clicar No Menu Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota

Cenario: Navegar No Menu Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota
  Clicar No Menu Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota

Cenario: Navegar No Menu Veículos | Frota | Utilização Veículos | Entrega
  Clicar No Menu Veículos | Frota | Utilização Veículos | Entrega

Cenário: Navegar No Menu Veículos | Frota | Utilização Veículos | Devolução
  Clicar No Menu Veículos | Frota | Utilização Veículos | Devolução

Cenário: Navegar No Menu Veículos | Frota | Empresa | Condutores
  Clicar No Menu Veículos | Frota | Empresa | Condutores

Cenario: Navegar No Menu Veículos | Frota | Empresa | Veículos
  Clicar No Menu Veículos | Frota | Empresa | Veículos

Cenario: Navegar No Menu Veículos | Frota | Empresa | Históricos | Crachá Veículo
  Clicar No Menu Veículos | Frota | Empresa | Históricos | Crachá Veículo

Cenário: Navegar No Menu Veículos | Frota | Empresa | Históricos | Local Veículo
  Clicar No Menu Veículos | Frota | Empresa | Históricos | Local Veículo

Cenário: Navegar No Menu Veículos | Frota | Empresa | Históricos | Situação Veículo
  Clicar No Menu Veículos | Frota | Empresa | Históricos | Situação Veículo

Cenario: Navegar No Menu Veículos | Frota | Seguros | Cobertura
  Clicar No Menu Veículos | Frota | Seguros | Cobertura

Cenario: Navegar No Menu Veículos | Frota | Seguros | Corretores
  Clicar No Menu Veículos | Frota | Seguros | Corretores

Cenário: Navegar No Menu Veículos | Frota | Seguros | Cadastro
  Clicar No Menu Veículos | Frota | Seguros | Cadastro

Cenário: Navegar No Menu Veículos | Frota | Ocorrências | Sinistros
  Clicar No Menu Veículos | Frota | Ocorrências | Sinistros

Cenario: Navegar No Menu Veículos | Frota | Ocorrências | Reclamações
  Clicar No Menu Veículos | Frota | Ocorrências | Reclamações

Cenario: Navegar No Menu Veículos | Frota | Ocorrências | Infrações | Cadastro
  Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Cadastro

Cenário: Navegar No Menu Veículos | Frota | Ocorrências | Infrações | Multas
  Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Multas

Cenário: Navegar No Menu Veículos | Frota | Consultas | Agendamento
  Clicar No Menu Veículos | Frota | Consultas | Agendamento

Cenario: Navegar No Menu Veículos | Frota | Consultas | Utilização
  Clicar No Menu Veículos | Frota | Consultas | Utilização

Cenario: Navegar No Menu Veículos | Definições
  Clicar No Menu Veículos | Definições
