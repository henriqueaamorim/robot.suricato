*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/app/resource_blanksettings.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Preencher os campos na tela de configurações padrões do sistema

*** Test Cases ***
Testcase: Preencher os campos na tela de configurações padrões do sistema
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Configuração | Sistema
  Então devo visualizar a tela de Configurações de sistema
  E clicar no botão para abrir todos os parâmetros
  # Aba Geral
  E então preencher o campo Idioma Padrão do Sistema "2"
  E então selecionar a opção "Sim" no campo Debug 
  E então selecionar a opção "Sim" no campo Utiliza Matriz de Acesso
  #E então selecionar a opção "TROCAR_PARA_O_NUMERO" no campo Crachá Lógico/Físico
  E então selecionar a opção "Não" no campo Tipo Biometria Colaborador
  E então preencher o campo Timeout Sessão (Segundos) "3000000"
  E então selecionar a opção "Sim" no campo Envio de Comandos On-line
  E então preencher o campo Quantidade de Processos Simultaneos (GerServ) "3"
  E então selecionar a opção "Não" no campo É obrigatório informar o colaborador que está autorizando o desbloqueio do crachá?
  E então preencher o campo Tempo de Validade da Senha "3"
  E então selecionar a opção "Não" no campo Permitir Cargo Auto-Incremento
  E então selecionar a opção "Sim" no campo Remover Acentuação
  E então selecionar a opção "CRACHÁ EXTRAVIADO" no campo Motivo Bloqueio de Documentos
  E então selecionar a opção "Não" no campo Valida Dupla Verificação de Veículos
  E então preencher o campo Manter log de (dias) "MANUTENCAO"
  E então selecionar a opção "Arquivo" no campo Tipo de Geração de Listas
  E então selecionar a opção "Sim" no campo 6 Credenciais
  E então selecionar a opção "Sim" no campo Obrigatório Autorizador de Desbloqueio
  E então preencher o campo Qtde. Dias de Falta para Bloquear Acesso "2"
  # Biometria
  E então marcar a opção OP (Sagem)
  E então marcar a opção OP1_OP4 ( Suprema )
  E então marcar a opção VENA
  # Smartcard
  E então marcar a opção Gravar 
  E então marcar a opção Ler
  # Foto
  E então marcar a opção Captura Simultânea
  E então marcar a opção Face
  E então marcar a opção Frente Doc
  E então marcar a opção Verso Doc
  # Upload
  E então marcar a segunda opção Face
  E então marcar a segunda opção Frente Doc 
  E então marcar a segunda opção Verso Doc
  # Scanner 
  E então marcar a opção Frente
  E então marcar a opção Verso
  E então selecionar a opção "Não" no campo Pad
  E então preencher o campo Porta "10000"
  E então selecionar a opção "Físico" no campo SmartcardLF
  # Facial
  E então marcar a terceira opção Face
  E então selecionar a opção "Físico" no campo Utilizar Campos Customizados
  E então selecionar a opção "Não" no campo Histórico de Cargos
  E então selecionar a opção "Não" no campo Histórico de Centro de Custos
  E então selecionar a opção "Não" no campo Histórico de Crachás
  E então selecionar a opção "Não" no campo Histórico de Escalas
  E então selecionar a opção "Não" no campo Histórico de Filial
  E então selecionar a opção "Não" no campo Histórico de Organograma
  E então preencher o campo E-mail Envio de Notificação de Val. do ASO "N"
  E então preencher o campo Qtde Dias Para Notificação "12"
  E então preencher o campo E-mail Envio de Notificação de Val. do Treinamento de Segurança "S"
  E então preencher o campo Qtde Dias Para Notificação de Venc. Treinamento "12"
  E então selecionar a opção "Sim" no campo Atualiza Dados Tb. Acesso Colaborador 
  ## Aba Autenticação
  E então selecionar a opção "LDAP" no campo Método de Autenticação
  #E então preencher o campo Endereço IP do Servidor LDPA "S"
  #E então preencher o campo Porta do Servidor LDPA "123"
  #E então preencher o campo Login Administrador "ADMIN"
  #E então preencher o campo Password Administrador "ADMIN"
  #E então preencher o campo LDPA Base de Pesquisa DN "DC=teleematica" 
  #E então preencher o campo LDPA Filtro de Pesquisa "TESTE"
  #E então selecionar a opção "Não" no campo LDPA Sincronizar MemberOf
  ## Aba Diretiva de Segurança
  E então preencher o campo Avisar Validade da Senha antes (Dias) "2"
  E então preencher o campo Desbloquear Login Em (Minutos) "2"
  E então preencher o campo Mínimo de Senhas no Histórico "2"
  E então selecionar a opção "Não" no campo Permitir Reutilizar Senha Anterior
  E então preencher o campo Bloquear Login Após (Tentativas) "2"
  E então preencher o campo Validade Mínima da Senha (Dias) "1"
  E então preencher o campo Validade da Senha (Dias) "364"
  E então preencher o campo Símbolos "!"
  E então preencher o campo Máximo de caracteres idênticos (Caracteres) "2"
  E então preencher o campo Mínimo de caracteres não alfabéticos (Caracteres) "1"
  E então preencher o campo Mínimo de caracteres não presentes na última senha (Caracteres) "3"
  E então selecionar a opção "Sim" no campo Letras em caixa alta (maiúsculo)
  E então selecionar a opção "Sim" no campo Letras em caixa baixa (minúsculo)
  E então selecionar a opção "Não" no campo Números
  E então preencher o campo Quantidade Mínima de Dígitos da Senha (Caracteres) "4"
  ## Aba Foto
  E então preencher o campo Altura da Foto "90"
  E então preencher o campo Largura da Foto "90"
  E então preencher o campo Altura da Foto para Importação "90"
  E então preencher o campo Largura da Foto para Importação "90"
  ## Aba Entrada de Visitante
  E então selecionar a opção "Não" no campo Lançador é Auto Aprovador de Visitas
  E então selecionar a opção "Sim" no campo Bloquear Visitado Ausente
  E então selecionar a opção "Sim" no campo Critica se Docto do Visitante for de Empregado
  E então selecionar a opção "Não" no campo Mostrar Veículo na Entrada de Visitante
  E então selecionar a opção "Não" no campo Mostrar Visitado na Entrada de Visitante
  E então selecionar a opção "Não" no campo Utilizar Workflow de Aprovação de Entrada de Visitante
  E então selecionar a opção "Não" no campo Validar Homônimo
  E então preencher o campo Faixa de Crachá "2"
  E então selecionar a opção "Volks" no campo Empresa Terceira Padrão
  E então selecionar a opção "1234" no campo Empresa Padrão (Colaborador)
  E então selecionar a opção "Terceiro" no campo Tipo de Colaborador Padrão
  E então selecionar a opção "Jesus" no campo Código Permissão Padrão
  E então selecionar a opção "TESTE GUI" no campo Tipo de Visita Padrão
  ## Aba Monitoramento
  E então preencher o campo Intervalo Processamento "50000"
  E então preencher o campo Timeout Monitoramento "6000"
  E então preencher o campo Tempo Máximo Entre Registros "3456"
  E então preencher o campo Time out Monitoramento de Câmeras "2000"
  E então preencher o campo Configuração de Largura da Câmera "700"
  E então preencher o campo Configuração da Altura da Câmera "600"
  ## Aba Equipamento de Proteção Individual - EPI
  E então selecionar a opção "teste" no campo Codin para entrega de EPIs
  E então selecionar a opção "Não" no campo Utiliza Codin de Beneficios para entrega de EPIs
  E então selecionar a opção "TESTE@TESTE.COM" no campo Envio de Email antes do vencimento
  E então selecionar a opção "TESTE@TESTE.COM" no campo Envio de Email após o vencimento
  E então selecionar a opção "TESTE@TESTE.COM" no campo Envio de Email no vencimento
  ## Aba Matrícula Automática
  ### Empregado
  E então selecionar a opção "Não" no campo Auto Incremento
  E então selecionar a opção "TSI - Liberar" no campo Permissão - Domingo
  E então selecionar a opção "TSI - Liberar" no campo Permissão - Feriado
  E então selecionar a opção "TSI - Liberar" no campo Permissão - Dia da Semana
  E então selecionar a opção "TSI - Liberar" no campo Permissão - Sábado
  E então selecionar a opção "TSI - Liberar" no campo Permissão - Visitante
  ### Terceiro
  E então selecionar a opção "Não" no segundo campo Auto Incremento
  E então selecionar a opção "TSI - Liberar" no segundo campo Permissão - Domingo
  E então selecionar a opção "TSI - Liberar" no segundo campo Permissão - Feriado
  E então selecionar a opção "TSI - Liberar" no segundo campo Permissão - Dia da Semana
  E então selecionar a opção "TSI - Liberar" no segundo campo Permissão - Sábado
  E então selecionar a opção "TSI - Liberar" no segundo campo Permissão - Visitante
  ### Parceiro
  E então selecionar a opção "Não" no terceiro campo Auto Incremento
  E então selecionar a opção "TSI - Liberar" no terceiro campo Permissão - Domingo
  E então selecionar a opção "TSI - Liberar" no terceiro campo Permissão - Feriado
  E então selecionar a opção "TSI - Liberar" no terceiro campo Permissão - Dia da Semana
  E então selecionar a opção "TSI - Liberar" no terceiro campo Permissão - Sábado
  E então selecionar a opção "TSI - Liberar" no terceiro campo Permissão - Visitante
  ## Aba TOTVS
  E então selecionar a opção "Não" no campo Integração TOTVS
  E então selecionar a opção "Datasul" no campo Sistema
  E então preencher o campo URL "teste"
  E então preencher o campo Tempo de tolerância antes do acesso da faixa de entrada (minuto) "1"
  E então preencher o campo Tempo de tolerância depois do acesso da faixa de entrada (minuto) "1"
  E então preencher o campo Tempo de tolerância antes do acesso da faixa de saída (minuto) "1"
  E então preencher o campo Tempo de tolerância depois do acesso da faixa de saída (minuto) "1"
  E então selecionar a opção "TESTE GUI" no campo Organograma Padrão
  E então selecionar a opção "PORTARIA" no campo Local Padrão
  E então preencher o campo Empresa Padrão "2"
  E então selecionar a opção "TSI" no campo Grupo de Acesso Padrão
  E então preencher o campo Tipo de Situação Trabalhista Padrão "100"
  E então preencher o campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos) "12"
  E então preencher o campo Tempo de Tolerancia antes do acesso da faixa de saida (Minutos) "12"
  E então selecionar a opção "Não" no campo Turno Reduzido
  E então selecionar a opção "Por Faixa" no campo Tipo de Controle de Refeição
  E então selecionar a opção "Não" no campo Controlar Chave Externa Refeitório
  E então selecionar a opção "Global" no campo Faixa de Acesso Mandatório
  E então selecionar a opção "Web Service" no campo Faixa de Acesso Refeitório Mandatorio
  E então selecionar a opção "3" no campo Tag do Início da Escala
  E então selecionar a opção "Não" no campo Chave Externa
  E então selecionar a opção "Por Faixa" no campo Tipo de Tolerância 
  E então selecionar a opção "Não" no campo Tolerância Refeição(Saida)
  E então preencher o campo Tolerância Refeição(Valor) "23"
  E então selecionar a opção "Web Service" no campo Controle de Refeições Mandatórios no Sistemas 
  E então selecionar a opção "Não" no campo Configuração Padrão de Acesso, Refeição e Biometria
  ## Aba Sistema
  E então selecionar a opção "Não" no campo Identificar a pessoa no sistema por biometria - MatchOnServer
  E então preencher o campo Caminho Middleware "teste"
  E então selecionar a opção "Não" no campo Integração WSG
  E então preencher o campo Url WSG "teste"
  E então selecionar a opção "Sim" no campo Debug WSG
  E então selecionar a opção "Não" no campo Liberar Acesso Área de Risco
  E então selecionar a opção "Não" no campo Suricato Escola
  E então selecionar a opção "Não" no campo Responsável recebe notificação via Sms/E-mail
  E então selecionar a opção "Sim" no campo Colab. Utiliza Transp. Empresa
  E então selecionar a opção "Sim" no campo Mensagem de Codin
  E então selecionar a opção "Não" no campo Utiliza Área Alfandegada LDC 
  E então selecionar a opção "Não" no campo Utiliza Controle de Validade de Fumaça
  E então selecionar a opção "Não" no campo Estacionamento de Veículo

