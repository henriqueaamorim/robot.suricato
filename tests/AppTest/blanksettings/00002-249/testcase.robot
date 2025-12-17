*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/app/resource_blanksettings.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Verificar as configurações padrões do sistema

*** Test Cases ***
Testcase: Verificar as configurações padrões do sistema
  [Tags]  VERIFY  POPULATED  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Configuração | Sistema
  Então devo visualizar a tela de Configurações de sistema
  E clicar no botão para abrir todos os parâmetros
  # Aba Geral
  E então verificar o valor do campo Nome do Cliente 
  E então verificar o valor do campo Idioma Padrão do Sistema
  E então verificar o valor do campo Debug
  E então verificar o valor do campo Utiliza Matriz de Acesso
  E então verificar o valor do campo Crachá Lógico/Físico
  E então verificar o valor do campo Tipo Biometria Colaborador
  E então verificar o valor do campo Timeout Sessão (Segundos)
  E então verificar o valor do campo Envio de Comandos On-line
  E então verificar o valor do campo Quantidade de Processos Simultaneos (GerServ)
  E então verificar o valor do campo É obrigatório informar o colaborador que está autorizando o desbloqueio do crachá?
  E então verificar o valor do campo Tempo de Validade da Senha
  E então verificar o valor do campo Permitir Cargo Auto-Incremento
  E então verificar o valor do campo Remover Acentuação
  E então verificar o valor do campo Motivo Bloqueio de Documentos
  E então verificar o valor do campo Valida Dupla Verificação de Veículos
  E então verificar o valor do campo Manter log de (dias)
  E então verificar o valor do campo Tipo de Geração de Listas
  E então verificar o valor do campo 6 Credenciais
  E então verificar o valor do campo Obrigatório Autorizador de Desbloqueio
  E então verificar o valor do campo Qtde. Dias de Falta para Bloquear Acesso
  E então verificar as opções marcadas no campo Biometria
  E então verificar as opções marcadas no campo Smartcard
  E então verificar as opções marcadas no campo Foto
  E então verificar as opções marcadas no campo Upload
  E então verificar as opções marcadas no campo Scanner
  E então verificar o valor do campo Pad
  E então verificar o valor do campo Porta
  E então verificar o valor do campo SmartcardLF
  E então verificar o valor do campo Facial
  E então verificar o valor do campo Utilizar Campos Customizados
  E então verificar o valor do campo Cor para Destaque
  E então verificar o valor do campo Histórico de Cargos
  E então verificar o valor do campo Histórico de Centro de Custos
  E então verificar o valor do campo Histórico de Crachás
  E então verificar o valor do campo Histórico de Escalas
  E então verificar o valor do campo Histórico de Filial
  E então verificar o valor do campo Histórico de Organograma
  E então verificar o valor do campo E-mail Envio de Notificação de Val. do ASO
  E então verificar o valor do campo Qtde Dias Para Notificação
  E então verificar o valor do campo E-mail Envio de Notificação de Val. do Treinamento de Segurança
  E então verificar o valor do campo Qtde Dias Para Notificação de Venc. Treinamento
  E então verificar o valor do campo Atualiza Dados Tb. Acesso Colaborador
  ## Aba Autenticação
  E então verificar o valor do campo Método de Autenticação
  E então verificar o valor do campo Endereço IP do Servidor LDPA
  E então verificar o valor do campo Porta do Servidor LDPA
  E então verificar o valor do campo Login Administrador
  E então verificar o valor do campo Password Administrador
  E então verificar o valor do campo LDPA Base de Pesquisa DN 
  E então verificar o valor do campo LDPA Filtro de Pesquisa
  E então verificar o valor do campo LDPA Sincronizar MemberOf
  ## Aba Diretiva de Segurança
  E então verificar o valor do campo Avisar Validade da Senha antes (Dias)
  E então verificar o valor do campo Desbloquear Login Em (Minutos)
  E então verificar o valor do campo Mínimo de Senhas no Histórico
  E então verificar o valor do campo Permitir Reutilizar Senha Anterior
  E então verificar o valor do campo Bloquear Login Após (Tentativas)
  E então verificar o valor do campo Validade Mínima da Senha (Dias)
  E então verificar o valor do campo Validade da Senha (Dias)
  E então verificar o valor do campo Símbolos
  E então verificar o valor do campo Máximo de caracteres idênticos (Caracteres)
  E então verificar o valor do campo Mínimo de caracteres não alfabéticos (Caracteres)
  E então verificar o valor do campo Mínimo de caracteres não presentes na última senha (Caracteres)
  E então verificar o valor do campo Letras em caixa alta (maiúsculo)
  E então verificar o valor do campo Letras em caixa baixa (minúsculo)
  E então verificar o valor do campo Números
  E então verificar o valor do campo Quantidade Mínima de Dígitos da Senha (Caracteres)
  ## Aba Foto
  E então verificar o valor do campo Altura da Foto
  E então verificar o valor do campo Largura da Foto
  E então verificar o valor do campo Altura da Foto para Importação
  E então verificar o valor do campo Largura da Foto para Importação
  ## Aba Entrada de Visitante
  E então verificar o valor do campo Lançador é Auto Aprovador de Visitas
  E então verificar o valor do campo Bloquear Visitado Ausente
  E então verificar o valor do campo Critica se Docto do Visitante for de Empregado
  E então verificar o valor do campo Mostrar Veículo na Entrada de Visitante
  E então verificar o valor do campo Mostrar Visitado na Entrada de Visitante
  E então verificar o valor do campo Utilizar Workflow de Aprovação de Entrada de Visitante
  E então verificar o valor do campo Validar Homônimo
  E então verificar o valor do campo Faixa de Crachá
  E então verificar o valor do campo Empresa Terceira Padrão
  E então verificar o valor do campo Empresa Padrão (Colaborador)
  E então verificar o valor do campo Tipo de Colaborador Padrão
  E então verificar o valor do campo Código Permissão Padrão
  E então verificar o valor do campo Tipo de Visita Padrão
  ## Aba Monitoramento
  E então verificar o valor do campo Intervalo Processamento
  E então verificar o valor do campo Timeout Monitoramento
  E então verificar o valor do campo Tempo Máximo Entre Registros
  E então verificar o valor do campo Status On
  E então verificar o valor do campo Status Off
  E então verificar o valor do campo Status Desativado
  E então verificar o valor do campo Time out Monitoramento de Câmeras
  E então verificar o valor do campo Configuração de Largura da Câmera
  E então verificar o valor do campo Configuração da Altura da Câmera
  ## Aba Equipamento de Proteção Individual - EPI
  E então verificar o valor do campo Codin para entrega de EPIs
  E então verificar o valor do campo Utiliza Codin de Beneficios para entrega de EPIs
  E então verificar o valor do campo Envio de Email antes do vencimento
  E então verificar o valor do campo Envio de Email após o vencimento
  E então verificar o valor do campo Envio de Email no vencimento
  ## Aba Matrícula Automática
  ### Empregado
  E então verificar o valor do campo Auto Incremento
  E então verificar o valor do campo Permissão - Domingo
  E então verificar o valor do campo Permissão - Feriado
  E então verificar o valor do campo Permissão - Dia da Semana
  E então verificar o valor do campo Permissão - Sábado
  E então verificar o valor do campo Permissão - Visitante
  E então verificar o valor do campo Auto Incremento
  ### Terceiro
  E então verificar o valor do segundo campo Auto Incremento
  E então verificar o valor do segundo campo Permissão - Domingo
  E então verificar o valor do segundo campo Permissão - Feriado
  E então verificar o valor do segundo campo Permissão - Dia da Semana
  E então verificar o valor do segundo campo Permissão - Sábado
  E então verificar o valor do segundo campo Permissão - Visitante
  E então verificar o valor do segundo campo Auto Incremento
  ### Parceiro
  E então verificar o valor do terceiro campo Auto Incremento
  E então verificar o valor do terceiro campo Permissão - Domingo
  E então verificar o valor do terceiro campo Permissão - Feriado
  E então verificar o valor do terceiro campo Permissão - Dia da Semana
  E então verificar o valor do terceiro campo Permissão - Sábado
  E então verificar o valor do terceiro campo Permissão - Visitante
  E então verificar o valor do terceiro campo Auto Incremento
  ## Aba TOTVS
  E então verificar o valor campo Integração TOTVS
  E então verificar o valor campo Sistema
  E então verificar o valor campo URL
  E então verificar o valor campo Tempo de tolerância antes do acesso da faixa de entrada (minuto)
  E então verificar o valor campo Tempo de tolerância depois do acesso da faixa de entrada (minuto)
  E então verificar o valor campo Tempo de tolerância antes do acesso da faixa de saída (minuto)
  E então verificar o valor campo Tempo de tolerância depois do acesso da faixa de saída (minuto)
  E então verificar o valor campo Organograma Padrão
  E então verificar o valor campo Local Padrão
  E então verificar o valor campo Empresa Padrão
  E então verificar o valor campo Grupo de Acesso Padrão
  E então verificar o valor campo Tipo de Situação Trabalhista Padrão
  E então verificar o valor campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos)
  E então verificar o valor campo Tempo de Tolerancia antes do acesso da faixa de saida (Minutos)
  E então verificar o valor campo Turno Reduzido
  E então verificar o valor campo Tipo de Controle de Refeição
  E então verificar o valor campo Controlar Chave Externa Refeitório
  E então verificar o valor campo Faixa de Acesso Mandatório
  E então verificar o valor campo Faixa de Acesso Refeitório Mandatorio
  E então verificar o valor campo Tag do Início da Escala
  E então verificar o valor campo Chave Externa
  E então verificar o valor campo Tipo de Tolerância 
  E então verificar o valor campo Tolerância Refeição(Saida)
  E então verificar o valor campo Tolerância Refeição(Valor)
  E então verificar o valor campo Controle de Refeições Mandatórios no Sistemas
  E então verificar o valor campo Configuração Padrão de Acesso, Refeição e Biometria
  ## Aba Sistema
  E então verificar o valor campo Identificar a pessoa no sistema por biometria - MatchOnServer
  E então verificar o valor campo Caminho Middleware
  E então verificar o valor campo Integração WSG
  E então verificar o valor campo Url WSG
  E então verificar o valor campo Debug WSG
  E então verificar o valor campo Liberar Acesso Área de Risco
  E então verificar o valor campo Suricato Escola
  E então verificar o valor campo Responsável recebe notificação via Sms/E-mail
  E então verificar o valor campo Colab. Utiliza Transp. Empresa
  E então verificar o valor campo Mensagem de Codin
  E então verificar o valor campo Utiliza Área Alfandegada LDC 
  E então verificar o valor campo Utiliza Controle de Validade de Fumaça
  E então verificar o valor campo Estacionamento de Veículo



