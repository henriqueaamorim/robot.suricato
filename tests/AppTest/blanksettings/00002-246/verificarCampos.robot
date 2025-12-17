*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/app/resource_blanksettings.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Verificar todos os campos na tela: Configurações do sistema

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Configurações do sistema
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Configuração | Sistema
  E visualizar a tela: Configurações de sistema
  Quando clicar no aba: Geral
  #Aba: Geral
  #Label: Geral
  Então devo verificar a label: Geral
  E verificar o campo: Nome do Cliente
  E verificar o campo: Idioma padrão do sistema
  E verificar o campo: Debug
  E verificar o campo: Utiliza Matriz de Acesso
  E verificar o campo: Crachá Lógico/Físico
  E verificar o campo: Tipo Biometria Colaborador
  E verificar o campo: Timeout Sessão (Segundos)
  E verificar o campo: Envio de Comandos On Line
  E verificar o campo: Quantidade de Processos Simultaneos (GerServ)
  E verificar o campo: É obrigatório informar o colaborador que está autorizando o desbloqueio do crachá?
  E verificar o campo: Tempo de Validade da Senha
  E verificar o campo: Permitir Cargo Auto-Incremento
  E verificar o campo: Remover Acentuação
  E verificar o campo: Motivo Bloqueio de Documentos
  E verificar o campo: Valida Dupla Verificação de Veículos
  E verificar o campo: Manter log de (dias)
  E verificar o campo: Tipo de Geração de Listas
  E verificar o campo: 6 Credenciais
  E verificar o campo: Obrigatório Autorizador de Desbloqueio
  E verificar o campo: Qtde. Dias de Falta para Bloquear Acesso
  #Label: Suricato Client 
  E quando verificar a label: Suricato Client
  Então devo verificar o campo: Biometria 
  E verificar o campo: Smartcard 
  E verificar o campo: Foto 
  E verificar o campo: Upload 
  E verificar o campo: Scanner 
  E verificar o campo: Pad 
  E verificar o campo: Porta 
  E verificar o campo: SmartcardLF 
  E verificar o campo: Facial 
  #Label: Campo Customizado 
  E quando verificar a label: Campo Customizado
  Então devo verificar o campo: Utilizar Campos Customizados
  E verificar o campo: Cor para Destaque
  #Label: Histórico de Colaborador
  E quando verificar a label: Histórico de Colaborador
  Então devo verificar o campo: Histórico de Cargos
  E verificar o campo: Histórico de Centro de Custos
  E verificar o campo: Histórico de Crachás
  E verificar o campo: Histórico de Escalas
  E verificar o campo: Histórico de Filial
  E verificar o campo: Histórico de Organograma
  #Label: Notificação
  E quando verificär a label: Notificação
  Então devo verificar o campo: E-mail Envio de Notificação de Val. do ASO
  E verificar o campo: Qtde Dias Para Notificação ASO
  E verificar o campo: E-mail Envio de Notificação de Val. do Treinamento de Segurança
  E verificar o campo: Qtde Dias Para Notificação de Venc. Treinamento
  #Label: Processo Automático
  E quando verificar a label: Processo Automático
  Então devo verificar o campo: Atualiza Dados Tb. Acesso Colaborador
  #Aba: Autenticação
  #Label: Método de Autenticação
  E quando verificar a label: Método de Autenticação
  Então devo verificar o campo: Método de Autenticação
  #Label: LDAP
  E quando verificar a label: LDAP
  Então devo verificar o campo: Endereço IP do Servidor LDAP
  E verificar o campo: Porta do Servidor LDAP
  E verificar o campo: Login Administrator
  E verificar o campo: Password Administrator
  E verificar o campo: LDAP Base de Pesquisa DN
  E verificar o campo: LDAP Filtro de Pesquisa
  E verificar o campo: LDAP Sincronizar MemberOf
  #Aba: Diretiva de Segurança
  #Label: Configuração
  E quando verificar a label: Configuração (Segurança)
  Então devo verificar o campo: Avisar Validade da Senha antes (Dias)
  E verificar o campo: Desbloquear Login Em (Minutos)
  E verificar o campo: Mínimo de Senhas no Histórico
  E verificar o campo: Permitir Reutilizar Senha Anterior
  E verificar o campo: Bloquear Login Após (Tentativas)
  E verificar o campo: Validade Mínima da Senha (Dias)
  E verificar o campo: Validade da Senha (Dias)
  #Label: Complexidade
  E quando verificar a label: Complexidade
  Então devo verificar o campo: Símbolos
  E verificar o campo: Máximo de caracteres idênticos (Caracteres)
  E verificar o campo: Mínimo de caracteres não alfabéticos (Caracteres)
  E verificar o campo: Mínimo de caracteres não presentes na última senha (Caracteres)
  E verificar o campo: Letras em caixa alta (maiúsculo)
  E verificar o campo: Letras em caixa baixa (minúsculo)
  E verificar o campo: Números
  E verificar o campo: Quantidade Mínima de Dígitos da Senha (Caracteres)
  #Aba: Foto
  #Label: Configuração
  E quando verificar a label: Configuração (Foto)
  Então devo verificar o campo: Altura da Foto
  E verificar o campo: Largura da Foto
  E verificar o campo: Altura da Foto para Importação
  E verificar o campo: Largura da Foto para Importação
  #Aba: Entrada de Visitante
  #Label: Configuração
  E quando verificar a label: Configuração (Visitante)
  Então devo verificar o campo: Lançador é Auto Aprovador de Visitas
  E verificar o campo: Bloquear Visitado Ausente
  E verificar o campo: Critica se Docto do Visitante for de Empregado
  E verificar o campo: Mostrar Veículo na Entrada de Visitante
  E verificar o campo: Mostrar Visitado na Entrada de Visitante
  E verificar o campo: Utilizar Workflow de Aprovação de Entrada de Visitante  
  E verificar o campo: Validar Homônimo
  #Label: Automático
  E quando verificar a label: Automático
  Então devo verificar o campo: Faixa de Crachá
  #Label: Valores Padrão
  E quando verificar a label: Valores Padrão
  Então devo verificar o campo: Empresa Terceira Padrão
  E verificar o campo: Empresa Padrão (Colaborador)
  E verificar o campo: Tipo de Colaborador Padrão
  E verificar o campo: Código Permissão Padrão
  E verificar o campo: Tipo de Visita Padrão
  #Aba: Monitoramento
  #Label: Configuração
  E quando verificar a label: Configuração (Monitoramento)
  Então devo verificar o campo: Intervalo Processamento
  E verificar o campo: Timeout Monitoramento
  E verificar o campo: Tempo Máximo Entre Registros
  #Label: Equipamento
  E quando verificar a label: Equipamento
  Então devo verificar o campo: Status On
  E verificar o campo: Status Off
  E verificar o campo: Status Desativado
  #Label: Câmera
  E quando verificar a label: Câmera
  Então devo verificar o campo: Time out Monitoramento de Câmeras
  E verificar o campo: Configuração de Largura da Câmera
  E verificar o campo: Configuração da Altura da Câmera
  #Aba: Equipamento de Proteção Individual - EPI
  #Label: Configuração
  E quando verificar a label: Configuração (EPI)
  Então devo verificar o campo: Codin para entrega de EPIs
  E verificar o campo: Utiliza Codin de Beneficios para entrega de EPIs
  #Label: Email
  E quando verificar a label: Email
  Então devo verificar o campo: Envio de Email antes do vencimento
  E verificar o campo: Envio de Email após o vencimento
  E verificar o campo: Envio de Email no vencimento
  #Aba: Matrícula Automática
  #Label: Empregado
  E quando verificar a label: Empregado
  Então devo verificar o campo: Auto Incremento (Empregado)
  E verificar o campo: Permissão - Domingo (Empregado)
  E verificar o campo: Permissão - Feriado (Empregado)
  E verificar o campo: Permissão - Dia da Semana (Empregado)
  E verificar o campo: Permissão - Sábado (Empregado)
  E verificar o campo: Permissão - Visitante (Empregado)
  #Aba: Terceiro
  E quando verificar a label: Terceiro
  Então devo verificar o campo: Auto Incremento (Terceiro)
  E verificar o campo: Permissão - Domingo (Terceiro)
  E verificar o campo: Permissão - Feriado (Terceiro)
  E verificar o campo: Permissão - Dia da Semana (Terceiro)
  E verificar o campo: Permissão - Sábado (Terceiro)
  E verificar o campo: Permissão - Visitante (Terceiro)
  #Label: Parceiro
  E quando verificar a label: Parceiro
  Então devo verificar o campo: Auto Incremento (Parceiro)
  E verificar o campo: Permissão - Domingo (Parceiro)
  E verificar o campo: Permissão - Feriado (Parceiro)
  E verificar o campo: Permissão - Dia da Semana (Parceiro)
  E verificar o campo: Permissão - Sábado (Parceiro)
  E verificar o campo: Permissão - Visitante (Parceiro)
  #Aba: TOTVS
  #Label: Integração TOTVS
  E quando verificar a label: Integração TOTVS
  Então devo verificar o campo: Integração TOTVS
  E verificar o campo: Sistema
  E verificar o campo: URL
  E verificar o campo: Tempo de tolerância antes do acesso da faixa de entrada (minuto)
  E verificar o campo: Tempo de tolerância depois do acesso da faixa de entrada (minuto)
  E verificar o campo: Tempo de tolerância antes do acesso da faixa de saída (minuto)
  E verificar o campo: Tempo de tolerância depois do acesso da faixa de saída (minuto)
  E verificar o campo: Organograma Padrão
  E verificar o campo: Local Padrão
  E verificar o campo: Empresa Padrão
  E verificar o campo: Grupo de Acesso Padrão
  E verificar o campo: Tipo de Situação Trabalhista Padrão
  E verificar o campo: Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos)
  E verificar o campo: Tempo de Tolerancia antes do acesso da faixa de saida (Minutos)
  E verificar o campo: Turno Reduzido
  E verificar o campo: Tipo de Controle de Refeição
  E verificar o campo: Controlar Chave Externa Refeitório
  E verificar o campo: Faixa de Acesso Mandatório
  E verificar o campo: Faixa de Acesso Refeitório Mandatorio
  E verificar o campo: Tag do Início da Escala
  E verificar o campo: Chave Externa
  E verificar o campo: Tipo de Tolerância
  E verificar o campo: Tolerância Refeição(Saida)
  E verificar o campo: Tolerância Refeição(Valor)
  E verificar o campo: Controle de Refeições Mandatórios no Sistemas
  E verificar o campo: Configuração Padrão de Acesso, Refeição e Biometria
  #Aba: Sistema
  #Label: MatchOnServer
  E quando verificar a label: MatchOnServer
  Então devo verificar o campo: Identificar a pessoa no sistema por biometria - MatchOnServer
  #Label:Middleware
  E quando verificar a label: Middleware
  Então devo verificar o campo: Caminho Middleware
  #Label: WebService Guardian - WSG
  E quando verificar a label: WebService Guardian - WSG
  Então devo verificar o campo: Integração WSG
  E verificar o campo: Url WSG
  E verificar o campo: Debug WSG
  #Label: Área de Risco
  E quando verificar a label: Área de Risco
  Então devo verificar o campo: Liberar Acesso Área de Risco
  #Label: Escola
  E quando verificar a label: Escola
  Então devo verificar o campo: Suricato Escola
  E verificar o campo: Responsável recebe notificação via Sms/E-mail
  #Label: Linha de Ônibus
  E quando verificar a label: Linha de Ônibus
  Então devo verificar o campo: Colab. Utiliza Transp. Empresa
  #Label: Controlador de Mensagem
  E quando verificar a label: Controlador de Mensagem
  Então devo verificar o campo: Mensagem no Codin
  #Label: Área Alfandegada
  E quando verificar a label: Área Alfandegada
  Então devo verificar o campo: Utiliza Área Alfandegada LDC
  #Label: Controle de Fumaça
  E quando verificar a label: Controle de Fumaça
  Então devo verificar o campo: Utiliza Controle de Validade de Fumaça
  #Label: Estacionamento
  E quando verificar a label: Estacionamento
  Então devo verificar o campo: Estacionamento de Veículo