*** Keywords ***
Dado que eu acesse o menu: Configuração | Sistema
  resource_mnu.Clicar No Menu Configuração | Sistema

Então devo visualizar a tela de Configurações de sistema
  resource_blanksettings.Acessar Tela Configurações do sistema

E clicar no botão para abrir todos os parâmetros
  resource_blanksettings.Clicar no botão para abrir todos os parâmetros

E então preencher o campo Idioma Padrão do Sistema "${IDIOMA}"
  resource_blanksettings.Preencher o campo Idioma Padrão do Sistema "${IDIOMA}"

E então selecionar a opção "${OPCAO}" no campo Debug 
  resource_blanksettings.Selecionar a opção "${OPCAO}" no campo Debug 

E então selecionar a opção "${OPCAO}" no campo Utiliza Matriz de Acesso
  resource_blanksettings.Selecionar a opção "${OPCAO}" no campo Utiliza Matriz de Acesso
  
E então selecionar a opção "${VAR}" no campo Crachá Lógico/Físico
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Crachá Lógico/Físico

E então selecionar a opção "${VAR}" no campo Tipo Biometria Colaborador
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Tipo Biometria Colaborador

E então preencher o campo Timeout Sessão (Segundos) "${VAR}"
  resource_blanksettings.Preencher o campo Timeout Sessão (Segundos) "${VAR}"

