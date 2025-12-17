*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Comando | Acesso

# SCREEN
Acessar Tela Comandos de Acesso On-Line
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line
  ${APPNAME}     Set Variable  ctrComandos
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON

Clicar na Checkbox "${APP}"
  IF  "${APP}" == "Aplicativo"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[1]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Aplicativo

  ELSE IF  "${APP}" == "Coleta"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[2]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Coleta

  ELSE IF  "${APP}" == "Comandos"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[3]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Comandos

  ELSE IF  "${APP}" == "Horário de Verão"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[4]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Horário de Verão

  ELSE IF  "${APP}" == "Listas"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[5]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Listas

  ELSE IF  "${APP}" == "Modo de Acesso"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[6]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Modo de Acesso

  ELSE IF  "${APP}" == "Pendência"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[7]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Pendência

  ELSE IF  "${APP}" == "Players"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[8]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Players

  ELSE IF  "${APP}" == "REP"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[9]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line REP

  ELSE IF  "${APP}" == "Smartcard"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[10]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Smartcard

  ELSE IF  "${APP}" == "Status"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[11]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Status

  END

  ${APPNAME}     Set Variable  ctrComandos
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

# VERIFY
Verificar a checkbox Aplicativo
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[1]/td
  Element Should Contain  ${LABEL}  Aplicativo

Verificar a checkbox Coleta
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[2]/td
  Element Should Contain  ${LABEL}  Coleta

Verificar a checkbox Comandos
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[3]/td
  Element Should Contain  ${LABEL}  Comandos

Verificar a checkbox Horário de Verão
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[4]/td
  Element Should Contain  ${LABEL}  Horário de Verão

Verificar a checkbox Listas
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[5]/td
  Element Should Contain  ${LABEL}  Listas

Verificar a checkbox Modo de Acesso
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[6]/td
  Element Should Contain  ${LABEL}  Modo de Acesso

Verificar a checkbox Pendência
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[7]/td
  Element Should Contain  ${LABEL}  Pendência

Verificar a checkbox Players
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[8]/td
  Element Should Contain  ${LABEL}  Players

Verificar a checkbox REP
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[9]/td
  Element Should Contain  ${LABEL}  REP

Verificar a checkbox Smartcard
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[10]/td
  Element Should Contain  ${LABEL}  Smartcard

Verificar a checkbox Status
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[11]/td
  Element Should Contain  ${LABEL}  Status

Verificar a checkbox Apagar Aplicativo
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcaplicativo"]/table/tbody/tr[1]/td
  Element Should Contain  ${LABEL}  Apagar Aplicativo

Verificar a checkbox Atualização de Firmware
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcaplicativo"]/table/tbody/tr[2]/td
  Element Should Contain  ${LABEL}  Atualização de Firmware

Verificar a checkbox Carregar Aplicativo
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcaplicativo"]/table/tbody/tr[3]/td
  Element Should Contain  ${LABEL}  Carregar Aplicativo

Verificar a checkbox Coleta Backup Off-line
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slccoleta"]/table/tbody/tr[1]/td
  Element Should Contain  ${LABEL}  Coleta Backup Off-line

Verificar a checkbox Coleta Backup On-line
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slccoleta"]/table/tbody/tr[2]/td
  Element Should Contain  ${LABEL}  Coleta Backup On-line
  
Verificar a checkbox Coleta Off-line
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slccoleta"]/table/tbody/tr[3]/td
  Element Should Contain  ${LABEL}  Coleta Off-line

Verificar a checkbox Start
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slccomandos"]/table/tbody/tr[1]/td
  Element Should Contain  ${LABEL}  Start

Verificar a checkbox Alterar Grau de Conferência Para Biometria
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slccomandos"]/table/tbody/tr[2]/td
  Element Should Contain  ${LABEL}  Alterar Grau de Conferência Para Biometria

Verificar a checkbox Apagar Backup
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slccomandos"]/table/tbody/tr[3]/td
  Element Should Contain  ${LABEL}  Apagar Backup

Verificar a checkbox Bloquear Equipamento
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slccomandos"]/table/tbody/tr[4]/td
  Element Should Contain  ${LABEL}  Bloquear Equipamento

Verificar a checkbox Carga Data/Hora
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slccomandos"]/table/tbody/tr[5]/td
  Element Should Contain  ${LABEL}  Carga Data/Hora

Verificar a checkbox Comando Limpar Erros
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slccomandos"]/table/tbody/tr[6]/td
  Element Should Contain  ${LABEL}  Comando Limpar Erros

Verificar a checkbox Desbloquear Equipamento
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slccomandos"]/table/tbody/tr[7]/td
  Element Should Contain  ${LABEL}  Desbloquear Equipamento

Verificar a checkbox Desconexão Lógica
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slccomandos"]/table/tbody/tr[8]/td
  Element Should Contain  ${LABEL}  Desconexão Lógica

Verificar a checkbox Apagar o Horário de Verão
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slchorarioverao"]/table/tbody/tr[1]/td
  Element Should Contain  ${LABEL}  Apagar o Horário de Verão

