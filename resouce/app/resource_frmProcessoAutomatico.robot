*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Processo | Importação
resource_mnu.Clicar No Menu Processo | Exportação
resource_mnu.Clicar No Menu Processo | Email
resource_mnu.Clicar No Menu Processo | On-line

# SCREEN

# IMPORTAÇÃO #
Acessar Tela Processo Automático - Importação
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo Automático - Importação
  ${APPNAME}  Set Variable  frmProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Processo Automático - Cadastro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo Automático - Importação
  ${APPNAME}  Set Variable  frmProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



# EXPORTAÇÃO #
Acessar Tela Processo Automático - Exportação
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo Automático - Exportação
  ${APPNAME}  Set Variable  frmProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Processo Automático - Cadastro Exportação
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo Automático - Exportação
  ${APPNAME}  Set Variable  frmProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



# E-MAIL #
Acessar Tela Processo Automático - Email
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo Automático - Email
  ${APPNAME}  Set Variable  frmProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Processo Automático - Cadastro Email
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo Automático - Email
  ${APPNAME}  Set Variable  frmProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



# ON-LINE #
Acessar Tela Processo Automático - On-Line
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo Automático - On-Line
  ${APPNAME}  Set Variable  frmProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Processo Automático - Cadastro On-Line
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo Automático - On-Line
  ${APPNAME}  Set Variable  frmProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#BUTTON

Selecionar Tipo de Processo "${PROCESSO}"
  IF  "${PROCESSO}" == "Comando: Bloqueio e Desbloqueio"
    Select From List by Label    name=tipoprocon   Comando: Bloqueio e Desbloqueio
    ${SCREENNAME}  Set Variable  Processo Automático On-Line Bloqueio e Desbloqueio

  ELSE IF  "${PROCESSO}" == "Comando: Data e Hora"
    Select From List by Label    name=tipoprocon    Comando: Data e Hora
    ${SCREENNAME}  Set Variable  Processo Automático On-Line Data e Hora

  ELSE IF  "${PROCESSO}" == "Excluir Log de comandos da Tabela TbComanAcess"
    Select From List by Label    name=tipoprocon    Excluir Log de Comandos da Tabela TbComanAcess
    ${SCREENNAME}  Set Variable  Processo Automático On-Line Excluir Log Tabela TbComanAcess

  ELSE IF  "${PROCESSO}" == "Excluir Log de Pendência na Tabela LOGPEND"
    Select From List by Label    name=tipoprocon    Excluir Log de Pendência na Tabela LOGPEND
    ${SCREENNAME}  Set Variable  Processo Automático On-Line Excluir Log Tabela LOGPEND

  ELSE IF  "${PROCESSO}" == "Executar a Geração de Lista"
    Select From List by Label    name=tipoprocon    Executar a Geração de Lista
    ${SCREENNAME}  Set Variable  Processo Automático On-Line Executar a Geração de Lista

  ELSE IF  "${PROCESSO}" == "Executar Procedure/Function SGBD"
    Select From List by Label    name=tipoprocon    Executar Procedure/Function SGBD
    ${SCREENNAME}  Set Variable  Processo Automático On-Line Executar Procedure Function SGBD

  END

  ${APPNAME}  Set Variable  frmProcessoAutomatico
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#FIELD
Preencher o campo Descrição "${DESCRICAO}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[2]/input    ${DESCRICAO}

Selecionar uma opção no campo Periodicidade "${PERIODO}"
  Select From List By Label    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[4]/td[2]/select   ${PERIODO} 

Preencher o campo Intervalo de Execução "${INTERVALO}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[5]/td[2]/input    ${INTERVALO}

Selecionar uma opção no campo Nível de Prioridade "${PRIORIDADE}"
  Select From List By Label    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[6]/td[2]/select  ${PRIORIDADE} 

Preencher o campo Remetente "${REMETENTE}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[8]/td[2]/input    ${REMETENTE}

Preencher o campo Destinatários "${DESTINATARIO}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[9]/td[2]/input    ${DESTINATARIO}

Preencher o campo Assunto "${ASSUNTO}"
  Input Text    name=assumail    ${ASSUNTO}

Selecionar uma opção no campo Renomear Arquivo "${RENOMEAR_ARQUIVO}"
  Select From List By Label    name=renoarquante   ${RENOMEAR_ARQUIVO} 

Preencher o campo Arquivo de Entrada "${ARQUIVO}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[12]/td[2]/input    ${ARQUIVO}

Selecionar uma opção no campo Layout "${LAYOUT}"
  Select From List By Label    name=codilayoimpo  ${LAYOUT} 

Selecionar uma opção no campo Formato "${FORMATO}"
  Select From List By Label    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[11]/td[2]/select  ${FORMATO} 

Preencher o campo Arquivo de Saída "${ARQUIVO}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[9]/td[2]/input    ${ARQUIVO}

Preencher o campo [texto] do Email "${TEXTO}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[13]/td[2]/input    ${TEXTO}

Selecionar uma opção no campo Tipo de Processo "${PROCESSO}"
  Select From List By Label    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[8]/td[2]/select  ${PROCESSO}