E então selecionar a opção "${VAR}" no campo Envio de Comandos On-line
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Envio de Comandos On-line
  
E então preencher o campo Quantidade de Processos Simultaneos (GerServ) "${VAR}"
  resource_blanksettings.Preencher o campo Quantidade de Processos Simultaneos (GerServ) "${VAR}"

E então selecionar a opção "${VAR}" no campo É obrigatório informar o colaborador que está autorizando o desbloqueio do crachá?
  resource_blanksettings.Selecionar a opção "${VAR}" no campo É obrigatório informar o colaborador que está autorizando o desbloqueio do crachá?

E então preencher o campo Tempo de Validade da Senha "${VAR}"
  resource_blanksettings.Preencher o campo Tempo de Validade da Senha "${VAR}"

E então selecionar a opção "${VAR}" no campo Permitir Cargo Auto-Incremento
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Permitir Cargo Auto-Incremento

E então selecionar a opção "${VAR}" no campo Remover Acentuação
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Remover Acentuação

E então selecionar a opção "${VAR}" no campo Motivo Bloqueio de Documentos
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Motivo Bloqueio de Documentos

E então selecionar a opção "${VAR}" no campo Valida Dupla Verificação de Veículos
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Valida Dupla Verificação de Veículos

E então preencher o campo Manter log de (dias) "${VAR}"
  resource_blanksettings.Preencher o campo Manter log de (dias) "${VAR}"
  