*** Keywords ***
Dado que eu acesse o menu: Configuração | Sistema
  resource_mnu.Clicar No Menu Configuração | Sistema

Então devo visualizar a tela de Configurações de sistema
  resource_blanksettings.Acessar Tela Configurações do sistema

E clicar no botão para abrir todos os parâmetros
  resource_blanksettings.Clicar no botão para abrir todos os parâmetros

E então verificar o valor do campo Nome do Cliente 
  resource_blanksettings.Verificar o valor do campo Nome do Cliente 

E então verificar o valor do campo Idioma Padrão do Sistema
  resource_blanksettings.Verificar o valor do campo Idioma Padrão do Sistema

E então verificar o valor do campo Debug
  resource_blanksettings.Verificar o valor do campo Debug

E então verificar o valor do campo Utiliza Matriz de Acesso
  resource_blanksettings.Verificar o valor do campo Utiliza Matriz de Acesso

E então verificar o valor do campo Crachá Lógico/Físico
  resource_blanksettings.Verificar o valor do campo Crachá Lógico/Físico

E então verificar o valor do campo Tipo Biometria Colaborador
  resource_blanksettings.Verificar o valor do campo Tipo Biometria Colaborador

E então verificar o valor do campo Timeout Sessão (Segundos)
  resource_blanksettings.Verificar o valor do campo Timeout Sessão (Segundos)