*** Keywords ***
Dado que eu acesse o menu: Configuração | Sistema
  resource_mnu.Clicar No Menu Configuração | Sistema

E visualizar a tela: Configurações de sistema
  resource_blanksettings.Acessar Tela Configurações do sistema

#Aba: Geral
Quando clicar no aba: Geral
  resource_blanksettings.Clicar no botão para abrir todos os parâmetros
  
Então devo verificar a label: Geral
  resource_blanksettings.Verificar a label: Geral

E verificar o campo: Nome do Cliente  
  resource_blanksettings.Verificar O Valor Do Campo Nome Do Cliente

E verificar o campo: Idioma padrão do sistema
  resource_blanksettings.Verificar o valor do campo Idioma Padrão do Sistema  

E verificar o campo: Debug
    resource_blanksettings.Verificar o valor do campo Debug

E verificar o campo: Utiliza Matriz de Acesso
  resource_blanksettings.Verificar o valor do campo Utiliza Matriz de Acesso

E verificar o campo: Crachá Lógico/Físico
  resource_blanksettings.Verificar o valor do campo Crachá Lógico/Físico

E verificar o campo: Tipo Biometria Colaborador
  resource_blanksettings.Verificar o valor do campo Tipo Biometria Colaborador  

E verificar o campo: Timeout Sessão (Segundos) 
  resource_blanksettings.Verificar o valor do campo Timeout Sessão (Segundos)