E então selecionar a opção "${VAR}" no campo Tipo de Geração de Listas
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Tipo de Geração de Listas

E então selecionar a opção "${VAR}" no campo 6 Credenciais
  resource_blanksettings.Selecionar a opção "${VAR}" no campo 6 Credenciais

E então selecionar a opção "${VAR}" no campo Obrigatório Autorizador de Desbloqueio
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Obrigatório Autorizador de Desbloqueio

E então preencher o campo Qtde. Dias de Falta para Bloquear Acesso "${VAR}"
  resource_blanksettings.Preencher o campo Qtde. Dias de Falta para Bloquear Acesso "${VAR}"

E então marcar a opção OP (Sagem)
  resource_blanksettings.Marcar a opção OP (Sagem)

E então marcar a opção OP1_OP4 ( Suprema )
  resource_blanksettings.Marcar a opção OP1_OP4 ( Suprema )

E então marcar a opção VENA
  resource_blanksettings.Marcar a opção VENA

E então marcar a opção Gravar 
  resource_blanksettings.Marcar a opção Gravar 

E então marcar a opção Ler
  resource_blanksettings.Marcar a opção Ler

E então marcar a opção Captura Simultânea
  resource_blanksettings.Marcar a opção Captura Simultânea

E então marcar a opção Face
  resource_blanksettings.Marcar a opção Face

E então marcar a opção Frente Doc
  resource_blanksettings.Marcar a opção Frente Doc

E então marcar a opção Verso Doc
  resource_blanksettings.Marcar a opção Verso Doc

E então marcar a segunda opção Face
  resource_blanksettings.Marcar a segunda opção Face

E então marcar a segunda opção Frente Doc 
  resource_blanksettings.Marcar a segunda opção Frente Doc 
  
E então marcar a segunda opção Verso Doc
  resource_blanksettings.Marcar a segunda opção Verso Doc
 
E então marcar a opção Frente
  resource_blanksettings.Marcar a opção Frente

E então marcar a opção Verso
  resource_blanksettings.Marcar a opção Verso

E então selecionar a opção "${VAR}" no campo Pad
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Pad

E então preencher o campo Porta "${VAR}"
  resource_blanksettings.Preencher o campo Porta "${VAR}"

E então selecionar a opção "${VAR}" no campo SmartcardLF
  resource_blanksettings.Selecionar a opção "${VAR}" no campo SmartcardLF

E então marcar a terceira opção Face
  resource_blanksettings.Marcar a terceira opção Face