E então verificar o valor do campo Envio de Comandos On-line
  resource_blanksettings.Verificar o valor do campo Envio de Comandos On-line

E então verificar o valor do campo Quantidade de Processos Simultaneos (GerServ)
  resource_blanksettings.Verificar o valor do campo Quantidade de Processos Simultaneos (GerServ)

E então verificar o valor do campo É obrigatório informar o colaborador que está autorizando o desbloqueio do crachá?
  resource_blanksettings.Verificar o valor do campo É obrigatório informar o colaborador que está autorizando o desbloqueio do crachá?

E então verificar o valor do campo Tempo de Validade da Senha
  resource_blanksettings.Verificar o valor do campo Tempo de Validade da Senha

E então verificar o valor do campo Permitir Cargo Auto-Incremento
  resource_blanksettings.Verificar o valor do campo Permitir Cargo Auto-Incremento

E então verificar o valor do campo Remover Acentuação
  resource_blanksettings.Verificar o valor do campo Remover Acentuação

E então verificar o valor do campo Motivo Bloqueio de Documentos
  resource_blanksettings.Verificar o valor do campo Motivo Bloqueio de Documentos

E então verificar o valor do campo Valida Dupla Verificação de Veículos
  resource_blanksettings.Verificar o valor do campo Valida Dupla Verificação de Veículos

