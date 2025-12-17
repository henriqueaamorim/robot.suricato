*** Settings ***
Resource        ../../resource/resource_login.robot
Resource        ../../resource/common/resource_mnu.robot
Suite Setup     Acessar Suricato
Suite Teardown  Fechar navegador
#Test Setup      Sleep    0s


*** Test Cases ***
Cenario: Navegar No Menu Estrutura | Empresa | Organograma
  Clicar No Menu Estrutura | Empresa | Organograma

Cenário: Navegar No Menu Estrutura | Empresa | Cadastro de Empresa
  Clicar No Menu Estrutura | Empresa | Cadastro de Empresa

Cenário: Navegar No Menu Estrutura | Empresa | Cargo
  Clicar No Menu Estrutura | Empresa | Cargo

Cenário: Navegar No Menu Estrutura | Empresa | Escala | Cadastro de Escala
  Clicar No Menu Estrutura | Empresa | Escala | Cadastro de Escala

Cenário: Navegar No Menu Estrutura | Empresa | Escala | Horário de Escala
  Clicar No Menu Estrutura | Empresa | Escala | Horário de Escala

Cenário: Navegar No Menu Estrutura | Empresa | Centro de Custo
  Clicar No Menu Estrutura | Empresa | Centro de Custo

Cenário: Navegar No Menu Estrutura | Empresa | Filial
  Clicar No Menu Estrutura | Empresa | Filial

Cenário: Navegar No Menu Estrutura | Empresa | Formulário de Cadastro de Tipo de Usuário
  Clicar No Menu Estrutura | Empresa | Formulário de Cadastro de Tipo de Usuário

Cenário: Navegar No Menu Estrutura | Empresa | Area de Risco | Cadastro
  Clicar No Menu Estrutura | Empresa | Area de Risco | Cadastro

Cenário: Navegar No Menu Estrutura | Empresa | Area de Risco | Consulta
  Clicar No Menu Estrutura | Empresa | Area de Risco | Consulta

Cenário: Navegar No Menu Estrutura | Empresa | Area de Risco | Codin
  Clicar No Menu Estrutura | Empresa | Area de Risco | Codin

Cenário: Navegar No Menu Estrutura | Empresa | Area de Risco | Colaborador
  Clicar No Menu Estrutura | Empresa | Area de Risco | Colaborador

Cenário: Navegar No Menu Estrutura | Empresa | Area de Risco | Controle
  Clicar No Menu Estrutura | Empresa | Area de Risco | Controle

Cenário: Navegar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Tipos de EPI
  Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Tipos de EPI

Cenário: Navegar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI
  Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI

Cenário: Navegar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Local
  Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Local

Cenário: Navegar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo
  Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo

Cenário: Navegar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo
  Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo

Cenário: Navegar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Cargo
  Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Cargo

Cenário: Navegar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Termo de Compromisso para Entrega de EPI
  Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Termo de Compromisso para Entrega de EPI

Cenário: Navegar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Grupo de Email - EPI
  Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Grupo de Email - EPI

Cenário: Navegar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Histórico de EPI por Colaborador
  Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Histórico de EPI por Colaborador

Cenário: Navegar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Colaborador
  Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Colaborador

Cenário: Navegar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Visitante
  Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Visitante

Cenário: Navegar No Menu Estrutura | Empresa | Ambiente
  Clicar No Menu Estrutura | Empresa | Ambiente

Cenário: Navegar No Menu Estrutura | Empresa | Refeitório
  Clicar No Menu Estrutura | Empresa | Refeitório

Cenário: Navegar No Menu Estrutura | Empresa | Estacionamento | Cadastro de Estacionamentos
  Clicar No Menu Estrutura | Empresa | Estacionamento | Cadastro de Estacionamentos

Cenário: Navegar No Menu Estrutura | Empresa | Cadastro de Tipo de Contrato
  Clicar No Menu Estrutura | Empresa | Cadastro de Tipo de Contrato

Cenário: Navegar No Menu Estrutura | Empresa Terceira | Cadastro de Empresa Terceira
  Clicar No Menu Estrutura | Empresa Terceira | Cadastro de Empresa Terceira

Cenário: Navegar No Menu Estrutura | Empresa Terceira | Contratos
  Clicar No Menu Estrutura | Empresa Terceira | Contratos

Cenário: Navegar No Menu Estrutura | Situação Trabalhista
  Clicar No Menu Estrutura | Situação Trabalhista

Cenário: Navegar No Menu Estrutura | Feriado
  Clicar No Menu Estrutura | Feriado

Cenário: Navegar No Menu Estrutura | Planta
  Clicar No Menu Estrutura | Planta

Cenário: Navegar No Menu Estrutura | Portaria e Recepção
  Clicar No Menu Estrutura | Portaria e Recepção

Cenário: Navegar No Menu Estrutura | Integração TOTVS
  Clicar No Menu Estrutura | Integração TOTVS

Cenário: Navegar No Menu Estrutura | Configuração Elevadores | Cadastro de Torres
  Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Torres

Cenário: Navegar No Menu Estrutura | Configuração Elevadores | Cadastro de Andares
  Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Andares

Cenário: Navegar No Menu Estrutura | Configuração Elevadores | Cadastro de Elevadores
  Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Elevadores