E então selecionar a opção "${VAR}" no campo Utilizar Campos Customizados
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Utilizar Campos Customizados

E então selecionar a opção "${VAR}" no campo Histórico de Cargos
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Histórico de Cargos
  
E então selecionar a opção "${VAR}" no campo Histórico de Centro de Custos
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Histórico de Centro de Custos

E então selecionar a opção "${VAR}" no campo Histórico de Crachás
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Histórico de Crachás

E então selecionar a opção "${VAR}" no campo Histórico de Escalas
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Histórico de Escalas

E então selecionar a opção "${VAR}" no campo Histórico de Filial
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Histórico de Filial

E então selecionar a opção "${VAR}" no campo Histórico de Organograma
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Histórico de Organograma

E então preencher o campo E-mail Envio de Notificação de Val. do ASO "${VAR}"
  resource_blanksettings.Preencher o campo E-mail Envio de Notificação de Val. do ASO "${VAR}"

E então preencher o campo Qtde Dias Para Notificação "${VAR}"
  resource_blanksettings.Preencher o campo Qtde Dias Para Notificação "${VAR}"

E então preencher o campo E-mail Envio de Notificação de Val. do Treinamento de Segurança "${VAR}"
  resource_blanksettings.Preencher o campo E-mail Envio de Notificação de Val. do Treinamento de Segurança "${VAR}"

E então preencher o campo Qtde Dias Para Notificação de Venc. Treinamento "${VAR}"
  resource_blanksettings.Preencher o campo Qtde Dias Para Notificação de Venc. Treinamento "${VAR}"

E então selecionar a opção "${VAR}" no campo Atualiza Dados Tb. Acesso Colaborador 
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Atualiza Dados Tb. Acesso Colaborador 

E então selecionar a opção "${VAR}LDAP" no campo Método de Autenticação
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Método de Autenticação

E então preencher o campo Endereço IP do Servidor LDPA "${VAR}"
  resource_blanksettings.Preencher o campo Endereço IP do Servidor LDPA "${VAR}"

E então preencher o campo Porta do Servidor LDPA "${VAR}"
  resource_blanksettings.Preencher o campo Porta do Servidor LDPA "${VAR}"

E então preencher o campo Login Administrador "${VAR}"
  resource_blanksettings.Preencher o campo Login Administrador "${VAR}"

E então preencher o campo Password Administrador "${VAR}"
  resource_blanksettings.Preencher o campo Password Administrador "${VAR}"

E então preencher o campo LDPA Base de Pesquisa DN "${VAR}" 
  resource_blanksettings.Preencher o campo LDPA Base de Pesquisa DN "${VAR}"

E então preencher o campo LDPA Filtro de Pesquisa "${VAR}"
  resource_blanksettings.Preencher o campo LDPA Filtro de Pesquisa "${VAR}"

E então selecionar a opção "${VAR}" no campo LDPA Sincronizar MemberOf
  resource_blanksettings.Selecionar a opção "${VAR}" no campo LDPA Sincronizar MemberOf

E então preencher o campo Avisar Validade da Senha antes (Dias) "${VAR}"
  resource_blanksettings.Preencher o campo Avisar Validade da Senha antes (Dias) "${VAR}"

E então preencher o campo Desbloquear Login Em (Minutos) "${VAR}"
  resource_blanksettings.Preencher o campo Desbloquear Login Em (Minutos) "${VAR}"

E então preencher o campo Mínimo de Senhas no Histórico "${VAR}"
  resource_blanksettings.Preencher o campo Mínimo de Senhas no Histórico "${VAR}"

E então selecionar a opção "${VAR}" no campo Permitir Reutilizar Senha Anterior
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Permitir Reutilizar Senha Anterior

E então preencher o campo Bloquear Login Após (Tentativas) "${VAR}"
  resource_blanksettings.Preencher o campo Bloquear Login Após (Tentativas) "${VAR}"

E então preencher o campo Validade Mínima da Senha (Dias) "${VAR}"
  resource_blanksettings.Preencher o campo Validade Mínima da Senha (Dias) "${VAR}"

E então preencher o campo Validade da Senha (Dias) "${VAR}"
  resource_blanksettings.Preencher o campo Validade da Senha (Dias) "${VAR}"

E então preencher o campo Símbolos "${VAR}"
  resource_blanksettings.Preencher o campo Símbolos "${VAR}"

E então preencher o campo Máximo de caracteres idênticos (Caracteres) "${VAR}"
  resource_blanksettings.Preencher o campo Máximo de caracteres idênticos (Caracteres) "${VAR}"