E verificar o campo: Envio de Comandos On Line  
  resource_blanksettings.Verificar o valor do campo Envio de Comandos On-line

E verificar o campo: Quantidade de Processos Simultaneos (GerServ) 
  resource_blanksettings.Verificar o valor do campo Quantidade de Processos Simultaneos (GerServ)

E verificar o campo: É obrigatório informar o colaborador que está autorizando o desbloqueio do crachá?  
  resource_blanksettings.Verificar o valor do campo É obrigatório informar o colaborador que está autorizando o desbloqueio do crachá?

E verificar o campo: Tempo de Validade da Senha
  resource_blanksettings.Verificar o valor do campo Tempo de Validade da Senha

E verificar o campo: Permitir Cargo Auto-Incremento   
  resource_blanksettings.Verificar o valor do campo Permitir Cargo Auto-Incremento

E verificar o campo: Remover Acentuação
  resource_blanksettings.Verificar o valor do campo Remover Acentuação

E verificar o campo: Motivo Bloqueio de Documentos
  resource_blanksettings.Verificar o valor do campo Motivo Bloqueio de Documentos

E verificar o campo: Valida Dupla Verificação de Veículos
  resource_blanksettings.Verificar o valor do campo Valida Dupla Verificação de Veículos

E verificar o campo: Manter log de (dias)
  resource_blanksettings.Verificar o valor do campo Manter log de (dias)