E então verificar o valor do campo Manter log de (dias)
  resource_blanksettings.Verificar o valor do campo Manter log de (dias)

E então verificar o valor do campo Tipo de Geração de Listas
  resource_blanksettings.Verificar o valor do campo Tipo de Geração de Listas

E então verificar o valor do campo 6 Credenciais
  resource_blanksettings.Verificar o valor do campo 6 Credenciais

E então verificar o valor do campo Obrigatório Autorizador de Desbloqueio
  resource_blanksettings.Verificar o valor do campo Obrigatório Autorizador de Desbloqueio

E então verificar o valor do campo Qtde. Dias de Falta para Bloquear Acesso
  resource_blanksettings.Verificar o valor do campo Qtde. Dias de Falta para Bloquear Acesso

E então verificar as opções marcadas no campo Biometria
  resource_blanksettings.Verificar as opções marcadas no campo Biometria

E então verificar as opções marcadas no campo Smartcard
  resource_blanksettings.Verificar as opções marcadas no campo Smartcard

E então verificar as opções marcadas no campo Foto
  resource_blanksettings.Verificar as opções marcadas no campo Foto

E então verificar as opções marcadas no campo Upload
  resource_blanksettings.Verificar as opções marcadas no campo Upload

E então verificar as opções marcadas no campo Scanner
  resource_blanksettings.Verificar as opções marcadas no campo Scanner

E então verificar o valor do campo Pad
  resource_blanksettings.Verificar o valor do campo Pad

E então verificar o valor do campo Porta
  resource_blanksettings.Verificar o valor do campo Porta

E então verificar o valor do campo SmartcardLF
  resource_blanksettings.Verificar o valor do campo SmartcardLF

E então verificar o valor do campo Facial
  resource_blanksettings.Verificar o valor do campo Facial

E então verificar o valor do campo Utilizar Campos Customizados
  resource_blanksettings.Verificar o valor do campo Utilizar Campos Customizados

E então verificar o valor do campo Cor para Destaque
  resource_blanksettings.Verificar o valor do campo Cor para Destaque

E então verificar o valor do campo Histórico de Cargos
  resource_blanksettings.Verificar o valor do campo Histórico de Cargos

E então verificar o valor do campo Histórico de Centro de Custos
  resource_blanksettings.Verificar o valor do campo Histórico de Centro de Custos

E então verificar o valor do campo Histórico de Crachás
  resource_blanksettings.Verificar o valor do campo Histórico de Crachás

E então verificar o valor do campo Histórico de Escalas
  resource_blanksettings.Verificar o valor do campo Histórico de Escalas

E então verificar o valor do campo Histórico de Filial
  resource_blanksettings.Verificar o valor do campo Histórico de Filial

E então verificar o valor do campo Histórico de Organograma
  resource_blanksettings.Verificar o valor do campo Histórico de Organograma

E então verificar o valor do campo E-mail Envio de Notificação de Val. do ASO
  resource_blanksettings.Verificar o valor do campo E-mail Envio de Notificação de Val. do ASO

E então verificar o valor do campo Qtde Dias Para Notificação
  resource_blanksettings.Verificar o valor do campo Qtde Dias Para Notificação