#VERIFY

# Importação #
Verificar o campo Código do Processo
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
  Element Should Contain  ${LABEL}  Código do Processo

Verificar o campo Descrição*
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input

  Element Should Contain  ${LABEL}  Descrição *
  Element Attribute Value Should Be  ${CAMPO}  name  descproc

Verificar o campo Data de Início*
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input[1]

  Element Should Contain  ${LABEL}  Data de Início *
  Element Attribute Value Should Be  ${CAMPO}  name  datainic

Verificar o campo Hora de Início*
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input

  Element Should Contain  ${LABEL}  Hora de Início *
  Element Attribute Value Should Be  ${CAMPO}  name  horainic

Verificar o campo Periodicidade
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/select

  Element Should Contain  ${LABEL}  Periodicidade
  Element Attribute Value Should Be  ${CAMPO}  name  periexecproc

Verificar o campo Intervalo de Execução*
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input

  Element Should Contain  ${LABEL}  Intervalo de Execução *
  Element Attribute Value Should Be  ${CAMPO}  name  inteexec

Verificar o campo Nível de Prioridade
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/select

  Element Should Contain  ${LABEL}  Nível de Prioridade
  Element Attribute Value Should Be  ${CAMPO}  name  niveprioproc

Verificar o campo Somente em Dias Úteis
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
  ${CHECKBOX}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/table/tbody/tr/td/input

  Element Should Contain  ${LABEL}  Somente em Dias Úteis
  Element Attribute Value Should Be  ${CHECKBOX}  name  execdiasutei[]

Verificar o campo Remetente
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/input

  Element Should Contain  ${LABEL}  Remetente
  Element Attribute Value Should Be  ${CAMPO}  name  mailreme

Verificar o campo Destinatários*
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/input

  Element Should Contain  ${LABEL}  Destinatários *
  Element Attribute Value Should Be  ${CAMPO}  name  destmail

Verificar o campo Assunto
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[2]/input

  Element Should Contain  ${LABEL}  Assunto
  Element Attribute Value Should Be  ${CAMPO}  name  assumail

Verificar o campo Renomear Arquivo
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/select

  Element Should Contain  ${LABEL}  Renomear Arquivo
  Element Attribute Value Should Be  ${CAMPO}  name  renoarquante

Verificar o campo Arquivo de Entrada
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[2]/input

  Element Should Contain  ${LABEL}  Arquivo de Entrada
  Element Attribute Value Should Be  ${CAMPO}  name  nomearquentr

Verificar o campo Layout
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[2]/select

  Element Should Contain  ${LABEL}  Layout
  Element Attribute Value Should Be  ${CAMPO}  name  codilayoimpo

Verificar o campo Data na parte de Última Execução
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  Element Should Contain  ${LABEL}  Data

Verificar o campo Hora na parte de Última Execução
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[3]
  Element Should Contain  ${LABEL}  Hora

Verificar o campo Data na parte de Próxima Execução
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  Element Should Contain  ${LABEL}  Data

Verificar o campo Hora na parte de Próxima Execução
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[3]
  Element Should Contain  ${LABEL}  Hora

# Exportação #
Verificar o campo Renomear Arquivo (Exportação)
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/select

  Element Should Contain  ${LABEL}  Renomear Arquivo
  Element Attribute Value Should Be  ${CAMPO}  name  renoarquante

Verificar o campo Arquivo de Saída
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/input

  Element Should Contain  ${LABEL}  Arquivo de Saída
  Element Attribute Value Should Be  ${CAMPO}  name  nomearqusaid

Verificar o campo Layout (Exportação)
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[2]/select

  Element Should Contain  ${LABEL}  Layout
  Element Attribute Value Should Be  ${CAMPO}  name  codilayoimpo

Verificar o campo Formato
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/select

  Element Should Contain  ${LABEL}  Formato
  Element Attribute Value Should Be  ${CAMPO}  name  tipoarquexpo


# EMAIL #
Verificar o campo Cópia Email
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[2]/input

  Element Should Contain  ${LABEL}  Cópia Email
  Element Attribute Value Should Be  ${CAMPO}  name  destcopimail

Verificar o campo Assunto (Email)
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/input

  Element Should Contain  ${LABEL}  Assunto
  Element Attribute Value Should Be  ${CAMPO}  name  assumail

Verificar o campo Endereço dos Arquivos anexos ao relatório
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[2]/input

  Element Should Contain  ${LABEL}  Endereço dos Arquivos anexos ao relatório
  Element Attribute Value Should Be  ${CAMPO}  name  arquanexmail

Verificar o campo [texto] do Email
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[2]/input

  Element Should Contain  ${LABEL}  [texto] do Email
  Element Attribute Value Should Be  ${CAMPO}  name  textmail


# ON-LINE #
Verificar o campo Tipo de Processo
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/select

  Element Should Contain  ${LABEL}  Tipo de Processo
  Element Attribute Value Should Be  ${CAMPO}  name  tipoprocon

Verificar o campo Procedure / Function
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/input

  Element Should Contain  ${LABEL}  Procedure / Fucntion
  Element Attribute Value Should Be  ${CAMPO}  name  comasql