E verificar o campo: Tipo de Geração de Listas
  resource_blanksettings.Verificar o valor do campo Tipo de Geração de Listas

E verificar o campo: 6 Credenciais
  resource_blanksettings.Verificar o valor do campo 6 Credenciais

E verificar o campo: Obrigatório Autorizador de Desbloqueio
  resource_blanksettings.Verificar o valor do campo Obrigatório Autorizador de Desbloqueio

E verificar o campo: Qtde. Dias de Falta para Bloquear Acesso   
  resource_blanksettings.Verificar o valor do campo Qtde. Dias de Falta para Bloquear Acesso

#Label: Suricato Client 
E quando verificar a label: Suricato Client
  resource_blanksettings.Verificar a label: Suricato Client

Então devo verificar o campo: Biometria 
  resource_blanksettings.Verificar as opções marcadas no campo Biometria

E verificar o campo: Smartcard 
  resource_blanksettings.Verificar as opções marcadas no campo Smartcard

E verificar o campo: Foto 
  resource_blanksettings.Verificar as opções marcadas no campo Foto

E verificar o campo: Upload 
  resource_blanksettings.Verificar as opções marcadas no campo Upload

E verificar o campo: Scanner 
  resource_blanksettings.Verificar as opções marcadas no campo Scanner

E verificar o campo: Pad 
  resource_blanksettings.Verificar o valor do campo Pad

E verificar o campo: Porta 
  resource_blanksettings.Verificar o valor do campo Porta

E verificar o campo: SmartcardLF 
  resource_blanksettings.Verificar o valor do campo SmartcardLF

E verificar o campo: Facial 
  resource_blanksettings.Verificar o valor do campo Facial
  
#Label: Campo Customizado  
E quando verificar a label: Campo Customizado
  resource_blanksettings.Verificar a label: Campo Customizado

Então devo verificar o campo: Utilizar Campos Customizados
  resource_blanksettings.Verificar o valor do campo Utilizar Campos Customizados

E verificar o campo: Cor para Destaque
  resource_blanksettings.Verificar o valor do campo Cor para Destaque
 
#Label: Histórico de Colaborador 
E quando verificar a label: Histórico de Colaborador
  resource_blanksettings.Verificar a label: Histórico de Colaborador

Então devo verificar o campo: Histórico de Cargos
  resource_blanksettings.Verificar o valor do campo Histórico de Cargos

E verificar o campo: Histórico de Centro de Custos
  resource_blanksettings.Verificar o valor do campo Histórico de Centro de Custos

E verificar o campo: Histórico de Crachás
  resource_blanksettings.Verificar o valor do campo Histórico de Crachás

E verificar o campo: Histórico de Escalas
  resource_blanksettings.Verificar o valor do campo Histórico de Escalas

E verificar o campo: Histórico de Filial
  resource_blanksettings.Verificar o valor do campo Histórico de Filial

E verificar o campo: Histórico de Organograma
  resource_blanksettings.Verificar o valor do campo Histórico de Organograma

#Label: Notificação
E quando verificär a label: Notificação
  resource_blanksettings.Então devo verificär a label: Notificação

Então devo verificar o campo: E-mail Envio de Notificação de Val. do ASO
  resource_blanksettings.Verificar o valor do campo E-mail Envio de Notificação de Val. do ASO

E verificar o campo: Qtde Dias Para Notificação ASO
  resource_blanksettings.Verificar o valor do campo Qtde Dias Para Notificação ASO

E verificar o campo: E-mail Envio de Notificação de Val. do Treinamento de Segurança
  resource_blanksettings.Verificar o valor do campo E-mail Envio de Notificação de Val. do Treinamento de Segurança

E verificar o campo: Qtde Dias Para Notificação de Venc. Treinamento  
  resource_blanksettings.Verificar o valor do campo Qtde Dias Para Notificação de Venc. Treinamento

#Label: Processo Automático
E quando verificar a label: Processo Automático
  resource_blanksettings.Verificar a label: Processo Automático

Então devo verificar o campo: Atualiza Dados Tb. Acesso Colaborador 
  resource_blanksettings.Verificar o campo: Atualiza Dados Tb. Acesso Colaborador

#Label: Aba Autenticação
E quando verificar a label: Método de Autenticação
  resource_blanksettings.Verificar a label: Método de Autenticação

Então devo verificar o campo: Método de Autenticação
  resource_blanksettings.Verificar o valor do campo Método de Autenticação