E então verificar o valor do campo E-mail Envio de Notificação de Val. do Treinamento de Segurança
  resource_blanksettings.Verificar o valor do campo E-mail Envio de Notificação de Val. do Treinamento de Segurança

E então verificar o valor do campo Qtde Dias Para Notificação de Venc. Treinamento
  resource_blanksettings.Verificar o valor do campo Qtde Dias Para Notificação de Venc. Treinamento

E então verificar o valor do campo Atualiza Dados Tb. Acesso Colaborador
  resource_blanksettings.Verificar o valor do campo Atualiza Dados Tb. Acesso Colaborador

E então verificar o valor do campo Método de Autenticação
  resource_blanksettings.Verificar o valor do campo Método de Autenticação

E então verificar o valor do campo Endereço IP do Servidor LDPA
  resource_blanksettings.Verificar o valor do campo Endereço IP do Servidor LDPA

E então verificar o valor do campo Porta do Servidor LDPA
  resource_blanksettings.Verificar o valor do campo Porta do Servidor LDPA

E então verificar o valor do campo Login Administrador
  resource_blanksettings.Verificar o valor do campo Login Administrador

E então verificar o valor do campo Password Administrador
  resource_blanksettings.Verificar o valor do campo Password Administrador

E então verificar o valor do campo LDPA Base de Pesquisa DN 
  resource_blanksettings.Verificar o valor do campo LDPA Base de Pesquisa DN 

E então verificar o valor do campo LDPA Filtro de Pesquisa
  resource_blanksettings.Verificar o valor do campo LDPA Filtro de Pesquisa

E então verificar o valor do campo LDPA Sincronizar MemberOf
  resource_blanksettings.Verificar o valor do campo LDPA Sincronizar MemberOf

E então verificar o valor do campo Avisar Validade da Senha antes (Dias)
  resource_blanksettings.Verificar o valor do campo Avisar Validade da Senha antes (Dias)

E então verificar o valor do campo Desbloquear Login Em (Minutos)
  resource_blanksettings.Verificar o valor do campo Desbloquear Login Em (Minutos)

E então verificar o valor do campo Mínimo de Senhas no Histórico
  resource_blanksettings.Verificar o valor do campo Mínimo de Senhas no Histórico

E então verificar o valor do campo Permitir Reutilizar Senha Anterior
  resource_blanksettings.Verificar o valor do campo Permitir Reutilizar Senha Anterior

E então verificar o valor do campo Bloquear Login Após (Tentativas)
  resource_blanksettings.Verificar o valor do campo Bloquear Login Após (Tentativas)

E então verificar o valor do campo Validade Mínima da Senha (Dias)
  resource_blanksettings.Verificar o valor do campo Validade Mínima da Senha (Dias)

E então verificar o valor do campo Validade da Senha (Dias)
  resource_blanksettings.Verificar o valor do campo Validade da Senha (Dias)

E então verificar o valor do campo Símbolos
  resource_blanksettings.Verificar o valor do campo Símbolos

E então verificar o valor do campo Máximo de caracteres idênticos (Caracteres)
  resource_blanksettings.Verificar o valor do campo Máximo de caracteres idênticos (Caracteres)

E então verificar o valor do campo Mínimo de caracteres não alfabéticos (Caracteres)
  resource_blanksettings.Verificar o valor do campo Mínimo de caracteres não alfabéticos (Caracteres)

E então verificar o valor do campo Mínimo de caracteres não presentes na última senha (Caracteres)
  resource_blanksettings.Verificar o valor do campo Mínimo de caracteres não presentes na última senha (Caracteres)

E então verificar o valor do campo Letras em caixa alta (maiúsculo)
  resource_blanksettings.Verificar o valor do campo Letras em caixa alta (maiúsculo)

E então verificar o valor do campo Letras em caixa baixa (minúsculo)
  resource_blanksettings.Verificar o valor do campo Letras em caixa baixa (minúsculo)

E então verificar o valor do campo Números
  resource_blanksettings.Verificar o valor do campo Números

E então verificar o valor do campo Quantidade Mínima de Dígitos da Senha (Caracteres)
  resource_blanksettings.Verificar o valor do campo Quantidade Mínima de Dígitos da Senha (Caracteres)

E então verificar o valor do campo Altura da Foto
  resource_blanksettings.Verificar o valor do campo Altura da Foto