E então preencher o campo Mínimo de caracteres não alfabéticos (Caracteres) "${VAR}"
  resource_blanksettings.Preencher o campo Mínimo de caracteres não alfabéticos (Caracteres) "${VAR}"
  
E então preencher o campo Mínimo de caracteres não presentes na última senha (Caracteres) "${VAR}"
  resource_blanksettings.Preencher o campo Mínimo de caracteres não presentes na última senha (Caracteres) "${VAR}"

E então selecionar a opção "${VAR}" no campo Letras em caixa alta (maiúsculo)
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Letras em caixa alta (maiúsculo)

E então selecionar a opção "Si${VAR}m" no campo Letras em caixa baixa (minúsculo)
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Letras em caixa baixa (minúsculo)

E então selecionar a opção "${VAR}" no campo Números
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Números

E então preencher o campo Quantidade Mínima de Dígitos da Senha (Caracteres) "${VAR}"
  resource_blanksettings.Preencher o campo Quantidade Mínima de Dígitos da Senha (Caracteres) "${VAR}"

E então preencher o campo Altura da Foto "${VAR}"
  resource_blanksettings.Preencher o campo Altura da Foto "${VAR}"

E então preencher o campo Largura da Foto "${VAR}"
  resource_blanksettings.Preencher o campo Largura da Foto "${VAR}"

E então preencher o campo Altura da Foto para Importação "${VAR}"
  resource_blanksettings.Preencher o campo Altura da Foto para Importação "${VAR}"

E então preencher o campo Largura da Foto para Importação "${VAR}"
  resource_blanksettings.Preencher o campo Largura da Foto para Importação "${VAR}"

E então selecionar a opção "${VAR}" no campo Lançador é Auto Aprovador de Visitas
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Lançador é Auto Aprovador de Visitas

E então selecionar a opção "${VAR}" no campo Bloquear Visitado Ausente
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Bloquear Visitado Ausente

E então selecionar a opção "${VAR}" no campo Critica se Docto do Visitante for de Empregado
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Critica se Docto do Visitante for de Empregado

E então selecionar a opção "${VAR}" no campo Mostrar Veículo na Entrada de Visitante
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Mostrar Veículo na Entrada de Visitante

E então selecionar a opção "${VAR}" no campo Mostrar Visitado na Entrada de Visitante
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Mostrar Visitado na Entrada de Visitante

E então selecionar a opção "${VAR}" no campo Utilizar Workflow de Aprovação de Entrada de Visitante
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Utilizar Workflow de Aprovação de Entrada de Visitante

E então selecionar a opção "${VAR}" no campo Validar Homônimo
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Validar Homônimo

E então preencher o campo Faixa de Crachá "${VAR}"
  resource_blanksettings.Preencher o campo Faixa de Crachá "${VAR}"
  
E então selecionar a opção "${VAR}" no campo Empresa Terceira Padrão
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Empresa Terceira Padrão

E então selecionar a opção "${VAR}" no campo Empresa Padrão (Colaborador)
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Empresa Padrão (Colaborador)

E então selecionar a opção "${VAR}" no campo Tipo de Colaborador Padrão
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Tipo de Colaborador Padrão

E então selecionar a opção "${VAR}" no campo Código Permissão Padrão
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Código Permissão Padrão

E então selecionar a opção "${VAR}" no campo Tipo de Visita Padrão
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Tipo de Visita Padrão

E então preencher o campo Intervalo Processamento "${VAR}"
  resource_blanksettings.Preencher o campo Intervalo Processamento "${VAR}"

E então preencher o campo Timeout Monitoramento "${VAR}"
  resource_blanksettings.Preencher o campo Timeout Monitoramento "${VAR}"

E então preencher o campo Tempo Máximo Entre Registros "${VAR}"
  resource_blanksettings.Preencher o campo Tempo Máximo Entre Registros "${VAR}"

E então preencher o campo Time out Monitoramento de Câmeras "${VAR}"
  resource_blanksettings.Preencher o campo Time out Monitoramento de Câmeras "${VAR}"

E então preencher o campo Configuração de Largura da Câmera "${VAR}"
  resource_blanksettings.Preencher o campo Configuração de Largura da Câmera "${VAR}"

E então preencher o campo Configuração da Altura da Câmera "${VAR}"
  resource_blanksettings.Preencher o campo Configuração da Altura da Câmera "${VAR}"