#Label: LDAP 
E quando verificar a label: LDAP
  resource_blanksettings.Verificar a label: LDAP

Então devo verificar o campo: Endereço IP do Servidor LDAP
  resource_blanksettings.Verificar o valor do campo Endereço IP do Servidor LDPA

E verificar o campo: Porta do Servidor LDAP
  resource_blanksettings.Verificar o valor do campo Porta do Servidor LDPA

E verificar o campo: Login Administrator
  resource_blanksettings.Verificar o valor do campo Login Administrador

E verificar o campo: Password Administrator
  resource_blanksettings.Verificar o valor do campo Password Administrador

E verificar o campo: LDAP Base de Pesquisa DN
  resource_blanksettings.Verificar o valor do campo LDPA Base de Pesquisa DN

E verificar o campo: LDAP Filtro de Pesquisa
  resource_blanksettings.Verificar o valor do campo LDPA Filtro de Pesquisa

E verificar o campo: LDAP Sincronizar MemberOf
  resource_blanksettings.Verificar o valor do campo LDPA Sincronizar MemberOf

#Aba: Diretiva de Segurança
#Label: Configuração
E quando verificar a label: Configuração (Segurança)
  resource_blanksettings.Verificar a label: Configuração (Segurança)

Então devo verificar o campo: Avisar Validade da Senha antes (Dias)
  resource_blanksettings.Verificar o valor do campo Avisar Validade da Senha antes (Dias)

E verificar o campo: Desbloquear Login Em (Minutos)
  resource_blanksettings.Verificar o valor do campo Desbloquear Login Em (Minutos)

E verificar o campo: Mínimo de Senhas no Histórico
  resource_blanksettings.Verificar o valor do campo Mínimo de Senhas no Histórico

E verificar o campo: Permitir Reutilizar Senha Anterior
  resource_blanksettings.Verificar o valor do campo Permitir Reutilizar Senha Anterior

E verificar o campo: Bloquear Login Após (Tentativas)
  resource_blanksettings.Verificar o valor do campo Bloquear Login Após (Tentativas)

E verificar o campo: Validade Mínima da Senha (Dias)
  resource_blanksettings.Verificar o valor do campo Validade Mínima da Senha (Dias)

E verificar o campo: Validade da Senha (Dias)
  resource_blanksettings.Verificar o valor do campo Validade da Senha (Dias)

#Label: Complexidade
E quando verificar a label: Complexidade
  resource_blanksettings.Verificar a label: Complexidade

Então devo verificar o campo: Símbolos
  resource_blanksettings.Verificar o valor do campo Símbolos

E verificar o campo: Máximo de caracteres idênticos (Caracteres)
  resource_blanksettings.Verificar o valor do campo Máximo de caracteres idênticos (Caracteres)

E verificar o campo: Mínimo de caracteres não alfabéticos (Caracteres)
  resource_blanksettings.Verificar o valor do campo Mínimo de caracteres não alfabéticos (Caracteres)

E verificar o campo: Mínimo de caracteres não presentes na última senha (Caracteres)
  resource_blanksettings.Verificar o valor do campo Mínimo de caracteres não presentes na última senha (Caracteres)

E verificar o campo: Letras em caixa alta (maiúsculo)
  resource_blanksettings.Verificar o valor do campo Letras em caixa alta (maiúsculo)

E verificar o campo: Letras em caixa baixa (minúsculo)
  resource_blanksettings.Verificar o valor do campo Letras em caixa baixa (minúsculo)

E verificar o campo: Números
  resource_blanksettings.Verificar o valor do campo Números

E verificar o campo: Quantidade Mínima de Dígitos da Senha (Caracteres)
  resource_blanksettings.Verificar o valor do campo Quantidade Mínima de Dígitos da Senha (Caracteres)

#Aba: Foto
#Label: Configuração
E quando verificar a label: Configuração (Foto)
  resource_blanksettings.Verificar a label: Configuração (Foto)

Então devo verificar o campo: Altura da Foto
  resource_blanksettings.Verificar o valor do campo Altura da Foto

E verificar o campo: Largura da Foto
  resource_blanksettings.Verificar o valor do campo Largura da Foto

E verificar o campo: Altura da Foto para Importação
  resource_blanksettings.Verificar o valor do campo Altura da Foto para Importação

E verificar o campo: Largura da Foto para Importação
  resource_blanksettings.Verificar o valor do campo Largura da Foto para Importação

#Aba: Entrada de Visitante
#Label: Configuração
E quando verificar a label: Configuração (Visitante)
  resource_blanksettings.Verificar a label: Configuração (Visitante)

Então devo verificar o campo: Lançador é Auto Aprovador de Visitas
  resource_blanksettings.Verificar o valor do campo Lançador é Auto Aprovador de Visitas

E verificar o campo: Bloquear Visitado Ausente
  resource_blanksettings.Verificar o valor do campo Bloquear Visitado Ausente

