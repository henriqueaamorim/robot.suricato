*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | Cadastro de Grupo de REP

# SCREEN
Acessar Tela Cadastro de Grupo de REP
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"
      ${SCREENNAME}  Set Variable  Grupo de REP    
  ELSE
      ${SCREENNAME}  Set Variable  Cadastro de Grupo de REP
  END
  ${APPNAME}  Set Variable  frmGrupoREP
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON


  
#FIELD
Preencher o campo Nome "${NOME}"
  Input Text    xpath=//*[@name="gruprepnome"][@type="text"]    ${NOME}

Selecionar uma opção no campo Plantas
  Select From List By Label    xpath=//*[@name="selplantas_orig"]
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/input[2]

Selecionar uma opção no campo Codins
  Select From List By Label    xpath=//*[@name="selcodins_orig"]
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[3]/td[2]/table/tbody/tr/td[2]/input[2]

Preencher o campo Número do CPF "${CPF}"
  Input Text    xpath=//*[@name="numecpf"][@type="text"]    ${CPF}

Selecionar uma opção no campo Carga-Tipo de Tecnologia "${CARGA}"
  Select From List By Label    xpath=//*[@name="logifisi"][@type="text"]  ${CARGA}

Preencher o campo Email Gerente "${EMAIL_GERENTE}"
  Input Text    xpath=//*[@name="emailgeren"][@type="text"]    ${EMAIL_GERENTE}

Preencher o campo Email Operador "${EMAIL_OPERADOR}"
  Input Text    xpath=//*[@name="emailopera"][@type="text"]   ${EMAIL_OPERADOR}

Preencher o campo Email Outros "${EMAIL_OUTROS}"
  Input Text    xpath=//*[@name="emailoutro"][@type="text"]    ${EMAIL_OUTROS}



#VERIFY 
#/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]

E verificar o campo Nome  
  ${LABEL}  Set Variable  xpath=//*[@id="id_sc_field_gruprepnome"]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}   Nome  
	Element Attribute Value Should Be  ${CAMPO}  name  gruprepnome 

E verificar o campo Plantas 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/select
	${CAMPO2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[3]/select

	Element Should Contain  ${LABEL}  Plantas 
	Element Attribute Value Should Be  ${CAMPO}   name  selplantas_orig
  Element Attribute Value Should Be  ${CAMPO2}  name  selplantas_dest  
            
E verificar o campo Codins     
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/select
	${CAMPO2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[3]/select
  
	Element Should Contain  ${LABEL}  Codins 
	Element Attribute Value Should Be  ${CAMPO}  name  selcodins_orig
  Element Attribute Value Should Be  ${CAMPO2}  name  selcodins_dest

E verificar o campo Número do CPF 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}  Número do CPF
	Element Attribute Value Should Be  ${CAMPO}  name  numecpf

E verificar o campo Carga - Tipo de Tecnologia 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/select
	
	Element Should Contain  ${LABEL}  Carga - Tipo de Tecnologia 
	Element Attribute Value Should Be  ${CAMPO}  name  logifisi 

E verificar o campo Email Gerente     
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}  Email Gerente 
	Element Attribute Value Should Be  ${CAMPO}  name   

E verificar o campo Email Operador 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}  Email Operador
	Element Attribute Value Should Be  ${CAMPO}  name  emailopera 

E verificar o campo Email Outros
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input
	
	Element Should Contain  ${LABEL}  Email Outros
	Element Attribute Value Should Be  ${CAMPO}  name  emailoutro