E então verificar o valor do campo Largura da Foto
  resource_blanksettings.Verificar o valor do campo Largura da Foto

E então verificar o valor do campo Altura da Foto para Importação
  resource_blanksettings.Verificar o valor do campo Altura da Foto para Importação

E então verificar o valor do campo Largura da Foto para Importação
  resource_blanksettings.Verificar o valor do campo Largura da Foto para Importação

E então verificar o valor do campo Lançador é Auto Aprovador de Visitas
  resource_blanksettings.Verificar o valor do campo Lançador é Auto Aprovador de Visitas

E então verificar o valor do campo Bloquear Visitado Ausente
  resource_blanksettings.Verificar o valor do campo Bloquear Visitado Ausente

E então verificar o valor do campo Critica se Docto do Visitante for de Empregado
  resource_blanksettings.Verificar o valor do campo Critica se Docto do Visitante for de Empregado

E então verificar o valor do campo Mostrar Veículo na Entrada de Visitante
  resource_blanksettings.Verificar o valor do campo Mostrar Veículo na Entrada de Visitante

E então verificar o valor do campo Mostrar Visitado na Entrada de Visitante
  resource_blanksettings.Verificar o valor do campo Mostrar Visitado na Entrada de Visitante

E então verificar o valor do campo Utilizar Workflow de Aprovação de Entrada de Visitante
  resource_blanksettings.Verificar o valor do campo Utilizar Workflow de Aprovação de Entrada de Visitante

E então verificar o valor do campo Validar Homônimo
  resource_blanksettings.Verificar o valor do campo Validar Homônimo

E então verificar o valor do campo Faixa de Crachá
  resource_blanksettings.Verificar o valor do campo Faixa de Crachá

E então verificar o valor do campo Empresa Terceira Padrão
  resource_blanksettings.Verificar o valor do campo Empresa Terceira Padrão

E então verificar o valor do campo Empresa Padrão (Colaborador)
  resource_blanksettings.Verificar o valor do campo Empresa Padrão (Colaborador)

E então verificar o valor do campo Tipo de Colaborador Padrão
  resource_blanksettings.Verificar o valor do campo Tipo de Colaborador Padrão

E então verificar o valor do campo Código Permissão Padrão
  resource_blanksettings.Verificar o valor do campo Código Permissão Padrão

E então verificar o valor do campo Tipo de Visita Padrão
  resource_blanksettings.Verificar o valor do campo Tipo de Visita Padrão

E então verificar o valor do campo Intervalo Processamento
  resource_blanksettings.Verificar o valor do campo Intervalo Processamento

E então verificar o valor do campo Timeout Monitoramento
  resource_blanksettings.Verificar o valor do campo Timeout Monitoramento

E então verificar o valor do campo Tempo Máximo Entre Registros
  resource_blanksettings.Verificar o valor do campo Tempo Máximo Entre Registros

E então verificar o valor do campo Status On
  resource_blanksettings.Verificar o valor do campo Status On

E então verificar o valor do campo Status Off
  resource_blanksettings.Verificar o valor do campo Status Off

E então verificar o valor do campo Status Desativado
  resource_blanksettings.Verificar o valor do campo Status Desativado

E então verificar o valor do campo Time out Monitoramento de Câmeras
  resource_blanksettings.Verificar o valor do campo Time out Monitoramento de Câmeras

E então verificar o valor do campo Configuração de Largura da Câmera
  resource_blanksettings.Verificar o valor do campo Configuração de Largura da Câmera

E então verificar o valor do campo Configuração da Altura da Câmera
  resource_blanksettings.Verificar o valor do campo Configuração da Altura da Câmera

E então verificar o valor do campo Codin para entrega de EPIs
  resource_blanksettings.Verificar o valor do campo Codin para entrega de EPIs

E então verificar o valor do campo Utiliza Codin de Beneficios para entrega de EPIs
  resource_blanksettings.Verificar o valor do campo Utiliza Codin de Beneficios para entrega de EPIs

E então verificar o valor do campo Envio de Email antes do vencimento
  resource_blanksettings.Verificar o valor do campo Envio de Email antes do vencimento

E então verificar o valor do campo Envio de Email após o vencimento
  resource_blanksettings.Verificar o valor do campo Envio de Email após o vencimento