E verificar o campo: Critica se Docto do Visitante for de Empregado
  resource_blanksettings.Verificar o valor do campo Critica se Docto do Visitante for de Empregado

E verificar o campo: Mostrar Veículo na Entrada de Visitante
  resource_blanksettings.Verificar o valor do campo Mostrar Veículo na Entrada de Visitante

E verificar o campo: Mostrar Visitado na Entrada de Visitante
  resource_blanksettings.Verificar o valor do campo Mostrar Visitado na Entrada de Visitante

E verificar o campo: Utilizar Workflow de Aprovação de Entrada de Visitante  
  resource_blanksettings.Verificar o valor do campo Utilizar Workflow de Aprovação de Entrada de Visitante

E verificar o campo: Validar Homônimo
  resource_blanksettings.Verificar o valor do campo Validar Homônimo

#Label: Automático
E quando verificar a label: Automático
  resource_blanksettings.Verificar a label: Automático

Então devo verificar o campo: Faixa de Crachá
  resource_blanksettings.Verificar o valor do campo Faixa de Crachá

#Label: Valores Padrão
E quando verificar a label: Valores Padrão
  resource_blanksettings.Verificar a label: Valores Padrão

Então devo verificar o campo: Empresa Terceira Padrão
  resource_blanksettings.Verificar o campo: Empresa Terceira Padrão

E verificar o campo: Empresa Padrão (Colaborador)
  resource_blanksettings.Verificar o valor do campo Empresa Padrão (Colaborador)

E verificar o campo: Tipo de Colaborador Padrão
  resource_blanksettings.Verificar o valor do campo Tipo de Colaborador Padrão

E verificar o campo: Código Permissão Padrão
  resource_blanksettings.Verificar o valor do campo Código Permissão Padrão

E verificar o campo: Tipo de Visita Padrão
  resource_blanksettings.Verificar o valor do campo Tipo de Visita Padrão

#Aba: Monitoramento
#Label: Configuração
E quando verificar a label: Configuração (Monitoramento)
  resource_blanksettings.Verificar a label: Configuração (Monitoramento)

Então devo verificar o campo: Intervalo Processamento
  resource_blanksettings.Verificar o valor do campo Intervalo Processamento

E verificar o campo: Timeout Monitoramento
  resource_blanksettings.Verificar o valor do campo Timeout Monitoramento

E verificar o campo: Tempo Máximo Entre Registros
  resource_blanksettings.Verificar o valor do campo Tempo Máximo Entre Registros

#Label: Equipamento
E quando verificar a label: Equipamento
  resource_blanksettings.Verificar a label: Equipamento

Então devo verificar o campo: Status On
  resource_blanksettings.Verificar o valor do campo Status On

E verificar o campo: Status Off
  resource_blanksettings.Verificar o valor do campo Status Off

E verificar o campo: Status Desativado
  resource_blanksettings.Verificar o valor do campo Status Desativado

#Label: Câmera
E quando verificar a label: Câmera
  resource_blanksettings.Verificar a label: Câmera

Então devo verificar o campo: Time out Monitoramento de Câmeras
  resource_blanksettings.Verificar o valor do campo Time out Monitoramento de Câmeras

E verificar o campo: Configuração de Largura da Câmera
  resource_blanksettings.Verificar o valor do campo Configuração de Largura da Câmera

E verificar o campo: Configuração da Altura da Câmera
  resource_blanksettings.Verificar o valor do campo Configuração da Altura da Câmera

#Aba: Equipamento de Proteção Individual - EPI
#Label: Configuração
E quando verificar a label: Configuração (EPI)
  resource_blanksettings.Verificar a label: Configuração (EPI)

Então devo verificar o campo: Codin para entrega de EPIs
  resource_blanksettings.Verificar o valor do campo Codin para entrega de EPIs

E verificar o campo: Utiliza Codin de Beneficios para entrega de EPIs
  resource_blanksettings.Verificar o valor do campo Utiliza Codin de Beneficios para entrega de EPIs

#Label: Email
E quando verificar a label: Email
  resource_blanksettings.Verificar a label: Email

Então devo verificar o campo: Envio de Email antes do vencimento
  resource_blanksettings.Verificar o valor do campo Envio de Email antes do vencimento

E verificar o campo: Envio de Email após o vencimento
  resource_blanksettings.Verificar o valor do campo Envio de Email após o vencimento

E verificar o campo: Envio de Email no vencimento
  resource_blanksettings.Verificar o valor do campo Envio de Email no vencimento

#Aba: Matrícula Automática
#Label: Empregado
E quando verificar a label: Empregado
  resource_blanksettings.Verificar a label: Empregado 

Então devo verificar o campo: Auto Incremento (Empregado)
  resource_blanksettings.Verificar o valor do campo Auto Incremento (Empregado)

E verificar o campo: Permissão - Domingo (Empregado)
  resource_blanksettings.Verificar o valor do campo Permissão - Domingo