E então selecionar a opção "${VAR}" no campo Codin para entrega de EPIs
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Codin para entrega de EPIs
  
E então selecionar a opção "${VAR}" no campo Utiliza Codin de Beneficios para entrega de EPIs
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Utiliza Codin de Beneficios para entrega de EPIs

E então selecionar a opção "${VAR}" no campo Envio de Email antes do vencimento
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Envio de Email antes do vencimento

E então selecionar a opção "${VAR}" no campo Envio de Email após o vencimento
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Envio de Email após o vencimento

E então selecionar a opção "${VAR}" no campo Envio de Email no vencimento
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Envio de Email no vencimento

E então selecionar a opção "${VAR}" no campo Auto Incremento
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Auto Incremento

E então selecionar a opção "${VAR}" no campo Permissão - Domingo
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Permissão - Domingo

E então selecionar a opção "${VAR}" no campo Permissão - Feriado
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Permissão - Feriado

E então selecionar a opção "${VAR}" no campo Permissão - Dia da Semana
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Permissão - Dia da Semana

E então selecionar a opção "${VAR}" no campo Permissão - Sábado
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Permissão - Sábado

E então selecionar a opção "${VAR}" no campo Permissão - Visitante
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Permissão - Visitante

E então selecionar a opção "${VAR}" no segundo campo Auto Incremento
  resource_blanksettings.Selecionar a opção "${VAR}" no segundo campo Auto Incremento

E então selecionar a opção "${VAR}" no segundo campo Permissão - Domingo
  resource_blanksettings.Selecionar a opção "${VAR}" no segundo campo Permissão - Domingo

E então selecionar a opção "${VAR}" no segundo campo Permissão - Feriado
  resource_blanksettings.Selecionar a opção "${VAR}" no segundo campo Permissão - Feriado

E então selecionar a opção "${VAR}" no segundo campo Permissão - Dia da Semana
  resource_blanksettings.Selecionar a opção "${VAR}" no segundo campo Permissão - Dia da Semana

E então selecionar a opção "${VAR}" no segundo campo Permissão - Sábado
  resource_blanksettings.Selecionar a opção "${VAR}" no segundo campo Permissão - Sábado

E então selecionar a opção "${VAR}" no segundo campo Permissão - Visitante
  resource_blanksettings.Selecionar a opção "${VAR}" no segundo campo Permissão - Visitante

E então selecionar a opção "${VAR}" no terceiro campo Auto Incremento
  resource_blanksettings.Selecionar a opção "${VAR}" no terceiro campo Auto Incremento

E então selecionar a opção "${VAR}" no terceiro campo Permissão - Domingo
  resource_blanksettings.Selecionar a opção "${VAR}" no terceiro campo Permissão - Domingo

E então selecionar a opção "${VAR}" no terceiro campo Permissão - Feriado
  resource_blanksettings.Selecionar a opção "${VAR}" no terceiro campo Permissão - Feriado

E então selecionar a opção "${VAR}" no terceiro campo Permissão - Dia da Semana
  resource_blanksettings.Selecionar a opção "${VAR}" no terceiro campo Permissão - Dia da Semana
  
E então selecionar a opção "${VAR}" no terceiro campo Permissão - Sábado
  resource_blanksettings.Selecionar a opção "${VAR}" no terceiro campo Permissão - Sábado

E então selecionar a opção "${VAR}" no terceiro campo Permissão - Visitante
  resource_blanksettings.Selecionar a opção "${VAR}" no terceiro campo Permissão - Visitante

E então selecionar a opção "${VAR}" no campo Integração TOTVS
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Integração TOTVS

E então selecionar a opção "${VAR}" no campo Sistema
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Sistema

E então preencher o campo URL "${VAR}"
  resource_blanksettings.Preencher o campo URL "${VAR}"

E então preencher o campo Tempo de tolerância antes do acesso da faixa de entrada (minuto) "${VAR}"
  resource_blanksettings.Preencher o campo Tempo de tolerância antes do acesso da faixa de entrada (minuto) "${VAR}"

E então preencher o campo Tempo de tolerância depois do acesso da faixa de entrada (minuto) "${VAR}"
  resource_blanksettings.Preencher o campo Tempo de tolerância depois do acesso da faixa de entrada (minuto) "${VAR}"
  
E então preencher o campo Tempo de tolerância antes do acesso da faixa de saída (minuto) "${VAR}"
  resource_blanksettings.Preencher o campo Tempo de tolerância antes do acesso da faixa de saída (minuto) "${VAR}"

