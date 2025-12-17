*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesSuri.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Configurações Gerais Do Sistema
${APPNAME}     ctrConfiguracoesSuri
${OBJETIVO}    Verificar todos os campos na tela Configurações Gerais Do Sistema.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Configurações Gerais Do Sistema
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações Gerais Do Sistema
  Então devo visualizar a tela: Configurações Gerais Do Sistema
  E verificar a label Área de Risco
  E verificar o campo Liberar Acesso Área de Risco
  E verificar o campo Mensagem no Codin
  E verificar a label Configuração de Exibição de Históricos
  E verificar o campo Histórico de Filial
  E verificar o campo Histórico de Organograma
  E verificar o campo Histórico de Cargos
  E verificar o campo Histórico de Escalas
  E verificar o campo Histórico de Crachás
  E verificar o campo Histórico de Centro de Custos
  E verificar a label Configurações Gerais
  E verificar o campo Permitir Cargo Auto-Incremento
  E verificar o campo Mensagem de Cadas. Biometria
  E verificar o campo Bloqueio por Tentativas de Biometria Inválida
  E verificar o campo Utiliza Suricato REP
  E verificar o campo Utiliza Matriz de Acesso
  E verificar o campo Utiliza Área Alfandegada LDC
  E verificar o campo Utiliza Controle de Validade de Fumaça
  E verificar a label Config. Caminho de Gravação da Câmera
  E verificar o campo Configuração de Local para gravação de Fotos
  E verificar a label Configurações Gerador
  E verificar o campo Configurações Crachá Manual
  E verificar o campo Caminho Gerador Relatórios
  E verificar a label Processos Automaticos
  E verificar o campo Sit. Colaborador para Import. Crachá
  E verificar o campo Atualiza Dados Tb. Acesso Colaborador
  E verificar o campo N. Maximo Tentativas de Carga
  E verificar a label Controle de Documentos
  E verificar o campo Motivo Bloqueio de Documentos
  E verificar a label Controle Linhas de Ônibus
  E verificar o campo Colab. Utiliza Transp. Empresa
  E verificar a label Permissão Acesso Veiculos
  E verificar o campo Time out Monitoramento de Câmeras
  E verificar o campo Configuração de Largura da Câmera
  E verificar o campo Configuração da Altura da Câmera
  E verificar a label Timeout Monitoramento de Câmeras
  E verificar o campo Qtde Dias para Notificação ASO
  E verificar o campo Qtde Dias Para Notificação de Venc. Treinamento
  E verificar o campo E-mail Envio de Notificação de Val. do ASO
  E verificar o campo E-mail Envio de Notificação de Val. do Treinamento de Segurança
  E verificar o campo Manter log de (dias)
  E verificar a label Notificações - Envio de E-mail
  E verificar o campo Quantidade de Acessos
  E verificar o campo Tempo (em segundos) para Ativação do Alarme
  E verificar o campo Qualidade Mínima de Captura de Biometria
  E verificar o campo Valida Dupla Verificação de Veículos
  E verificar o campo Baixa de Veiculos para Visitantes
  E verificar a label Acesso com Senha
  E verificar o campo Modelo Codin
  E verificar o campo Tempo de Validade da Senha
  E verificar a label Suricato Escola
  E verificar o campo Suricato Escola
  E verificar o campo Responsável recebe notificação via Sms/E-mail
  E verificar a label Campos Customizados
  E verificar o campo Utilizar Campos Customizados
  E verificar o campo Cor para Destaque
  E verificar a label Config. Monitoramento Cor Status
  E verificar o campo Status On
  E verificar o campo Status Off
  E verificar o campo Status Desativado
  E verificar a label Suricato Techboard
  E verificar o campo Endereço do Servidor
  E verificar o campo Porta do Servidor
  E verificar a label Controle de Fechamento de Agência
  E verificar o campo Timeout(min) Antes Fechamento
  E verificar o campo Timeout(min) Depois Fechamento
  E verificar a label Período Permitido de Carga de Biometria Automático
  E verificar o campo Hora Inicial
  E verificar o campo Hora Final
  E verificar a label Configurações do Middleware
  E verificar o campo Utiliza Middleware
  E verificar o campo Caminho Middleware
  E verificar a label WebService Guardian
  E verificar o campo Integração WSG
  E verificar a label Tipo de Autenticação
  E verificar o campo Biometria
  E verificar o campo Smartcard
  E verificar o campo Foto
  E verificar o campo Scanner
  E verificar o campo Pad Assinatura
  E verificar o campo Porta TCP
  E verificar o campo Tipo de leitura de smartcard
  E verificar a label Tipo de Gravação de Listas
  E verificar o campo Tipo de Geração de Listas
  E verificar a segunda label Tipo de Gravação de Listas
  #E verificar o campo Método de Autenticação 
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações Gerais Do Sistema
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configurações Gerais Do Sistema

