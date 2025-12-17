*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Processo | Layout de Relatório

# SCREEN
Acessar Tela Modelo de Relatório para Processo Automático - Cadastro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Modelo de Relatório para Processo Automático
  ${APPNAME}  Set Variable  frmReport
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Modelo de Relatório para Processo Automático - Alteração
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Modelo de Relatório para Processo Automático
  ${APPNAME}  Set Variable  frmReport
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="name"][@type="text"]  ${NOME}

Selecionar uma opção no campo Tamanho "${TAMANHO}"
  Select from list by label  xpath=//*[@name="pagesize"]  ${TAMANHO}

Selecionar uma opção no campo Orientação "${ORIENTACAO}"
  Select from list by label  xpath=//*[@name="orientation"]  ${ORIENTACAO}

Preencher o campo Margem Esquerda "${MARGEM}"
  Input Text  xpath=//*[@name="marginleft"][@type="text"]  ${MARGEM}

Preencher o campo Margem Direita "${MARGEM}"
  Input Text  xpath=//*[@name="marginright"][@type="text"]  ${MARGEM}

Preencher o campo Margem Superior "${MARGEM}"
  Input Text  xpath=//*[@name="margintop"][@type="text"]  ${MARGEM}

Preencher o campo Margem Inferior "${MARGEM}"
  Input Text  xpath=//*[@name="marginbottom"][@type="text"]  ${MARGEM}

Preencher o campo Instrução SQL SELECT "${INSTRUCAO}"
  Input Text  xpath=//*[@name="query"][@type="text"]  ${INSTRUCAO}

Preencher o campo Registro por Página "${REGISTRO}"
  Input Text  xpath=//*[@name="recordbypage"][@type="text"]  ${REGISTRO}

Preencher o campo Título "${TITULO}"
  Input Text  xpath=//*[@name="titlename"][@type="text"]  ${TITULO}

Preencher o campo Tamanho da Fonte na área Cabeçalho "${FONTE}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${FONTE}

Preencher o campo Tamanho da Fonte na área Corpo "${FONTE}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${FONTE}

#VERIFY
Verificar o campo Nome*
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input

  Element Should Contain  ${LABEL}  Nome *
  Element Attribute Value Should Be  ${CAMPO}  name  name

Verificar o campo Tamanho*
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select

  Element Should Contain  ${LABEL}  Tamanho *
  Element Attribute Value Should Be  ${CAMPO}  name  pagesize

Verificar o campo Orientação*
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/select

  Element Should Contain  ${LABEL}  Orientação *
  Element Attribute Value Should Be  ${CAMPO}  name  orientation

Verificar o campo Margem Esquerda*
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input

  Element Should Contain  ${LABEL}  Margem Esquerda *
  Element Attribute Value Should Be  ${CAMPO}  name  marginleft

Verificar o campo Margem Direita*
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input

  Element Should Contain  ${LABEL}  Margem Direita *
  Element Attribute Value Should Be  ${CAMPO}  name  marginright

Verificar o campo Margem Superior*
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input

  Element Should Contain  ${LABEL}  Margem Superior *
  Element Attribute Value Should Be  ${CAMPO}  name  margintop

Verificar o campo Margem Inferior*
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input

  Element Should Contain  ${LABEL}  Margem Inferior *
  Element Attribute Value Should Be  ${CAMPO}  name  marginbottom

Verificar o campo Instrução SQL SELECT*
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/textarea

  Element Should Contain  ${LABEL}  Instrução SQL SELECT *
  Element Attribute Value Should Be  ${CAMPO}  name  query

Verificar o campo Registro por Página*
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/input

  Element Should Contain  ${LABEL}  Registro por Página *
  Element Attribute Value Should Be  ${CAMPO}  name  recordbypage

Verificar o campo Título* na área Título
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input

  Element Should Contain  ${LABEL}  Título *
  Element Attribute Value Should Be  ${CAMPO}  name  titlename

Verificar o campo Nome da Fonte* na área Título
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/select

  Element Should Contain  ${LABEL}  Fonte *
  Element Attribute Value Should Be  ${CAMPO}  name  titlefontname

Verificar o campo Tamanho da Fonte* na área Título
  ${LABEL}  Set Variable  xpath=//html/body/form[5]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input

  Element Should Contain  ${LABEL}  Tamanho da Fonte *
  Element Attribute Value Should Be  ${CAMPO}  name  titlefontsize

Verificar o campo Cor da Fonte* na área Título
  ${LABEL}  Set Variable  xpath=//html/body/form[5]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/select

  Element Should Contain  ${LABEL}  Cor da Fonte *
  Element Attribute Value Should Be  ${CAMPO}  name  titlefontcolor

Verificar o campo Alinhamento* na área Título
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/select

  Element Should Contain  ${LABEL}  Alinhamento *
  Element Attribute Value Should Be  ${CAMPO}  name  titlehorizontalalignment

Verificar o campo Nome da Fonte* na área Cabeçalho
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select

  Element Should Contain  ${LABEL}  Nome da Fonte *
  Element Attribute Value Should Be  ${CAMPO}  name  headerfontname

Verificar o campo Tamanho da Fonte* na área Cabeçalho
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input

  Element Should Contain  ${LABEL}  Tamanho da Fonte *
  Element Attribute Value Should Be  ${CAMPO}  name  headerfontsize

Verificar o campo Cor da Fonte* na área Cabeçalho
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select

  Element Should Contain  ${LABEL}  Cor da Fonte *
  Element Attribute Value Should Be  ${CAMPO}  name  headerfontcolor

Verificar o campo Nome da Fonte* na área Corpo
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select

  Element Should Contain  ${LABEL}  Nome da Fonte *
  Element Attribute Value Should Be  ${CAMPO}  name  bodyfontname

Verificar o campo Tamanho da Fonte* na área Corpo
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input

  Element Should Contain  ${LABEL}  Tamanho da Fonte *
  Element Attribute Value Should Be  ${CAMPO}  name  bodyfontsize

Verificar o campo Cor da Fonte* na área Corpo
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select

  Element Should Contain  ${LABEL}  Cor da Fonte *
  Element Attribute Value Should Be  ${CAMPO}  name  bodyfontcolor

Verificar a opção Escolher Arquivo na área Logo
  ${BOTAO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input
  Element Attribute Value Should Be  ${BOTAO}  name  customlogo
