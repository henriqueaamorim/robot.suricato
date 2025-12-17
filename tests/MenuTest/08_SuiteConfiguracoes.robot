*** Settings ***
Resource        ../../resource/resource_login.robot
Resource        ../../resource/common/resource_mnu.robot
Suite Setup     Acessar Suricato
Suite Teardown  Fechar navegador
Test Setup      Sleep    2s


*** Test Cases ***
Cenario: Navegar No Menu Configurações | Usuários | Usuário Aprovador de Solitação de Visita
  Clicar No Menu Configurações | Usuários | Usuário Aprovador de Solitação de Visita

Cenário: Navegar No Menu Configurações | Usuários | Grupo de Usuário
  Clicar No Menu Configurações | Usuários | Grupo de Usuário

Cenário: Navegar No Menu Configurações | Usuários | Usuário
  Clicar No Menu Configurações | Usuários | Usuário

Cenário: Navegar No Menu Configurações | Usuários | Histórico de Perfil
  Clicar No Menu Configurações | Usuários | Histórico de Perfil

Cenário: Navegar No Menu Configurações | Usuários | Diretiva de Segurança
  Clicar No Menu Configurações | Usuários | Diretiva de Segurança

Cenário: Navegar No Menu Configurações | Usuários | Ativação de Usuário
  Clicar No Menu Configurações | Usuários | Ativação de Usuário

Cenário: Navegar No Menu Configurações | Usuários | Usuário x Portaria
  Clicar No Menu Configurações | Usuários | Usuário x Portaria

Cenário: Navegar No Menu Configurações | Usuários | Alterar senha
  Clicar No Menu Configurações | Usuários | Alterar senha

Cenário: Navegar No Menu Configurações | Crachá
  Clicar No Menu Configurações | Crachá

Cenário: Navegar No Menu Configurações | Filtro de Abrangência
  Clicar No Menu Configurações | Filtro de Abrangência

Cenário: Navegar No Menu Configurações | Email
  Clicar No Menu Configurações | Email

Cenário: Navegar No Menu Configurações | Faixa de Acesso de Refeitório
  Clicar No Menu Configurações | Faixa de Acesso de Refeitório

Cenário: Navegar No Menu Configurações | Pessoa Não Grata
  Clicar No Menu Configurações | Pessoa Não Grata

Cenário: Navegar No Menu Configurações | Câmera
  Clicar No Menu Configurações | Câmera

Cenário: Navegar No Menu Configurações | Log de Aplicação | Cadastro
  Clicar No Menu Configurações | Log de Aplicação | Cadastro

Cenário: Navegar No Menu Configurações | Log de Aplicação | Log Eventos Suriplayer
  Clicar No Menu Configurações | Log de Aplicação | Log Eventos Suriplayer

Cenário: Navegar No Menu Configurações | Log de Aplicação | Consulta
  Clicar No Menu Configurações | Log de Aplicação | Consulta

Cenário: Navegar No Menu Configurações | Idioma
  Clicar No Menu Configurações | Idioma

Cenário: Navegar No Menu Configurações | Hora Extra
  Clicar No Menu Configurações | Hora Extra

Cenário: Navegar No Menu Configurações | Configurações Gerais | Entrada de Visitantes
  Clicar No Menu Configurações | Configurações Gerais | Entrada de Visitantes

Cenário: Navegar No Menu Configurações | Configurações Gerais | Matrícula Automática
  Clicar No Menu Configurações | Configurações Gerais | Matrícula Automática

Cenário: Navegar No Menu Configurações | Configurações Gerais | Configuração de LDAP
  Clicar No Menu Configurações | Configurações Gerais | Configuração de LDAP

Cenário: Navegar No Menu Configurações | Configurações Gerais | Configurações Crachá
  Clicar No Menu Configurações | Configurações Gerais | Configurações Crachá

Cenário: Navegar No Menu Configurações | Configurações Gerais | Configurações Gerais Do Sistema
  Clicar No Menu Configurações | Configurações Gerais | Configurações Gerais Do Sistema

Cenário: Navegar No Menu Configurações | Configurações Gerais | Tipo de Biometria por Grupo de Usuário
  Clicar No Menu Configurações | Configurações Gerais | Tipo de Biometria por Grupo de Usuário

Cenário: Navegar No Menu Configurações | Configurações Gerais | Integração TOTVS
  Clicar No Menu Configurações | Configurações Gerais | Integração TOTVS

Cenário: Navegar No Menu Configurações | Configurações Gerais | Configurações de EPI
  Clicar No Menu Configurações | Configurações Gerais | Configurações de EPI

Cenário: Navegar No Menu Configurações | Cadastro de Tipo de Refeição
  Clicar No Menu Configurações | Cadastro de Tipo de Refeição

Cenário: Navegar No Menu Configurações | Upload de Firmware
  Clicar No Menu Configurações | Upload de Firmware

Cenário: Navegar No Menu Configurações | Cadastro de Grupos de Abrangência
  Clicar No Menu Configurações | Cadastro de Grupos de Abrangência

Cenário: Navegar No Menu Configurações | Campos Customizáveis
  Clicar No Menu Configurações | Campos Customizáveis

Cenário: Navegar No Menu Configurações | LGPD - Configurações de Dados Sensíveis
  Clicar No Menu Configurações | LGPD - Configurações de Dados Sensíveis

Cenário: Navegar No Menu Configurações | LGPD
  Clicar No Menu Configurações | LGPD