Então devo visualizar a tela: Configurações Gerais Do Sistema
  resource_ctrConfiguracoesSuri.Acessar Tela Configurações Gerais Do Sistema

E verificar a label Área de Risco
  resource_ctrConfiguracoesSuri.Verificar a label Área de Risco

E verificar o campo Liberar Acesso Área de Risco
  resource_ctrConfiguracoesSuri.Verificar o campo Liberar Acesso Área de Risco

E verificar o campo Mensagem no Codin
  resource_ctrConfiguracoesSuri.Verificar o campo Mensagem no Codin

E verificar a label Configuração de Exibição de Históricos
  resource_ctrConfiguracoesSuri.Verificar a label Configuração de Exibição de Históricos

E verificar o campo Histórico de Filial
  resource_ctrConfiguracoesSuri.Verificar o campo Histórico de Filial

E verificar o campo Histórico de Organograma
  resource_ctrConfiguracoesSuri.Verificar o campo Histórico de Organograma

E verificar o campo Histórico de Cargos
  resource_ctrConfiguracoesSuri.Verificar o campo Histórico de Cargos

E verificar o campo Histórico de Escalas
  resource_ctrConfiguracoesSuri.Verificar o campo Histórico de Escalas

E verificar o campo Histórico de Crachás
  resource_ctrConfiguracoesSuri.Verificar o campo Histórico de Crachás

E verificar o campo Histórico de Centro de Custos
  resource_ctrConfiguracoesSuri.Verificar o campo Histórico de Centro de Custos

E verificar a label Configurações Gerais
  resource_ctrConfiguracoesSuri.Verificar a label Configurações Gerais

E verificar o campo Permitir Cargo Auto-Incremento
  resource_ctrConfiguracoesSuri.Verificar o campo Permitir Cargo Auto-Incremento

E verificar o campo Mensagem de Cadas. Biometria
  resource_ctrConfiguracoesSuri.Verificar o campo Mensagem de Cadas. Biometria

E verificar o campo Bloqueio por Tentativas de Biometria Inválida
  resource_ctrConfiguracoesSuri.Verificar o campo Bloqueio por Tentativas de Biometria Inválida

E verificar o campo Utiliza Suricato REP
  resource_ctrConfiguracoesSuri.Verificar o campo Utiliza Suricato REP

E verificar o campo Utiliza Matriz de Acesso
  resource_ctrConfiguracoesSuri.Verificar o campo Utiliza Matriz de Acesso

E verificar o campo Utiliza Área Alfandegada LDC
  resource_ctrConfiguracoesSuri.Verificar o campo Utiliza Área Alfandegada LDC

E verificar o campo Utiliza Controle de Validade de Fumaça
  resource_ctrConfiguracoesSuri.Verificar o campo Utiliza Controle de Validade de Fumaça

E verificar a label Config. Caminho de Gravação da Câmera
  resource_ctrConfiguracoesSuri.Verificar a label Config. Caminho de Gravação da Câmera

E verificar o campo Configuração de Local para gravação de Fotos
  resource_ctrConfiguracoesSuri.Verificar o campo Configuração de Local para gravação de Fotos

E verificar a label Configurações Gerador
  resource_ctrConfiguracoesSuri.Verificar a label Configurações Gerador

E verificar o campo Configurações Crachá Manual
  resource_ctrConfiguracoesSuri.Verificar o campo Configurações Crachá Manual

E verificar o campo Caminho Gerador Relatórios
  resource_ctrConfiguracoesSuri.Verificar o campo Caminho Gerador Relatórios

E verificar a label Processos Automaticos
  resource_ctrConfiguracoesSuri.Verificar a label Processos Automaticos

E verificar o campo Sit. Colaborador para Import. Crachá
  resource_ctrConfiguracoesSuri.Verificar o campo Sit. Colaborador para Import. Crachá

