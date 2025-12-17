*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Usuários | Usuário

# SCREEN
Acessar Tela Cadastro de Usuários (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Usuários (Atualização)
  ${APPNAME}  Set Variable  frmusuario
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Cadastro de Usuários (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Usuários (Inclusão)
  ${APPNAME}  Set Variable  frmusuario
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON
#resource_btn.

#FIELD
Preencher o campo Login "${LOGIN}"
  Input Text  xpath=//*[@name="logiusua"][@type="text"]  ${LOGIN}

Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="nomeusua"][@type="text"]  ${NOME}

Preencher o campo Número do CPF "${CPF}"
  Input Text  xpath=//*[@name="numecpf"][@type="text"]  ${CPF}

Preencher o campo Expirar Senha em "${SENHA}"
  Input Text  xpath=//*[@name="dataexpi"][@type="text"]  ${SENHA}

Preencher o campo Bloquear Conta em "${BLOQUEIO}"
  Input Text  xpath=//*[@name="databloq"][@type="text"]  ${BLOQUEIO}

Preencher o campo Colaborador "${COLABORADOR}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COLABORADOR}

Preencher o campo Senha do Usuário Logado "${USUARIO}"
  Click Element  xpath=//*[@id="hidden_bloco_1"]/tbody/tr/td[1]/input
  Input Text    xpath=//*[@id="hidden_bloco_1"]/tbody/tr/td[1]/input    ${USUARIO}


#VERIFY
Verificar o campo Login:*
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input

  Element Should Contain  ${LABEL}  Login: *
  Element Attribute Value Should Be  ${CAMPO}  name  logiusua

Verificar o campo Nome:*
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input

  Element Should Contain  ${LABEL}  Nome: *
  Element Attribute Value Should Be  ${CAMPO}  name  nomeusua

Verificar o campo Número do CPF
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input

  Element Should Contain  ${LABEL}  Número do CPF
  Element Attribute Value Should Be  ${CAMPO}  name  numecpf

Verificar o campo Expirar Senha em
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input[1]

  Element Should Contain  ${LABEL}  Expirar Senha em
  Element Attribute Value Should Be  ${CAMPO}  name  dataexpi

Verificar o campo Senha Alterada em
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input

  Element Should Contain  ${LABEL}  Senha Alterada em
  Element Attribute Value Should Be  ${CAMPO}  name  datasenh

Verificar o campo Bloquear Conta em
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input[1]

  Element Should Contain  ${LABEL}  Bloquear Conta em
  Element Attribute Value Should Be  ${CAMPO}  name  databloq

Verificar o campo Status Conta
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/input

  Element Should Contain  ${LABEL}  Status Conta
  Element Attribute Value Should Be  ${CAMPO}  name  contbloq

Verificar o campo Idioma*
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/select

  Element Should Contain  ${LABEL}  Idioma *
  Element Attribute Value Should Be  ${CAMPO}  name  ididiom

Verificar o campo Colaborador
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[2]/input[1]

  Element Should Contain  ${LABEL}  Colaborador
  Element Attribute Value Should Be  ${CAMPO}  name  idcolab

Verificar o campo Nome Colaborador
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/input

  Element Should Contain  ${LABEL}  Nome Colaborador
  Element Attribute Value Should Be  ${CAMPO}  name  nomepess

Verificar o campo Senha do Usuário Logado
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[1]/span
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[1]/input

  Element Should Contain  ${LABEL}  Senha do Usuário Logado
  Element Attribute Value Should Be  ${CAMPO}  name  txtsenhauser

Verificar o campo Senha
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input

  Element Should Contain  ${LABEL}  Senha
  Element Attribute Value Should Be  ${CAMPO}  name  edsenha

Verificar o campo Confirmar Senha
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/input

  Element Should Contain  ${LABEL}  Confirmar Senha
  Element Attribute Value Should Be  ${CAMPO}  name  edconfirma


# INCLUSÃO # 
Verificar o campo Bloquear Conta em (Inclusão)
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input[1]

  Element Should Contain  ${LABEL}  Bloquear Conta em
  Element Attribute Value Should Be  ${CAMPO}  name  databloq

Verificar o campo Idioma* (Inclusão)
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/select

  Element Should Contain  ${LABEL}  Idioma *
  Element Attribute Value Should Be  ${CAMPO}  name  ididiom

Verificar o campo Colaborador (Inclusão)
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/input[1]

  Element Should Contain  ${LABEL}  Colaborador
  Element Attribute Value Should Be  ${CAMPO}  name  idcolab

Verificar o campo Nome Colaborador (Inclusão)
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/input

  Element Should Contain  ${LABEL}  Nome Colaborador
  Element Attribute Value Should Be  ${CAMPO}  name  nomepess



