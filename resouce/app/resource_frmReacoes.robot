*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Alarme | Reação de Alarme

# SCREEN
Acessar Tela Reações (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Reação de Alarme
  ELSE
    ${SCREENNAME}  Set Variable  Reações (Inclusão)
  END
  ${APPNAME}  Set Variable  frmReacoes
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Reações (Atualização)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Reação de Alarme
  ELSE
    ${SCREENNAME}  Set Variable  Reações (Atualização)
  END
  ${APPNAME}  Set Variable  frmReacoes
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#BUTTON



#FIELD
Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="descreac"][@type="text"]  ${DESCRICAO}

Preencher o campo Email "${EMAIL}"
  Input Text  xpath=//*[@name="mailtipoocor"][@type="text"]  ${EMAIL}

Preencher o campo Texto do Email "${TXT}"
  Input Text  xpath=//*[@name="textmail"][@type="text"]  ${TXT}

Preencher o campo Número SMS "${SMS}"
  Input Text  xpath=//*[@name="numesms"][@type="text"]  ${SMS}

Selecionar um item no campo Código do Lote de Comandos "${COD}"
  Select from list by label  xpath=//*[@name="codiloteaces"]  ${COD}

Preencher o campo Intervalo de Reação (min) "${INTERVALO}"
  Input Text  xpath=//*[@name="intereac"][@type="text"]  ${INTERVALO}

Selecionar um item no campo Auto Informar "${INFORMAR}"
  Select from list by label  xpath=//*[@name="autoinfo"]  ${INFORMAR}

Preencher o campo Sinal de Alarme Ativo "${SINAL_ATIVO}"
  Input Text  xpath=//*[@name="codisindativ"][@type="text"]  ${SINAL_ATIVO}

Preencher o campo Sinal de Alarme Inativo "${SINAL_INATIVO}"
  Input Text  xpath=//*[@name="codisindinat"][@type="text"]  ${SINAL_INATIVO}


#VERIFY

E verificar o campo Descrição
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}  Descrição 
	Element Attribute Value Should Be  ${CAMPO}  name  descreac

E verificar o campo Email   
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}  Email
	Element Attribute Value Should Be  ${CAMPO}  name  mailtipoocor

E verificar o campo [texto] do Email 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/textarea
	
	Element Should Contain  ${LABEL}  [texto] do Email 
	Element Attribute Value Should Be  ${CAMPO}  name  textmail

E verificar o campo Número SMS 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}  Número SMS
	Element Attribute Value Should Be  ${CAMPO}  name  numesms

E verificar o campo Código do Lote de Comandos 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/select
	
	Element Should Contain  ${LABEL}  Código do Lote de Comandos 
	Element Attribute Value Should Be  ${CAMPO}  name  codiloteaces

E verificar o campo Intervalo de Reação (min)
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}  Intervalo de Reação (min) 
	Element Attribute Value Should Be  ${CAMPO}  name  intereac

E verificar o campo Auto Informar
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/select
	
	Element Should Contain  ${LABEL}  Auto Informar 
	Element Attribute Value Should Be  ${CAMPO}  name  autoinfo

E verificar o campo Sinal de Alarme Ativo 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input
	
	Element Should Contain  ${LABEL}  Sinal de Alarme Ativo
	Element Attribute Value Should Be  ${CAMPO}  name  codisindativ

E verificar o campo Sinal de Alarme Inativo
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/input
	
	Element Should Contain  ${LABEL}  Sinal de Alarme Inativo
	Element Attribute Value Should Be  ${CAMPO}  name  codisindinat
 