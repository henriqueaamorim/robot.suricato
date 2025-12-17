*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrAcessos.robot
Resource        ../../../../resource/app/resource_ctrComandos.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${SCREENNAME}  Comandos de Acesso On-Line
${APPNAME}     ctrComandos
${OBJETIVO}    Verificar todos os campos na tela Comandos de Acesso On-Line.

*** Test Cases ***
Testcase: Verificar todos os campos na tela Comandos de Acesso On-Line
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Controle | Comando | Acesso
  Ao visualizar a tela: Comandos do Acesso On-Line
  E clicar no botão: OK
  Então devo visualizar a tela: Comandos de Acesso On-Line
#Verificação das checkboxs iniciais
  E verificar a checkbox Aplicativo
  E verificar a checkbox Coleta
  E verificar a checkbox Comandos
  E verificar a checkbox Horário de Verão
  E verificar a checkbox Listas
  E verificar a checkbox Modo de Acesso
  E verificar a checkbox Pendência 
  E verificar a checkbox Players
  E verificar a checkbox REP
  E verificar a checkbox Smartcard
  E verificar a checkbox Status
#Verificação das opções da checkbox Aplicativo
  E então clicar na checkbox "Aplicativo"
  E verificar a checkbox Apagar Aplicativo
  E verificar a checkbox Atualização de Firmware
  E verificar a checkbox Carregar Aplicativo
#Verificação das opções da checkbox Coleta
  E então clicar na checkbox "Coleta"
  E verificar a checkbox Coleta Backup Off-line
  E verificar a checkbox Coleta Backup On-line
  E verificar a checkbox Coleta Off-line
#Verificação das opções da checkbox Comandos
  E então clicar na checkbox "Comandos"
  E verificar a checkbox Start
  E verificar a checkbox Alterar Grau de Conferência Para Biometria
  E verificar a checkbox Apagar Backup
  E verificar a checkbox Bloquear Equipamento
  E verificar a checkbox Carga Data/Hora
  E verificar a checkbox Comando Limpar Erros
  E verificar a checkbox Desbloquear Equipamento
  E verificar a checkbox Desconexão Lógica
#Verificação das opções da checkbox Horário de Verão
  E então clicar na checkbox "Horário de Verão"
  E verificar a checkbox Apagar o Horário de Verão
  E verificar a checkbox Carga do Horário de Verão
  E verificar a checkbox Status do Horário de Verão
  E verificar o campo Data Inicial
  E verificar o campo Data Final
#Verificação das opções da checkbox Listas
  E então clicar na checkbox "Listas"
  E verificar a checkbox ACESSO - Excluir Lista de Biometria
  E verificar a checkbox ACESSO - Excluir Lista de Bloqueio
  E verificar a checkbox ACESSO - Excluir Lista de Liberação
  E verificar a checkbox ACESSO - Excluir Lista de Senha
  E verificar a checkbox ACESSO - Incluir Lista de Biometria
  E verificar a checkbox ACESSO - Incluir Lista de Bloqueio
  E verificar a checkbox ACESSO - Incluir Lista de Liberação
  E verificar a checkbox ACESSO - Incluir Lista de Senha
  E verificar a checkbox ACESSO - Incluir Lista de Visitante
#Verificação das opções da checkbox Modo de Acesso
  E então clicar na checkbox "Modo de Acesso"
  E verificar a checkbox Comando Acesso com Anti-dupla 
  E verificar a checkbox Comando Acesso sem Anti-dupla
#Verificação das opções da checkbox Pendência
  E então clicar na checkbox "Pendência"
  E verificar a checkbox Apagar
  E verificar a checkbox Coletar
  E verificar a checkbox Status Qtde
#Verificação das opções da checkbox Players
  E então clicar na checkbox "Players"
  E verificar a checkbox Recolhimento de Biometria Novos
  E verificar a checkbox Recolhimento de Biometria Total