Verificar a checkbox Carga do Horário de Verão
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slchorarioverao"]/table/tbody/tr[2]/td
  Element Should Contain  ${LABEL}  Carga do Horário de Verão

Verificar a checkbox Status do Horário de Verão
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slchorarioverao"]/table/tbody/tr[3]/td
  Element Should Contain  ${LABEL}  Status do Horário de Verão

Verificar o campo Data Inicial
  ${LABEL}  Set Variable  xpath=//*[@id="hidden_field_data_txtdatahv1"]/table/tbody/tr/td[1]/span[1]
  ${CAMPO}  Set Variable  xpath=//*[@id="id_read_off_txtdatahv1"]/input[1]

  Element Should Contain  ${LABEL}  Data Inicial
  Element Attribute Value Should Be  ${CAMPO}  name  txtdatahv1

Verificar o campo Data Final
  ${LABEL}  Set Variable  xpath=//*[@id="hidden_field_data_txtdatahv2"]/table/tbody/tr/td[1]/span[1]
  ${CAMPO}  Set Variable  xpath=//*[@id="id_read_off_txtdatahv2"]/input[1]

  Element Should Contain  ${LABEL}   Data Final
  Element Attribute Value Should Be  ${CAMPO}  name  txtdatahv2

Verificar a checkbox ACESSO - Excluir Lista de Biometria
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slclistas"]/table/tbody/tr[1]/td
  Element Should Contain  ${LABEL}  ACESSO - Excluir Lista de Biometria

Verificar a checkbox ACESSO - Excluir Lista de Bloqueio
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slclistas"]/table/tbody/tr[2]/td
  Element Should Contain  ${LABEL}  ACESSO - Excluir Lista de Bloqueio

Verificar a checkbox ACESSO - Excluir Lista de Liberação
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slclistas"]/table/tbody/tr[3]/td
  Element Should Contain  ${LABEL}  ACESSO - Excluir Lista de Liberação

Verificar a checkbox ACESSO - Excluir Lista de Senha 
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slclistas"]/table/tbody/tr[4]/td
  Element Should Contain  ${LABEL}  ACESSO - Excluir Lista de Senha

Verificar a checkbox ACESSO - Incluir Lista de Biometria
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slclistas"]/table/tbody/tr[5]/td
  Element Should Contain  ${LABEL}  ACESSO - Incluir Lista de Biometria

Verificar a checkbox ACESSO - Incluir Lista de Bloqueio
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slclistas"]/table/tbody/tr[6]/td
  Element Should Contain  ${LABEL}  ACESSO - Incluir Lista de Bloqueio

Verificar a checkbox ACESSO - Incluir Lista de Liberação
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slclistas"]/table/tbody/tr[7]/td
  Element Should Contain  ${LABEL}  ACESSO - Incluir Lista de Liberação

Verificar a checkbox ACESSO - Incluir Lista de Senha
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slclistas"]/table/tbody/tr[8]/td
  Element Should Contain  ${LABEL}  ACESSO - Incluir Lista de Senha

Verificar a checkbox ACESSO - Incluir Lista de Visitante
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slclistas"]/table/tbody/tr[9]/td
  Element Should Contain  ${LABEL}  ACESSO - Incluir Lista de Visitante

Verificar a checkbox Comando Acesso com Anti-dupla 
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcmodoacesso"]/table/tbody/tr[1]/td
  Element Should Contain  ${LABEL}  Comando Acesso com Anti-dupla

Verificar a checkbox Comando Acesso sem Anti-dupla
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcmodoacesso"]/table/tbody/tr[2]/td
  Element Should Contain  ${LABEL}  Comando Acesso sem Anti-dupla

Verificar a checkbox Apagar
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcpendencia"]/table/tbody/tr[1]/td
  Element Should Contain  ${LABEL}  Apagar

Verificar a checkbox Coletar
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcpendencia"]/table/tbody/tr[2]/td
  Element Should Contain  ${LABEL}  Coletar

Verificar a checkbox Status Qtde
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcpendencia"]/table/tbody/tr[3]/td
  Element Should Contain  ${LABEL}  Status Qtde

Verificar a checkbox Recolhimento de Biometria Novos
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcplayers"]/table/tbody/tr[1]/td
  Element Should Contain  ${LABEL}  Recolhimento de Biometria Novos

Verificar a checkbox Recolhimento de Biometria Total
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcplayers"]/table/tbody/tr[2]/td
  Element Should Contain  ${LABEL}  Recolhimento de Biometria Total

Verificar a checkbox REP - Carregar Empregador
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcrep"]/table/tbody/tr[1]/td
  Element Should Contain  ${LABEL}  REP - Carregar Empregador

Verificar a checkbox REP - Coletar AFD por Data 
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcrep"]/table/tbody/tr[2]/td
  Element Should Contain  ${LABEL}  REP - Coletar AFD por Data