E verificar o campo Atualiza Dados Tb. Acesso Colaborador
  resource_ctrConfiguracoesSuri.Verificar o campo Atualiza Dados Tb. Acesso Colaborador

E verificar o campo N. Maximo Tentativas de Carga
  resource_ctrConfiguracoesSuri.Verificar o campo N. Maximo Tentativas de Carga

E verificar a label Controle de Documentos
  resource_ctrConfiguracoesSuri.Verificar a label Controle de Documentos

E verificar o campo Motivo Bloqueio de Documentos
  resource_ctrConfiguracoesSuri.Verificar o campo Motivo Bloqueio de Documentos

E verificar a label Controle Linhas de Ônibus
  resource_ctrConfiguracoesSuri.Verificar a label Controle Linhas de Ônibus

E verificar o campo Colab. Utiliza Transp. Empresa
  resource_ctrConfiguracoesSuri.Verificar o campo Colab. Utiliza Transp. Empresa

E verificar a label Permissão Acesso Veiculos
  resource_ctrConfiguracoesSuri.Verificar a label Permissão Acesso Veiculos

E verificar o campo Time out Monitoramento de Câmeras
  resource_ctrConfiguracoesSuri.Verificar o campo Time out Monitoramento de Câmeras

E verificar o campo Configuração de Largura da Câmera
  resource_ctrConfiguracoesSuri.Verificar o campo Configuração de Largura da Câmera

E verificar o campo Configuração da Altura da Câmera
  resource_ctrConfiguracoesSuri.Verificar o campo Configuração da Altura da Câmera

E verificar a label Timeout Monitoramento de Câmeras
  resource_ctrConfiguracoesSuri.Verificar a label Timeout Monitoramento de Câmeras

E verificar o campo Qtde Dias para Notificação ASO
  resource_ctrConfiguracoesSuri.Verificar o campo Qtde Dias para Notificação ASO

E verificar o campo Qtde Dias Para Notificação de Venc. Treinamento
  resource_ctrConfiguracoesSuri.Verificar o campo Qtde Dias Para Notificação de Venc. Treinamento

E verificar o campo E-mail Envio de Notificação de Val. do ASO
  resource_ctrConfiguracoesSuri.Verificar o campo E-mail Envio de Notificação de Val. do ASO

E verificar o campo E-mail Envio de Notificação de Val. do Treinamento de Segurança
  resource_ctrConfiguracoesSuri.Verificar o campo E-mail Envio de Notificação de Val. do Treinamento de Segurança

E verificar o campo Manter log de (dias)
  resource_ctrConfiguracoesSuri.Verificar o campo Manter log de (dias)

E verificar a label Notificações - Envio de E-mail
  resource_ctrConfiguracoesSuri.Verificar a label Notificações - Envio de E-mail

E verificar o campo Quantidade de Acessos
  resource_ctrConfiguracoesSuri.Verificar o campo Quantidade de Acessos

E verificar o campo Tempo (em segundos) para Ativação do Alarme
  resource_ctrConfiguracoesSuri.Verificar o campo Tempo (em segundos) para Ativação do Alarme

E verificar o campo Qualidade Mínima de Captura de Biometria
  resource_ctrConfiguracoesSuri.Verificar o campo Qualidade Mínima de Captura de Biometria

E verificar o campo Valida Dupla Verificação de Veículos
  resource_ctrConfiguracoesSuri.Verificar o campo Valida Dupla Verificação de Veículos

E verificar o campo Baixa de Veiculos para Visitantes
  resource_ctrConfiguracoesSuri.Verificar o campo Baixa de Veiculos para Visitantes

E verificar a label Acesso com Senha
  resource_ctrConfiguracoesSuri.Verificar a label Acesso com Senha

E verificar o campo Modelo Codin
  resource_ctrConfiguracoesSuri.Verificar o campo Modelo Codin

E verificar o campo Tempo de Validade da Senha
  resource_ctrConfiguracoesSuri.Verificar o campo Tempo de Validade da Senha

E verificar a label Suricato Escola
  resource_ctrConfiguracoesSuri.Verificar a label Suricato Escola

E verificar o campo Suricato Escola
  resource_ctrConfiguracoesSuri.Verificar o campo Suricato Escola

E verificar o campo Responsável recebe notificação via Sms/E-mail
  resource_ctrConfiguracoesSuri.Verificar o campo Responsável recebe notificação via Sms/E-mail

