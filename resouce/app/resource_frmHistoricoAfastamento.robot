*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Afastamento

# SCREEN

Acessar Tela Histórico de Afastamento (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmHistoricoAfastamento
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Histórico de Afastamento
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Histórico de Afastamento (Inclusão)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Histórico de Afastamento (Edição)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmHistoricoAfastamento
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Histórico de Afastamento
    ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON

Clicar No Botão Buscar Dados Externos Para Situação
  ${ELEMENT}  Set Variable  id=cap_situafas

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window


#FIELD
Preencher o campo Código do Colaborador "${COD}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COD}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]

Preencher o campo Data do Afastamento "${DATA}"
  Input Text  xpath=//*[@name="dataafas"][@type="text"]  ${DATA}

Preencher o campo Hora do Afastamento "${HORA}"
  Input Text  xpath=//input[@name="horaafassc9bugfixed"][@type="text"]   ${HORA}

Preencher o campo Situação "${SITUACAO}"
  Input Text  xpath=//*[@name="situafas"][@type="text"]  ${SITUACAO}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]

Preencher o campo Dias Justificados "${DIAS}"
  Input Text  xpath=//*[@name="diasjust"][@type="text"]  ${DIAS}

Preencher o campo Data do Término "${DATA}"
  Input Text  xpath=//*[@name="dataterm"][@type="text"]  ${DATA}

Preencher o campo Hora do Término "${HORA}"
  Input Text  xpath=//*[@name="horaterm"][@type="text"]  ${HORA}

Preencher o campo Previsão do Término "${TERMINO}"
  Input Text  xpath=//*[@name="datatermafas"][@type="text"]  ${TERMINO}

Preencher o campo Observação "${OBSERVACAO}"
  Input Text  xpath=//*[@name="obseafas"][@type="text"]  ${OBSERVACAO}




#VERIFY 

E verificar o campo: Chave externa
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_external_key']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_external_key']
	Element Should Contain  ${LABEL}  Chave externa
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_external_key

E verificar o campo Código do Colaborador 
  ${LABEL}  Set Variable  xpath=//span[@id='id_label_idcolab']
	${CAMPO}  Set Variable  xpath=//input[@name='idcolab']
	Element Should Contain  ${LABEL}  Código do Colaborador 
	Element Attribute Value Should Be  ${CAMPO}  name  idcolab

E verificar o campo Empresa    
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumemp']
	${CAMPO}  Set Variable  xpath=//td[@class='scFormDataFontOdd css_padnumemp_line']
	Element Should Contain  ${LABEL}   Empresa
	Element Attribute Value Should Be  ${CAMPO}   class   scFormDataFontOdd css_padnumemp_line
	
E verificar o campo Tipo      
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padtipcol']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padtipcol']
	Element Should Contain  ${LABEL}   Tipo
	Element Attribute Value Should Be  ${CAMPO}   id   hidden_field_data_padtipcol

E verificar o campo Matrícula 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumcad']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padtipcol']
	Element Should Contain  ${LABEL}   Matrícula
	Element Attribute Value Should Be  ${CAMPO}   id   hidden_field_data_padtipcol

E verificar o campo Nome       
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnome']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnome']
	Element Should Contain  ${LABEL}   Nome
	Element Attribute Value Should Be  ${CAMPO}   id   hidden_field_data_padnome

E verificar o campo Crachá   
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padicard']
	${CAMPO}  Set Variable  xpath=//td[@class='scFormDataFontOdd css_padicard_line']
	Element Should Contain  ${LABEL}    Crachá
	Element Attribute Value Should Be  ${CAMPO}   class   scFormDataFontOdd css_padicard_line

E verificar o campo Data Afastamento 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_dataafas']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_dataafas']
	Element Should Contain  ${LABEL}   Data do Afastamento 
	Element Attribute Value Should Be  ${CAMPO}  name  dataafas

E verificar o campo Hora do Afastamendo 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_horaafassc9bugfixed']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_horaafassc9bugfixed']
	Element Should Contain  ${LABEL}   Hora do Afastamento 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_horaafassc9bugfixed

E verificar o campo Situação 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_situafas']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_situafas']
	Element Should Contain  ${LABEL}   Situação 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_situafas

E verificar o campo Dias Justificados 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_diasjust']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_diasjust']
	Element Should Contain  ${LABEL}   Dias Justificados
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_diasjust 

E verificar o campo Data do Término
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_dataterm']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_dataterm']
	Element Should Contain  ${LABEL}   Data do Término
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_dataterm

E verificar o campo Hora do Término 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_horaterm']
	${CAMPO}  Set Variable  xpath=//input[@name='horaterm']
	Element Should Contain  ${LABEL}   Hora do Término
	Element Attribute Value Should Be  ${CAMPO}  name  horaterm

E verificar o campo Previsão do Término 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_datatermafas']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_datatermafas']
	Element Should Contain  ${LABEL}   Previsão do Término
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_datatermafas

E verificar o campo Observação
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_obseafas']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_obseafas']
	Element Should Contain  ${LABEL}   Observação
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_obseafas

#Validar Alert
Validar alert de sucesso (Inclusão)
  ${NOME}  Set Variable  Incluir o Registro  
  ${ELEMENT}   Set Variable  xpath=//span[contains(text(),'Incluir')] | //a[@id='sc_b_ins_t']
  ${ALERT}     Set Variable  xpath=//*[contains(text(), "Novo registro inserido com sucesso!")]

  Sleep  2s
  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}
  Sleep  2s
  Wait Until Element is Visible  ${ALERT}
  Alert Should Be Present  ${ALERT}
  Sleep  3s
  Element Should Contain   ${ALERT}   Novo registro inserido com sucesso!
  #${ALERT}=    Get Alert Message
  #Should Be Equal    ${ALERT}    Novo registro inserido com sucesso! 