#Verificação das opções da checkbox REP
  E então clicar na checkbox "REP"
  E verificar a checkbox REP - Carregar Empregador
  E verificar a checkbox REP - Coletar AFD por Data
  E verificar a checkbox REP - Coletar AFD por NSR
  E verificar a checkbox REP - Coletar Status da MRP
  E verificar a checkbox REP - Excluir Biometria
  E verificar a checkbox REP - Excluir Empregador
  E verificar a checkbox REP - Exclusão Total
  E verificar a checkbox REP - Incluir Biometria
  E verificar a checkbox REP - Incluir Empregado
#Verificação das opções da checkbox Smartcard
  E então clicar na checkbox "Smartcard"
  E verificar a checkbox Carga de Lista de Faixa Horária de Permissão
  E verificar a checkbox Carga Lista Permissões
  E verificar a checkbox Carga Tabela de Feriados
  E verificar a checkbox Excluir Lista de Faixa Horária de Permissão
  E verificar a checkbox Tabela de Feriados
  E verificar a checkbox Exclusão da Lista de Permissões
  E verificar a checkbox Status - Lista de Permissões
  E verificar a checkbox Status - Tabela de Feriados
  E verificar a checkbox Status de Lista de Faixa Horária de Permissão
#Verificação das opções da checkbox Status
  E então clicar na checkbox "Status"
  E verificar a checkbox Compatibilidade Eprom x Aplicativo
  E verificar a checkbox Status - Aplicativo
  E verificar a checkbox Status - Bloqueio
  E verificar a checkbox Status - Buffer
  E verificar a checkbox Status - Características
  E verificar a checkbox Status - Data e Hora
  E verificar a checkbox Status - Erros
  E verificar a checkbox Status - Liberação Incondicional
  E verificar a checkbox Status - Lista de Bloqueio
  E verificar a checkbox Status - Lista de Liberação
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Acesso
  resource_mnu.Clicar No Menu Controle | Comando | Acesso

Ao visualizar a tela: Comandos do Acesso On-Line
  resource_ctrAcessos.Acessar Tela Comandos do Acesso On-Line

E clicar no botão: OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Comandos de Acesso On-Line
  resource_ctrComandos.Acessar Tela Comandos de Acesso On-Line

E verificar a checkbox Aplicativo
  resource_ctrComandos.Verificar a checkbox Aplicativo

E verificar a checkbox Coleta
  resource_ctrComandos.Verificar a checkbox Coleta

E verificar a checkbox Comandos
  resource_ctrComandos.Verificar a checkbox Comandos

E verificar a checkbox Horário de Verão
  resource_ctrComandos.Verificar a checkbox Horário de Verão

E verificar a checkbox Listas
  resource_ctrComandos.Verificar a checkbox Listas

E verificar a checkbox Modo de Acesso
  resource_ctrComandos.Verificar a checkbox Modo de Acesso

E verificar a checkbox Pendência 
  resource_ctrComandos.Verificar a checkbox Pendência

E verificar a checkbox Players
  resource_ctrComandos.Verificar a checkbox Players

E verificar a checkbox REP
  resource_ctrComandos.Verificar a checkbox REP

E verificar a checkbox Smartcard
  resource_ctrComandos.Verificar a checkbox Smartcard

E verificar a checkbox Status
  resource_ctrComandos.Verificar a checkbox Status

E então clicar na checkbox "${APP}"
  resource_ctrComandos.Clicar na Checkbox "${APP}"

E verificar a checkbox Apagar Aplicativo
  resource_ctrComandos.Verificar a checkbox Apagar Aplicativo

E verificar a checkbox Atualização de Firmware
  resource_ctrComandos.Verificar a checkbox Atualização de Firmware

E verificar a checkbox Carregar Aplicativo
  resource_ctrComandos.Verificar a checkbox Carregar Aplicativo

E verificar a checkbox Coleta Backup Off-line
  resource_ctrComandos.Verificar a checkbox Coleta Backup Off-line

E verificar a checkbox Coleta Backup On-line
  resource_ctrComandos.Verificar a checkbox Coleta Backup On-line