E verificar a label Campos Customizados
  resource_ctrConfiguracoesSuri.Verificar a label Campos Customizados

E verificar o campo Utilizar Campos Customizados
  resource_ctrConfiguracoesSuri.Verificar o campo Utilizar Campos Customizados

E verificar o campo Cor para Destaque
  resource_ctrConfiguracoesSuri.Verificar o campo Cor para Destaque

E verificar a label Config. Monitoramento Cor Status
  resource_ctrConfiguracoesSuri.Verificar a label Config. Monitoramento Cor Status

E verificar o campo Status On
  resource_ctrConfiguracoesSuri.Verificar o campo Status On

E verificar o campo Status Off
  resource_ctrConfiguracoesSuri.Verificar o campo Status Off

E verificar o campo Status Desativado
  resource_ctrConfiguracoesSuri.Verificar o campo Status Desativado

E verificar a label Suricato Techboard
  resource_ctrConfiguracoesSuri.Verificar a label Suricato Techboard

E verificar o campo Endereço do Servidor
  resource_ctrConfiguracoesSuri.Verificar o campo Endereço do Servidor

E verificar o campo Porta do Servidor
  resource_ctrConfiguracoesSuri.Verificar o campo Porta do Servidor

E verificar a label Controle de Fechamento de Agência
  resource_ctrConfiguracoesSuri.Verificar a label Controle de Fechamento de Agência

E verificar o campo Timeout(min) Antes Fechamento
  resource_ctrConfiguracoesSuri.Verificar o campo Timeout(min) Antes Fechamento

E verificar o campo Timeout(min) Depois Fechamento
  resource_ctrConfiguracoesSuri.Verificar o campo Timeout(min) Depois Fechamento

E verificar a label Período Permitido de Carga de Biometria Automático
  resource_ctrConfiguracoesSuri.Verificar a label Período Permitido de Carga de Biometria Automático

E verificar o campo Hora Inicial
  resource_ctrConfiguracoesSuri.Verificar o campo Hora Inicial

E verificar o campo Hora Final
  resource_ctrConfiguracoesSuri.Verificar o campo Hora Final

E verificar a label Configurações do Middleware
  resource_ctrConfiguracoesSuri.Verificar a label Configurações do Middleware

E verificar o campo Utiliza Middleware
  resource_ctrConfiguracoesSuri.Verificar o campo Utiliza Middleware

E verificar o campo Caminho Middleware
  resource_ctrConfiguracoesSuri.Verificar o campo Caminho Middleware

E verificar a label WebService Guardian
  resource_ctrConfiguracoesSuri.Verificar a label WebService Guardian

E verificar o campo Integração WSG
  resource_ctrConfiguracoesSuri.Verificar o campo Integração WSG

E verificar a label Tipo de Autenticação
  resource_ctrConfiguracoesSuri.Verificar a label Tipo de Autenticação

E verificar o campo Biometria
  resource_ctrConfiguracoesSuri.Verificar o campo Biometria

E verificar o campo Smartcard
  resource_ctrConfiguracoesSuri.Verificar o campo Smartcard

E verificar o campo Foto
  resource_ctrConfiguracoesSuri.Verificar o campo Foto

E verificar o campo Scanner
  resource_ctrConfiguracoesSuri.Verificar o campo Scanner

E verificar o campo Pad Assinatura
  resource_ctrConfiguracoesSuri.Verificar o campo Pad Assinatura

E verificar o campo Porta TCP
  resource_ctrConfiguracoesSuri.Verificar o campo Porta TCP

E verificar o campo Tipo de leitura de smartcard
  resource_ctrConfiguracoesSuri.Verificar o campo Tipo de leitura de smartcard

E verificar a label Tipo de Gravação de Listas
  resource_ctrConfiguracoesSuri.Verificar a label Tipo de Gravação de Listas

E verificar o campo Tipo de Geração de Listas
  resource_ctrConfiguracoesSuri.Verificar o campo Tipo de Geração de Listas

E verificar a segunda label Tipo de Gravação de Listas
  resource_ctrConfiguracoesSuri.Verificar a segunda label Tipo de Gravação de Listas

E verificar o campo Método de Autenticação 
  resource_ctrConfiguracoesSuri.Verificar o campo Método de Autenticação 

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
