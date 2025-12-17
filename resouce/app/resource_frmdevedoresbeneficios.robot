*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Benefício | Autorização de Devedores

# SCREEN
Acessar Tela Devedores de Benefícios (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Devedores de Benefícios (Atualização)
  ${APPNAME}  Set Variable  frmdevedoresbeneficios
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Devedores de Benefícios (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Devedores de Benefícios
  ${APPNAME}  Set Variable  frmdevedoresbeneficios
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON
#resource_btn.

#FIELD
Preencher o campo Colaborador "${COLAB}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COLAB}

Preencher o campo Data Marcação "${DATA}"
  Input Text  xpath=//*[@name="datamarc"][@type="text"]  ${DATA}

Preencher o campo Hora Marcação "${HORA}"
  Input Text  xpath=//*[@name="horamarc"][@type="text"]  ${HORA}

Selecionar uma opção no campo Planta "${PLANTA}"
  Select from list by label  xpath=//*[@name="codiplan"]  ${PLANTA}

Selecionar uma opção no campo Codin "${CODIN}"
  Select from list by label  xpath=//*[@name="codicole"]  ${CODIN}
  sleep  1s
  Click Element  xpath=//*[@id="id_label_horamarc"]
Selecionar uma opção no campo Código Benefício "${BENEFICIO}"
  Select from list by label  xpath=//*[@name="codibene"]  ${BENEFICIO}
  sleep  1s
  Click Element  xpath=//*[@id="id_label_horamarc"]

Selecionar uma opção no campo Motivo "${MOTIVO}"
  Select from list by label  xpath=//*[@name="motilistdeve"]  ${MOTIVO}
  sleep  1s
  Click Element  xpath=//*[@id="id_label_horamarc"]

#VERIFY

E verificar o campo Colaborador
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Colaborador 
	Element Attribute Value Should Be  ${CAMPO}  name  idcolab

E verificar o campo Empresa  
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]

	
	Element Should Contain  ${LABEL}  Empresa


E verificar o campo Tipo Colaborador   
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]

	
	Element Should Contain  ${LABEL}  Tipo Colaborador


E verificar o campo Matricula   
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]

	
	Element Should Contain  ${LABEL}  Matricula
 

E verificar o campo Nome  
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]

	
	Element Should Contain  ${LABEL}  Nome


E verificar o campo Data Marcação 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Data Marcação 
	Element Attribute Value Should Be  ${CAMPO}  name  datamarc 

E verificar o campo Hora Marcação
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}  Hora Marcação 
	Element Attribute Value Should Be  ${CAMPO}  name  horamarc

E verificar o campo Planta
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/select
	
	Element Should Contain  ${LABEL}  Planta 
	Element Attribute Value Should Be  ${CAMPO}  name  codiplan

E verificar o campo Codin 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/select
	
	Element Should Contain  ${LABEL}  Codin 
	Element Attribute Value Should Be  ${CAMPO}  name  codicole

E verificar o campo Código Benefício 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[2]/select
	
	Element Should Contain  ${LABEL}  Código Benefício 
	Element Attribute Value Should Be  ${CAMPO}  name  codibene

E verificar o campo Motivo
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/select
	
	Element Should Contain  ${LABEL}  Motivo 
	Element Attribute Value Should Be  ${CAMPO}  name  motilistdeve

E verificar o campo Data Consumo 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Data Consumo
	Element Attribute Value Should Be  ${CAMPO}  name  dataconsbene

E verificar o campo Hora Consumo 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[2]/input
	
	Element Should Contain  ${LABEL}  Hora Consumo
	Element Attribute Value Should Be  ${CAMPO}  name  horaconsbene
