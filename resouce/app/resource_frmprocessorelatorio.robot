*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Processo | Relatório

# SCREEN
Acessar Tela Processo de Relatório (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo de Relatório (Atualização)
  ${APPNAME}  Set Variable  frmprocessorelatorio
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Processo de Relatório (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo de Relatório (Inclusão)
  ${APPNAME}  Set Variable  frmprocessorelatorio
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.

#FIELD
Preencher o campo Descrição do Processo "${DESCRICAO}"
  Input Text  xpath=//*[@name="descproc"][@type="text"]  ${DESCRICAO}

Selecionar uma opção no campo Periodicidade "${PERIODO}"
  Select from list by label  xpath=//*[@name="periexecproc"]  ${PERIODO}

Preencher o campo Intervalo de Execução "${INTERVALO}"
  Input Text  xpath=//*[@name="inteexec"][@type="text"]  ${INTERVALO}

Selecionar uma opção no campo Nivel de Prioridade "${PRIORIDADE}"
  Select from list by label  xpath=//*[@name="niveprioproc"]  ${PRIORIDADE}

Preencher o campo Data da Validade "${VALIDADE}"
  Input Text  xpath=//*[@name="datavali"][@type="text"]  ${VALIDADE}

Selecionar uma opção no campo Modelo de Relatório "${MODELO}"
  Select from list by label  xpath=//*[@name="report"]  ${MODELO}

Preencher o campo E-mail do Responsável "${EMAIL}"
  Input Text  xpath=//*[@name="mailresp"][@type="text"]  ${EMAIL}

Preencher o campo Destinatários "${DESTINATARIOS}"
  Input Text  xpath=//*[@name="destmail"][@type="text"]  ${DESTINATARIOS}

Preencher o campo Assunto "${ASSUNTO}"
  Input Text  xpath=//*[@name="assumail"][@type="text"]  ${ASSUNTO}

Preencher o campo Texto do E-mail "${EMAIL}"
  Input Text  xpath=//*[@name="textmail"][@type="text"]  ${EMAIL}

Selecionar uma opção "${OPCAO}"
  Select from list by label  xpath=//*[@name="idcolab"]  ${OPCAO}


#VERIFY
Verificar o campo Descrição do Processo*
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input

  Element Should Contain  ${LABEL}  Descrição do Processo *
  Element Attribute Value Should Be  ${CAMPO}  name  descproc

Verificar o campo Data de Início*
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]

  Element Should Contain  ${LABEL}  Data de Início *
  Element Attribute Value Should Be  ${CAMPO}  name  datainic

Verificar o campo Hora de Início*
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input

  Element Should Contain  ${LABEL}  Hora de Início *
  Element Attribute Value Should Be  ${CAMPO}  name  horainic

Verificar o campo Periodicidade*
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select

  Element Should Contain  ${LABEL}  Periodicidade *
  Element Attribute Value Should Be  ${CAMPO}  name  periexecproc

Verificar o campo Intervalo de Execução
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input

  Element Should Contain  ${LABEL}  Intervalo de Execução
  Element Attribute Value Should Be  ${CAMPO}  name  inteexec

Verificar o campo Nivel de Prioridade*
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/select

  Element Should Contain  ${LABEL}  Nivel de Prioridade *
  Element Attribute Value Should Be  ${CAMPO}  name  niveprioproc

Verificar o campo Somente em Dias Úteis 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
  ${CHECKBOX}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td/input

  Element Should Contain  ${LABEL}  Somente em Dias Úteis 
  Element Attribute Value Should Be  ${CHECKBOX}  name  execdiasutei[]

Verificar o campo Data da Validade
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input[1]

  Element Should Contain  ${LABEL}  Data da Validade
  Element Attribute Value Should Be  ${CAMPO}  name  datavali

Verificar o campo Modelo de Relatório*
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/select

  Element Should Contain  ${LABEL}  Modelo de Relatório *
  Element Attribute Value Should Be  ${CAMPO}  name  report

Verificar o campo E-mail do Responsável
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/input

  Element Should Contain  ${LABEL}  E-mail do Responsável
  Element Attribute Value Should Be  ${CAMPO}  name  mailresp

Verificar o campo Destinatários
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[2]/textarea

  Element Should Contain  ${LABEL}  Destinatários
  Element Attribute Value Should Be  ${CAMPO}  name  destmail

Verificar o campo Cópia E-mail
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/textarea

  Element Should Contain  ${LABEL}  Cópia E-mail
  Element Attribute Value Should Be  ${CAMPO}  name  destcopimail

Verificar o campo Assunto
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[2]/input

  Element Should Contain  ${LABEL}  Assunto
  Element Attribute Value Should Be  ${CAMPO}  name  assumail

Verificar o campo Texto do E-mail
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[2]/textarea

  Element Should Contain  ${LABEL}  Texto do E-mail
  Element Attribute Value Should Be  ${CAMPO}  name  textmail