E verificar a checkbox Coleta Off-line
  resource_ctrComandos.Verificar a checkbox Coleta Off-line

E verificar a checkbox Start
  resource_ctrComandos.Verificar a checkbox Start

E verificar a checkbox Alterar Grau de Conferência Para Biometria
  resource_ctrComandos.Verificar a checkbox Alterar Grau de Conferência Para Biometria

E verificar a checkbox Apagar Backup
  resource_ctrComandos.Verificar a checkbox Apagar Backup

E verificar a checkbox Bloquear Equipamento
  resource_ctrComandos.Verificar a checkbox Bloquear Equipamento

E verificar a checkbox Carga Data/Hora
  resource_ctrComandos.Verificar a checkbox Carga Data/Hora

E verificar a checkbox Comando Limpar Erros
  resource_ctrComandos.Verificar a checkbox Comando Limpar Erros

E verificar a checkbox Desbloquear Equipamento
  resource_ctrComandos.Verificar a checkbox Desbloquear Equipamento

E verificar a checkbox Desconexão Lógica
  resource_ctrComandos.Verificar a checkbox Desconexão Lógica

E verificar a checkbox Apagar o Horário de Verão
  resource_ctrComandos.Verificar a checkbox Apagar o Horário de Verão

E verificar a checkbox Carga do Horário de Verão
  resource_ctrComandos.Verificar a checkbox Carga do Horário de Verão

E verificar a checkbox Status do Horário de Verão
  resource_ctrComandos.Verificar a checkbox Status do Horário de Verão

E verificar o campo Data Inicial
  resource_ctrComandos.Verificar o campo Data Inicial

E verificar o campo Data Final
  resource_ctrComandos.Verificar o campo Data Final

E verificar a checkbox ACESSO - Excluir Lista de Biometria
  resource_ctrComandos.Verificar a checkbox ACESSO - Excluir Lista de Biometria

E verificar a checkbox ACESSO - Excluir Lista de Bloqueio
  resource_ctrComandos.Verificar a checkbox ACESSO - Excluir Lista de Bloqueio

E verificar a checkbox ACESSO - Excluir Lista de Liberação
  resource_ctrComandos.Verificar a checkbox ACESSO - Excluir Lista de Liberação

E verificar a checkbox ACESSO - Excluir Lista de Senha
  resource_ctrComandos.Verificar a checkbox ACESSO - Excluir Lista de Senha 

E verificar a checkbox ACESSO - Incluir Lista de Biometria
  resource_ctrComandos.Verificar a checkbox ACESSO - Incluir Lista de Biometria

E verificar a checkbox ACESSO - Incluir Lista de Bloqueio
  resource_ctrComandos.Verificar a checkbox ACESSO - Incluir Lista de Bloqueio

E verificar a checkbox ACESSO - Incluir Lista de Liberação
  resource_ctrComandos.Verificar a checkbox ACESSO - Incluir Lista de Liberação

E verificar a checkbox ACESSO - Incluir Lista de Senha
  resource_ctrComandos.Verificar a checkbox ACESSO - Incluir Lista de Senha

E verificar a checkbox ACESSO - Incluir Lista de Visitante
  resource_ctrComandos.Verificar a checkbox ACESSO - Incluir Lista de Visitante

E verificar a checkbox Comando Acesso com Anti-dupla 
  resource_ctrComandos.Verificar a checkbox Comando Acesso com Anti-dupla 

E verificar a checkbox Comando Acesso sem Anti-dupla
  resource_ctrComandos.Verificar a checkbox Comando Acesso sem Anti-dupla

E verificar a checkbox Apagar
  resource_ctrComandos.Verificar a checkbox Apagar

E verificar a checkbox Coletar
  resource_ctrComandos.Verificar a checkbox Coletar

E verificar a checkbox Status Qtde
  resource_ctrComandos.Verificar a checkbox Status Qtde

E verificar a checkbox Recolhimento de Biometria Novos
  resource_ctrComandos.Verificar a checkbox Recolhimento de Biometria Novos