E verificar o campo: Permissão - Feriado (Empregado)
  resource_blanksettings.Verificar o valor do campo Permissão - Feriado

E verificar o campo: Permissão - Dia da Semana (Empregado)
  resource_blanksettings.Verificar o valor do campo Permissão - Dia da Semana

E verificar o campo: Permissão - Sábado (Empregado)
  resource_blanksettings.Verificar o valor do campo Permissão - Sábado

E verificar o campo: Permissão - Visitante (Empregado)
  resource_blanksettings.Verificar o valor do campo Permissão - Visitante

#Aba: Terceiro
E quando verificar a label: Terceiro
  resource_blanksettings.Verificar a label: Terceiro

Então devo verificar o campo: Auto Incremento (Terceiro)
  resource_blanksettings.Verificar o valor do segundo campo Auto Incremento (Terceiro)

E verificar o campo: Permissão - Domingo (Terceiro)
  resource_blanksettings.Verificar o valor do segundo campo Permissão - Domingo

E verificar o campo: Permissão - Feriado (Terceiro)
  resource_blanksettings.Verificar o valor do segundo campo Permissão - Feriado

E verificar o campo: Permissão - Dia da Semana (Terceiro)
  resource_blanksettings.Verificar o valor do segundo campo Permissão - Dia da Semana

E verificar o campo: Permissão - Sábado (Terceiro)
  resource_blanksettings.Verificar o valor do segundo campo Permissão - Sábado

E verificar o campo: Permissão - Visitante (Terceiro)
  resource_blanksettings.Verificar o valor do segundo campo Permissão - Visitante

#Label: Parceiro
E quando verificar a label: Parceiro
  resource_blanksettings.Verificar a label: Parceiro

Então devo verificar o campo: Auto Incremento (Parceiro)
  resource_blanksettings.Verificar o valor do terceiro campo Auto Incremento (Parceiro)

E verificar o campo: Permissão - Domingo (Parceiro)
  resource_blanksettings.Verificar o valor do terceiro campo Permissão - Domingo

E verificar o campo: Permissão - Feriado (Parceiro)
  resource_blanksettings.Verificar o valor do terceiro campo Permissão - Feriado

E verificar o campo: Permissão - Dia da Semana (Parceiro)
  resource_blanksettings.Verificar o valor do terceiro campo Permissão - Dia da Semana

E verificar o campo: Permissão - Sábado (Parceiro)
  resource_blanksettings.Verificar o valor do terceiro campo Permissão - Sábado

E verificar o campo: Permissão - Visitante (Parceiro)
  resource_blanksettings.Verificar o valor do terceiro campo Permissão - Visitante

#Aba: TOTVS
 #Label: Integração TOTVS
E quando verificar a label: Integração TOTVS
  resource_blanksettings.Verificar a label: Integração TOTVS

Então devo verificar o campo: Integração TOTVS
  resource_blanksettings.Verificar o valor campo Integração TOTVS

E verificar o campo: Sistema
  resource_blanksettings.Verificar o valor campo Sistema

E verificar o campo: URL
  resource_blanksettings.Verificar o valor campo URL

E verificar o campo: Tempo de tolerância antes do acesso da faixa de entrada (minuto)
  resource_blanksettings.Verificar o valor campo Tempo de tolerância antes do acesso da faixa de entrada (minuto)

E verificar o campo: Tempo de tolerância depois do acesso da faixa de entrada (minuto)
  resource_blanksettings.Verificar o valor campo Tempo de tolerância depois do acesso da faixa de entrada (minuto)

E verificar o campo: Tempo de tolerância antes do acesso da faixa de saída (minuto)
  resource_blanksettings.Verificar o valor campo Tempo de tolerância antes do acesso da faixa de saída (minuto)

E verificar o campo: Tempo de tolerância depois do acesso da faixa de saída (minuto)  
  resource_blanksettings.Verificar o valor campo Tempo de tolerância depois do acesso da faixa de saída (minuto)

E verificar o campo: Organograma Padrão
  resource_blanksettings.Verificar o valor campo Organograma Padrão

E verificar o campo: Local Padrão
  resource_blanksettings.Verificar o valor campo Local Padrão

E verificar o campo: Empresa Padrão
  resource_blanksettings.Verificar o valor campo Empresa Padrão

E verificar o campo: Grupo de Acesso Padrão
  resource_blanksettings.Verificar o valor campo Grupo de Acesso Padrão

E verificar o campo: Tipo de Situação Trabalhista Padrão
  resource_blanksettings.Verificar o valor campo Tipo de Situação Trabalhista Padrão

E verificar o campo: Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos)
  resource_blanksettings.Verificar o valor campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos)

E verificar o campo: Tempo de Tolerancia antes do acesso da faixa de saida (Minutos)
  resource_blanksettings.Verificar o valor campo Tempo de Tolerancia antes do acesso da faixa de saida (Minutos)