E então preencher o campo Tempo de tolerância depois do acesso da faixa de saída (minuto) "${VAR}"
  resource_blanksettings.Preencher o campo Tempo de tolerância depois do acesso da faixa de saída (minuto) "${VAR}"

E então selecionar a opção "${VAR}" no campo Organograma Padrão
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Organograma Padrão

E então selecionar a opção "${VAR}" no campo Local Padrão
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Local Padrão

E então preencher o campo Empresa Padrão "${VAR}"
  resource_blanksettings.Preencher o campo Empresa Padrão "${VAR}"

E então selecionar a opção "${VAR}" no campo Grupo de Acesso Padrão
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Grupo de Acesso Padrão

E então preencher o campo Tipo de Situação Trabalhista Padrão "${VAR}"
  resource_blanksettings.Preencher o campo Tipo de Situação Trabalhista Padrão "${VAR}"

E então preencher o campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos) "${VAR}"
  resource_blanksettings.Preencher o campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos) "${VAR}"

E então preencher o campo Tempo de Tolerancia antes do acesso da faixa de saida (Minutos) "${VAR}"
  resource_blanksettings.Preencher o campo Tempo de Tolerancia antes do acesso da faixa de saida (Minutos) "${VAR}"

E então selecionar a opção "${VAR}" no campo Turno Reduzido
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Turno Reduzido

E então selecionar a opção "${VAR}" no campo Tipo de Controle de Refeição
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Tipo de Controle de Refeição

E então selecionar a opção "${VAR}" no campo Controlar Chave Externa Refeitório
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Controlar Chave Externa Refeitório

E então selecionar a opção "${VAR}" no campo Faixa de Acesso Mandatório
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Faixa de Acesso Mandatório

E então selecionar a opção "${VAR}" no campo Faixa de Acesso Refeitório Mandatorio
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Faixa de Acesso Refeitório Mandatorio

E então selecionar a opção "${VAR}" no campo Tag do Início da Escala
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Tag do Início da Escala

E então selecionar a opção "${VAR}" no campo Chave Externa
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Chave Externa

E então selecionar a opção "${VAR}" no campo Tipo de Tolerância 
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Tipo de Tolerância 

E então selecionar a opção "${VAR}" no campo Tolerância Refeição(Saida)
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Tolerância Refeição(Saida)

E então preencher o campo Tolerância Refeição(Valor) "${VAR}"
  resource_blanksettings.Preencher o campo Tolerância Refeição(Valor) "${VAR}"

E então selecionar a opção "${VAR}" no campo Controle de Refeições Mandatórios no Sistemas 
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Controle de Refeições Mandatórios no Sistemas 

E então selecionar a opção "${VAR}" no campo Configuração Padrão de Acesso, Refeição e Biometria
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Configuração Padrão de Acesso, Refeição e Biometria

E então selecionar a opção "${VAR}" no campo Identificar a pessoa no sistema por biometria - MatchOnServer
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Identificar a pessoa no sistema por biometria - MatchOnServer

E então preencher o campo Caminho Middleware "${VAR}"
  resource_blanksettings.Preencher o campo Caminho Middleware "${VAR}"

E então selecionar a opção "${VAR}" no campo Integração WSG
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Integração WSG

E então preencher o campo Url WSG "${VAR}"
  resource_blanksettings.Preencher o campo Url WSG "${VAR}"

E então selecionar a opção "${VAR}" no campo Debug WSG
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Debug WSG
  
E então selecionar a opção "${VAR}" no campo Liberar Acesso Área de Risco
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Liberar Acesso Área de Risco

E então selecionar a opção "${VAR}" no campo Suricato Escola
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Suricato Escola
  
E então selecionar a opção "${VAR}" no campo Responsável recebe notificação via Sms/E-mail
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Responsável recebe notificação via Sms/E-mail
  
E então selecionar a opção "${VAR}" no campo Colab. Utiliza Transp. Empresa
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Colab. Utiliza Transp. Empresa

E então selecionar a opção "${VAR}" no campo Mensagem de Codin
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Mensagem de Codin

E então selecionar a opção "${VAR}" no campo Utiliza Área Alfandegada LDC 
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Utiliza Área Alfandegada LDC 

E então selecionar a opção "${VAR}" no campo Utiliza Controle de Validade de Fumaça
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Utiliza Controle de Validade de Fumaça

E então selecionar a opção "${VAR}" no campo Estacionamento de Veículo
  resource_blanksettings.Selecionar a opção "${VAR}" no campo Estacionamento de Veículo