E então verificar o valor do campo Envio de Email no vencimento
  resource_blanksettings.Verificar o valor do campo Envio de Email no vencimento

E então verificar o valor do campo Auto Incremento
  resource_blanksettings.Verificar o valor do campo Auto Incremento

E então verificar o valor do campo Permissão - Domingo
  resource_blanksettings.Verificar o valor do campo Permissão - Domingo

E então verificar o valor do campo Permissão - Feriado
  resource_blanksettings.Verificar o valor do campo Permissão - Feriado

E então verificar o valor do campo Permissão - Dia da Semana
  resource_blanksettings.Verificar o valor do campo Permissão - Dia da Semana

E então verificar o valor do campo Permissão - Sábado
  resource_blanksettings.Verificar o valor do campo Permissão - Sábado

E então verificar o valor do campo Permissão - Visitante
  resource_blanksettings.Verificar o valor do campo Permissão - Visitante

E então verificar o valor do segundo campo Auto Incremento
  resource_blanksettings.Verificar o valor do segundo campo Auto Incremento

E então verificar o valor do segundo campo Permissão - Domingo
  resource_blanksettings.Verificar o valor do segundo campo Permissão - Domingo

E então verificar o valor do segundo campo Permissão - Feriado
  resource_blanksettings.Verificar o valor do segundo campo Permissão - Feriado

E então verificar o valor do segundo campo Permissão - Dia da Semana
  resource_blanksettings.Verificar o valor do segundo campo Permissão - Dia da Semana

E então verificar o valor do segundo campo Permissão - Sábado
  resource_blanksettings.Verificar o valor do segundo campo Permissão - Sábado

E então verificar o valor do segundo campo Permissão - Visitante
  resource_blanksettings.Verificar o valor do segundo campo Permissão - Visitante

E então verificar o valor do terceiro campo Auto Incremento
  resource_blanksettings.Verificar o valor do terceiro campo Auto Incremento

E então verificar o valor do terceiro campo Permissão - Domingo
  resource_blanksettings.Verificar o valor do terceiro campo Permissão - Domingo

E então verificar o valor do terceiro campo Permissão - Feriado
  resource_blanksettings.Verificar o valor do terceiro campo Permissão - Feriado

E então verificar o valor do terceiro campo Permissão - Dia da Semana
  resource_blanksettings.Verificar o valor do terceiro campo Permissão - Dia da Semana

E então verificar o valor do terceiro campo Permissão - Sábado
  resource_blanksettings.Verificar o valor do terceiro campo Permissão - Sábado

E então verificar o valor do terceiro campo Permissão - Visitante
  resource_blanksettings.Verificar o valor do terceiro campo Permissão - Visitante

E então verificar o valor campo Integração TOTVS
  resource_blanksettings.Verificar o valor campo Integração TOTVS

E então verificar o valor campo Sistema
  resource_blanksettings.Verificar o valor campo Sistema

E então verificar o valor campo URL
  resource_blanksettings.Verificar o valor campo URL

E então verificar o valor campo Tempo de tolerância antes do acesso da faixa de entrada (minuto)
  resource_blanksettings.Verificar o valor campo Tempo de tolerância antes do acesso da faixa de entrada (minuto)

E então verificar o valor campo Tempo de tolerância depois do acesso da faixa de entrada (minuto)
  resource_blanksettings.Verificar o valor campo Tempo de tolerância depois do acesso da faixa de entrada (minuto)

E então verificar o valor campo Tempo de tolerância antes do acesso da faixa de saída (minuto)
  resource_blanksettings.Verificar o valor campo Tempo de tolerância antes do acesso da faixa de saída (minuto)

E então verificar o valor campo Tempo de tolerância depois do acesso da faixa de saída (minuto)
  resource_blanksettings.Verificar o valor campo Tempo de tolerância depois do acesso da faixa de saída (minuto)

E então verificar o valor campo Organograma Padrão
  resource_blanksettings.Verificar o valor campo Organograma Padrão

E então verificar o valor campo Local Padrão
  resource_blanksettings.Verificar o valor campo Local Padrão

E então verificar o valor campo Empresa Padrão
  resource_blanksettings.Verificar o valor campo Empresa Padrão