E verificar o campo: Turno Reduzido
  resource_blanksettings.Verificar o valor campo Turno Reduzido

E verificar o campo: Tipo de Controle de Refeição
  resource_blanksettings.Verificar o valor campo Tipo de Controle de Refeição

E verificar o campo: Controlar Chave Externa Refeitório
  resource_blanksettings.Verificar o valor campo Controlar Chave Externa Refeitório

E verificar o campo: Faixa de Acesso Mandatório
  resource_blanksettings.Verificar o valor campo Faixa de Acesso Mandatório
  
E verificar o campo: Faixa de Acesso Refeitório Mandatorio
  resource_blanksettings.Verificar o valor campo Faixa de Acesso Refeitório Mandatorio

E verificar o campo: Tag do Início da Escala
  resource_blanksettings.Verificar o valor campo Tag do Início da Escala

E verificar o campo: Chave Externa
  resource_blanksettings.Verificar o valor campo Chave Externa

E verificar o campo: Tipo de Tolerância
  resource_blanksettings.Verificar o valor campo Tipo de Tolerância

E verificar o campo: Tolerância Refeição(Saida)
  resource_blanksettings.Verificar o valor campo Tolerância Refeição(Saida)

E verificar o campo: Tolerância Refeição(Valor)
  resource_blanksettings.Verificar o valor campo Tolerância Refeição(Valor)

E verificar o campo: Controle de Refeições Mandatórios no Sistemas
  resource_blanksettings.Verificar o valor campo Controle de Refeições Mandatórios no Sistemas

E verificar o campo: Configuração Padrão de Acesso, Refeição e Biometria
  resource_blanksettings.Verificar o valor campo Configuração Padrão de Acesso, Refeição e Biometria

#Aba: Sistema
#Label: MatchOnServer
E quando verificar a label: MatchOnServer
  resource_blanksettings.Verificar a label: MatchOnServer

Então devo verificar o campo: Identificar a pessoa no sistema por biometria - MatchOnServer
  resource_blanksettings.Verificar o valor campo Identificar a pessoa no sistema por biometria - MatchOnServer

#Label:Middleware
E quando verificar a label: Middleware
  resource_blanksettings.Verificar a label: Middleware

Então devo verificar o campo: Caminho Middleware
  resource_blanksettings.Verificar o valor campo Caminho Middleware

#Label: WebService Guardian - WSG
E quando verificar a label: WebService Guardian - WSG
  resource_blanksettings.Verificar a label: WebService Guardian - WSG

Então devo verificar o campo: Integração WSG
  resource_blanksettings.Verificar o valor campo Integração WSG

E verificar o campo: Url WSG
  resource_blanksettings.Verificar o valor campo Url WSG

E verificar o campo: Debug WSG
  resource_blanksettings.Verificar o valor campo Debug WSG

#Label: Área de Risco
E quando verificar a label: Área de Risco
  resource_blanksettings.Verificar a label: Área de Risco

Então devo verificar o campo: Liberar Acesso Área de Risco
  resource_blanksettings.Verificar o valor campo Liberar Acesso Área de Risco

#Label: Escola
E quando verificar a label: Escola
  resource_blanksettings.Verificar a label: Escola

Então devo verificar o campo: Suricato Escola
  resource_blanksettings.Verificar o valor campo Suricato Escola

E verificar o campo: Responsável recebe notificação via Sms/E-mail
  resource_blanksettings.Verificar o valor campo Responsável recebe notificação via Sms/E-mail

#Label: Linha de Ônibus
E quando verificar a label: Linha de Ônibus
  resource_blanksettings.Verificar a label: Linha de Ônibus

Então devo verificar o campo: Colab. Utiliza Transp. Empresa
  resource_blanksettings.Verificar o valor campo Colab. Utiliza Transp. Empresa

#Label: Controlador de Mensagem
E quando verificar a label: Controlador de Mensagem
  resource_blanksettings.Verificar a label: Controlador de Mensagem

Então devo verificar o campo: Mensagem no Codin
  resource_blanksettings.Verificar o valor campo Mensagem de Codin

#Label: Área Alfandegada
E quando verificar a label: Área Alfandegada
  resource_blanksettings.Verificar a label: Área Alfandegada

Então devo verificar o campo: Utiliza Área Alfandegada LDC
  resource_blanksettings.Verificar o valor campo Utiliza Área Alfandegada LDC 

#Label: Controle de Fumaça
E quando verificar a label: Controle de Fumaça
  resource_blanksettings.Verificar a label: Controle de Fumaça

Então devo verificar o campo: Utiliza Controle de Validade de Fumaça
  resource_blanksettings.Verificar o valor campo Utiliza Controle de Validade de Fumaça

#Label: Estacionamento
E quando verificar a label: Estacionamento
  resource_blanksettings.Verificar label: Estacionamento

Então devo verificar o campo: Estacionamento de Veículo
  resource_blanksettings.Verificar o valor campo Estacionamento de Veículo