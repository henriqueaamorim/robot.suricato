*** Settings ***
Resource        ../../resource/resource_login.robot
Resource        ../../resource/common/resource_mnu.robot
Suite Setup     Acessar Suricato
Suite Teardown  Fechar navegador
Test Setup      Sleep    2s


*** Test Cases ***
Cenario: Navegar No Menu Registro | Perfil de Acesso
  Clicar No Menu Registro | Perfil de Acesso

Cenário: Navegar No Menu Registro | Ocorrência | Cadastro
  Clicar No Menu Registro | Ocorrência | Cadastro

Cenário: Navegar No Menu Registro | Ocorrência | Tipos de Ocorrência
  Clicar No Menu Registro | Ocorrência | Tipos de Ocorrência

Cenário: Navegar No Menu Registro | Crachá | Pré-Cadastro de Crachá
  Clicar No Menu Registro | Crachá | Pré-Cadastro de Crachá

Cenário: Navegar No Menu Registro | Crachá | Pré-Cadastro de Crachás Por Faixa
  Clicar No Menu Registro | Crachá | Pré-Cadastro de Crachás Por Faixa

Cenário: Navegar No Menu Registro | Crachá | Ler Smart Card
  Clicar No Menu Registro | Crachá | Ler Smart Card

Cenário: Navegar No Menu Registro | Crachá | Mestre e Acesso Geral
  Clicar No Menu Registro | Crachá | Mestre e Acesso Geral

Cenário: Navegar No Menu Registro | Crachá | Troca de Crachá
  Clicar No Menu Registro | Crachá | Troca de Crachá

Cenário: Navegar No Menu Registro | Crachá | Gravação Por faixa
  Clicar No Menu Registro | Crachá | Gravação Por faixa

Cenário: Navegar No Menu Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio
  Clicar No Menu Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio

Cenário: Navegar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio
  Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio

Cenário: Navegar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Desbloqueio
  Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Desbloqueio

Cenário: Navegar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio

Cenário: Navegar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio
  Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio

Cenário: Navegar No Menu Registro | Liberação Faixa Horária | Individual
  Clicar No Menu Registro | Liberação Faixa Horária | Individual

Cenário: Navegar No Menu Registro | Liberação Faixa Horária | Coletiva
  Clicar No Menu Registro | Liberação Faixa Horária | Coletiva

Cenário: Navegar No Menu Registro | Envio de Mensagem | Individual
  Clicar No Menu Registro | Envio de Mensagem | Individual

Cenário: Navegar No Menu Registro | Envio de Mensagem | Coletiva
  Clicar No Menu Registro | Envio de Mensagem | Coletiva

Cenário: Navegar no Menu Registro | Envio de Mensagem | Mensagens Pré-definidas
  Clicar No Menu Registro | Envio de Mensagem | Mensagens Pré-definidas

Cenário: Navegar No Menu Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro
  Clicar No Menu Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro

Cenário: Navegar No Menu Registro | Crédito de Acesso | Coletivo
  Clicar No Menu Registro | Crédito de Acesso | Coletivo

Cenário: Navegar No Menu Registro | Benefício | Cadastro de Benefício
  Clicar No Menu Registro | Benefício | Cadastro de Benefício

Cenário: Navegar No Menu Registro | Benefício | Atribuição
  Clicar No Menu Registro | Benefício | Atribuição

Cenário: Navegar No Menu Registro | Benefício | Consumo
  Clicar No Menu Registro | Benefício | Consumo

Cenário: Navegar No Menu Registro | Benefício | Histórico
  Clicar No Menu Registro | Benefício | Histórico

Cenário: Navegar No Menu Registro | Benefício | Autorização de Devedores
  Clicar No Menu Registro | Benefício | Autorização de Devedores

Cenário: Navegar No Menu Registro | Área Restrita | Autorizar Acesso
  Clicar No Menu Registro | Área Restrita | Autorizar Acesso

Cenário: Navegar No Menu Registro | Área Restrita | Consultar Acesso
  Clicar No Menu Registro | Área Restrita | Consultar Acesso

Cenário: Navegar No Menu Registro | Chave | Cadastro de Chave
  Clicar No Menu Registro | Chave | Cadastro de Chave

Cenário: Navegar No Menu Registro | Chave | Movimentação de Chave
  Clicar No Menu Registro | Chave | Movimentação de Chave

Cenário: Navegar No Menu Registro | Chave | Relatório de Cadastro de Chave
  Clicar No Menu Registro | Chave | Relatório de Cadastro de Chave

Cenário: Navegar No Menu Registro | Chave | Relatório de Movimentação de Chave
  Clicar No Menu Registro | Chave | Relatório de Movimentação de Chave

Cenário: Navegar No Menu Registro | Guarda-Volumes | Cadastro de Guarda-Volumes
  Clicar No Menu Registro | Guarda-Volumes | Cadastro de Guarda-Volumes

Cenário: Navegar No Menu Registro | Guarda-Volumes | Movimentação de Guarda-Volume
  Clicar No Menu Registro | Guarda-Volumes | Movimentação de Guarda-Volumes

Cenário: Navegar No Menu Registro | Guarda-Volumes | Relatório Guarda-Volumes
  Clicar No Menu Registro | Guarda-Volumes | Relatório Guarda-Volumes

Cenário: Navegar No Menu Registro | Guarda-Volumes | Relatório de Movimentação de Guarda-Volumes
  Clicar No Menu Registro | Guarda-Volumes | Relatório de Movimentação de Guarda-Volumes