E então verificar o valor campo Grupo de Acesso Padrão
  resource_blanksettings.Verificar o valor campo Grupo de Acesso Padrão

E então verificar o valor campo Tipo de Situação Trabalhista Padrão
  resource_blanksettings.Verificar o valor campo Tipo de Situação Trabalhista Padrão

E então verificar o valor campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos)
  resource_blanksettings.Verificar o valor campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos)

E então verificar o valor campo Tempo de Tolerancia antes do acesso da faixa de saida (Minutos)
  resource_blanksettings.Verificar o valor campo Tempo de Tolerancia antes do acesso da faixa de saida (Minutos)

E então verificar o valor campo Turno Reduzido
  resource_blanksettings.Verificar o valor campo Turno Reduzido

E então verificar o valor campo Tipo de Controle de Refeição
  resource_blanksettings.Verificar o valor campo Tipo de Controle de Refeição

E então verificar o valor campo Controlar Chave Externa Refeitório
  resource_blanksettings.Verificar o valor campo Controlar Chave Externa Refeitório

E então verificar o valor campo Faixa de Acesso Mandatório
  resource_blanksettings.Verificar o valor campo Faixa de Acesso Mandatório

E então verificar o valor campo Faixa de Acesso Refeitório Mandatorio
  resource_blanksettings.Verificar o valor campo Faixa de Acesso Refeitório Mandatorio

E então verificar o valor campo Tag do Início da Escala
  resource_blanksettings.Verificar o valor campo Tag do Início da Escala

E então verificar o valor campo Chave Externa
  resource_blanksettings.Verificar o valor campo Chave Externa

E então verificar o valor campo Tipo de Tolerância 
  resource_blanksettings.Verificar o valor campo Tipo de Tolerância

E então verificar o valor campo Tolerância Refeição(Saida)
  resource_blanksettings.Verificar o valor campo Tolerância Refeição(Saida)

E então verificar o valor campo Tolerância Refeição(Valor)
  resource_blanksettings.Verificar o valor campo Tolerância Refeição(Valor)

E então verificar o valor campo Controle de Refeições Mandatórios no Sistemas
  resource_blanksettings.Verificar o valor campo Controle de Refeições Mandatórios no Sistemas

E então verificar o valor campo Configuração Padrão de Acesso, Refeição e Biometria
  resource_blanksettings.Verificar o valor campo Configuração Padrão de Acesso, Refeição e Biometria

E então verificar o valor campo Identificar a pessoa no sistema por biometria - MatchOnServer
  resource_blanksettings.Verificar o valor campo Identificar a pessoa no sistema por biometria - MatchOnServer

E então verificar o valor campo Caminho Middleware
  resource_blanksettings.Verificar o valor campo Caminho Middleware

E então verificar o valor campo Integração WSG
  resource_blanksettings.Verificar o valor campo Integração WSG

E então verificar o valor campo Url WSG
  resource_blanksettings.Verificar o valor campo Url WSG

E então verificar o valor campo Debug WSG
  resource_blanksettings.Verificar o valor campo Debug WSG

E então verificar o valor campo Liberar Acesso Área de Risco
  resource_blanksettings.Verificar o valor campo Liberar Acesso Área de Risco

E então verificar o valor campo Suricato Escola
  resource_blanksettings.Verificar o valor campo Suricato Escola

E então verificar o valor campo Responsável recebe notificação via Sms/E-mail
  resource_blanksettings.Verificar o valor campo Responsável recebe notificação via Sms/E-mail

E então verificar o valor campo Colab. Utiliza Transp. Empresa
  resource_blanksettings.Verificar o valor campo Colab. Utiliza Transp. Empresa

E então verificar o valor campo Mensagem de Codin
  resource_blanksettings.Verificar o valor campo Mensagem de Codin

E então verificar o valor campo Utiliza Área Alfandegada LDC 
  resource_blanksettings.Verificar o valor campo Utiliza Área Alfandegada LDC 

E então verificar o valor campo Utiliza Controle de Validade de Fumaça
  resource_blanksettings.Verificar o valor campo Utiliza Controle de Validade de Fumaça

E então verificar o valor campo Estacionamento de Veículo
  resource_blanksettings.Verificar o valor campo Estacionamento de Veículo