Verificar a checkbox REP - Coletar AFD por NSR
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcrep"]/table/tbody/tr[3]/td
  Element Should Contain  ${LABEL}  REP - Coletar AFD por NSR

Verificar a checkbox REP - Coletar Status da MRP
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcrep"]/table/tbody/tr[4]/td
  Element Should Contain  ${LABEL}  REP - Coletar Status da MRP

Verificar a checkbox REP - Excluir Biometria
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcrep"]/table/tbody/tr[5]/td
  Element Should Contain  ${LABEL}  REP - Excluir Biometria

Verificar a checkbox REP - Excluir Empregador
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcrep"]/table/tbody/tr[6]/td
  Element Should Contain  ${LABEL}  REP - Excluir Empregador

Verificar a checkbox REP - Exclusão Total
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcrep"]/table/tbody/tr[7]/td
  Element Should Contain  ${LABEL}  REP - Exclusão Total

Verificar a checkbox REP - Incluir Biometria
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcrep"]/table/tbody/tr[8]/td
  Element Should Contain  ${LABEL}  REP - Incluir Biometria

Verificar a checkbox REP - Incluir Empregado
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcrep"]/table/tbody/tr[9]/td
  Element Should Contain  ${LABEL}  REP - Incluir Empregado

Verificar a checkbox Carga de Lista de Faixa Horária de Permissão
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcsmartcard"]/table/tbody/tr[1]/td
  Element Should Contain  ${LABEL}  Carga de Lista de Faixa Horária de Permissão
  
Verificar a checkbox Carga Lista Permissões
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcsmartcard"]/table/tbody/tr[2]/td
  Element Should Contain  ${LABEL}  Carga Lista Permissões

Verificar a checkbox Carga Tabela de Feriados
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcsmartcard"]/table/tbody/tr[3]/td
  Element Should Contain  ${LABEL}  Carga Tabela de Feriados

Verificar a checkbox Excluir Lista de Faixa Horária de Permissão
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcsmartcard"]/table/tbody/tr[4]/td
  Element Should Contain  ${LABEL}  Excluir Lista de Faixa Horária de Permissão

Verificar a checkbox Tabela de Feriados
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcsmartcard"]/table/tbody/tr[5]/td
  Element Should Contain  ${LABEL}  Tabela de Feriados

Verificar a checkbox Exclusão da Lista de Permissões
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcsmartcard"]/table/tbody/tr[6]/td
  Element Should Contain  ${LABEL}  Exclusão da Lista de Permissões

Verificar a checkbox Status - Lista de Permissões
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcsmartcard"]/table/tbody/tr[7]/td
  Element Should Contain  ${LABEL}  Status - Lista de Permissões

Verificar a checkbox Status - Tabela de Feriados
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcsmartcard"]/table/tbody/tr[8]/td
  Element Should Contain  ${LABEL}  Status - Tabela de Feriados

Verificar a checkbox Status de Lista de Faixa Horária de Permissão
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcsmartcard"]/table/tbody/tr[9]/td
  Element Should Contain  ${LABEL}  Status de Lista de Faixa Horária de Permissão

Verificar a checkbox Compatibilidade Eprom x Aplicativo
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxCheckbox_slcstatus"]/table/tbody/tr[1]/td
  Element Should Contain  ${LABEL}  Compatibilidade Eprom x Aplicativo

Verificar a checkbox Status - Aplicativo 
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxCheckbox_slcstatus"]/table/tbody/tr[2]/td
  Element Should Contain  ${LABEL}  Status - Aplicativo

Verificar a checkbox Status - Bloqueio
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxCheckbox_slcstatus"]/table/tbody/tr[3]/td
  Element Should Contain  ${LABEL}  Status - Bloqueio

Verificar a checkbox Status - Buffer
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxCheckbox_slcstatus"]/table/tbody/tr[4]/td
  Element Should Contain  ${LABEL}  Status - Buffer

Verificar a checkbox Status - Características
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxCheckbox_slcstatus"]/table/tbody/tr[5]/td
  Element Should Contain  ${LABEL}  Status - Características

Verificar a checkbox Status - Data e Hora
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxCheckbox_slcstatus"]/table/tbody/tr[6]/td
  Element Should Contain  ${LABEL}  Status - Data e Hora

Verificar a checkbox Status - Erros
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxCheckbox_slcstatus"]/table/tbody/tr[7]/td
  Element Should Contain  ${LABEL}  Status - Erros

Verificar a checkbox Status - Liberação Incondicional
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxCheckbox_slcstatus"]/table/tbody/tr[8]/td
  Element Should Contain  ${LABEL}  Status - Liberação Incondicional

Verificar a checkbox Status - Lista de Bloqueio
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxCheckbox_slcstatus"]/table/tbody/tr[9]/td
  Element Should Contain  ${LABEL}  Status - Lista de Bloqueio
  
Verificar a checkbox Status - Lista de Liberação
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxCheckbox_slcstatus"]/table/tbody/tr[10]/td
  Element Should Contain  ${LABEL}  Status - Lista de Liberação