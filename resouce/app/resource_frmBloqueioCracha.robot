*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio

# SCREEN
Acessar Tela Bloqueio de Crachá (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Bloqueio de Crachá
  ${APPNAME}  Set Variable  frmBloqueioCracha
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Bloqueio de Crachá (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Bloqueio de Crachá (Atualização)
  ${APPNAME}  Set Variable  frmBloqueioCracha
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Crachá "${CRACHA}"
  Input Text    xpath=//*[@name="icard"][@type="text"]    ${CRACHA}

Selecionar uma opção no campo Número Físico "${NUM}"
	Select From List By Label  xpath=//*[@name="numefisicrac"]  ${NUM}

Preencher o campo Data do Bloqueio "${DATA}"
	Input Text  xpath=//*[@name="databloq"][@type="text"]  ${DATA}
	
Preencher o campo Hora do Bloqueio "${HORA}"
	Input Text  xpath=//*[@name="horabloq"][@type="text"]  ${HORA}
	
Preencher o campo Motivo "${MOTIVO}"
  Input Text    xpath=//*[@name="codimoti"][@type="text"]   ${MOTIVO}

Preencher o campo Observações "${OBSERVACOES}"
  Input Text    xpath=//*[@name="obsebloqlibe"]    ${OBSERVACOES}

#VERIFY

E verificar o campo Crachá         
 	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Crachá 
	Element Attribute Value Should Be  ${CAMPO}  name  icard

E verificar o campo Número Físico 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}  Número Físico 
	Element Attribute Value Should Be  ${CAMPO}  name  numefisicrac

E verificar o campo Data do Bloqueio 
 	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Data do Bloqueio  
	Element Attribute Value Should Be  ${CAMPO}  name  databloq

E verificar o campo Hora do Bloqueio 
 	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}  Hora do Bloqueio  
	Element Attribute Value Should Be  ${CAMPO}  name  horabloq

E verificar o campo Motivo 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Motivo  
	Element Attribute Value Should Be  ${CAMPO}  name  codimoti

E verificar o campo Observações 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/textarea
	
	Element Should Contain  ${LABEL}  Observações 
	Element Attribute Value Should Be  ${CAMPO}  name  obsebloqlibe 