E verificar a checkbox Recolhimento de Biometria Total
  resource_ctrComandos.Verificar a checkbox Recolhimento de Biometria Total

E verificar a checkbox REP - Carregar Empregador
  resource_ctrComandos.Verificar a checkbox REP - Carregar Empregador

E verificar a checkbox REP - Coletar AFD por Data
  resource_ctrComandos.Verificar a checkbox REP - Coletar AFD por Data 

E verificar a checkbox REP - Coletar AFD por NSR
  resource_ctrComandos.Verificar a checkbox REP - Coletar AFD por NSR

E verificar a checkbox REP - Coletar Status da MRP
  resource_ctrComandos.Verificar a checkbox REP - Coletar Status da MRP

E verificar a checkbox REP - Excluir Biometria
  resource_ctrComandos.Verificar a checkbox REP - Excluir Biometria

E verificar a checkbox REP - Excluir Empregador
  resource_ctrComandos.Verificar a checkbox REP - Excluir Empregador

E verificar a checkbox REP - Exclusão Total
  resource_ctrComandos.Verificar a checkbox REP - Exclusão Total

E verificar a checkbox REP - Incluir Biometria
  resource_ctrComandos.Verificar a checkbox REP - Incluir Biometria

E verificar a checkbox REP - Incluir Empregado
  resource_ctrComandos.Verificar a checkbox REP - Incluir Empregado

E verificar a checkbox Carga de Lista de Faixa Horária de Permissão
  resource_ctrComandos.Verificar a checkbox Carga de Lista de Faixa Horária de Permissão

E verificar a checkbox Carga Lista Permissões
  resource_ctrComandos.Verificar a checkbox Carga Lista Permissões

E verificar a checkbox Carga Tabela de Feriados
  resource_ctrComandos.Verificar a checkbox Carga Tabela de Feriados

E verificar a checkbox Excluir Lista de Faixa Horária de Permissão
  resource_ctrComandos.Verificar a checkbox Excluir Lista de Faixa Horária de Permissão

E verificar a checkbox Tabela de Feriados
  resource_ctrComandos.Verificar a checkbox Tabela de Feriados

E verificar a checkbox Exclusão da Lista de Permissões
  resource_ctrComandos.Verificar a checkbox Exclusão da Lista de Permissões

E verificar a checkbox Status - Lista de Permissões
  resource_ctrComandos.Verificar a checkbox Status - Lista de Permissões

E verificar a checkbox Status - Tabela de Feriados
  resource_ctrComandos.Verificar a checkbox Status - Tabela de Feriados

E verificar a checkbox Status de Lista de Faixa Horária de Permissão
  resource_ctrComandos.Verificar a checkbox Status de Lista de Faixa Horária de Permissão

E verificar a checkbox Compatibilidade Eprom x Aplicativo
  resource_ctrComandos.Verificar a checkbox Compatibilidade Eprom x Aplicativo

E verificar a checkbox Status - Aplicativo
  resource_ctrComandos.Verificar a checkbox Status - Aplicativo 

E verificar a checkbox Status - Bloqueio
  resource_ctrComandos.Verificar a checkbox Status - Bloqueio

E verificar a checkbox Status - Buffer
  resource_ctrComandos.Verificar a checkbox Status - Buffer

E verificar a checkbox Status - Características
  resource_ctrComandos.Verificar a checkbox Status - Características

E verificar a checkbox Status - Data e Hora
  resource_ctrComandos.Verificar a checkbox Status - Data e Hora

E verificar a checkbox Status - Erros
  resource_ctrComandos.Verificar a checkbox Status - Erros

E verificar a checkbox Status - Liberação Incondicional
  resource_ctrComandos.Verificar a checkbox Status - Liberação Incondicional

E verificar a checkbox Status - Lista de Bloqueio
  resource_ctrComandos.Verificar a checkbox Status - Lista de Bloqueio

E verificar a checkbox Status - Lista de Liberação
  resource_ctrComandos.Verificar a checkbox Status - Lista de Liberação

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"