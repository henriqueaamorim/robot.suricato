*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Ocorrência | Tipos de Ocorrência

# SCREEN
Acessar Tela Tipo de Ocorrência (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Tipo de Ocorrência (Inclusão)
  ${APPNAME}     Set Variable  frmTipoOcorrencia
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Tipo de Ocorrência (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Tipo de Ocorrência (Atualização)
  ${APPNAME}     Set Variable  frmTipoOcorrencia
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.


#FIELD
Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="desctipoocor"][@type="text"]  ${DESCRICAO}

Clicar na opção "Sim" no campo Enviar E-mail
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[2]/table/tbody/tr/td/input

Preencher o campo Endereço de E-mail "${EMAIL}"  
  Input Text  xpath=//*[@name="mailtipoocor"][@type="text"]  ${EMAIL}

Preencher o campo Endereço de Cópia de E-mail "${COPIA}"
  Input Text  xpath=//*[@name="copimailocor"][@type="text"]  ${COPIA}

Preencher o campo [texto] de E-mail "${TEXTO}"
  Input Text  xpath=//*[@name="textmail"][@type="text"]  ${TEXTO}


#VERIFY 

E verificar o campo Descrição 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}  Descrição 
	Element Attribute Value Should Be  ${CAMPO}  name  desctipoocor

E verificar o campo Enviar E-mail 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Enviar E-mail  
	Element Attribute Value Should Be  ${CAMPO}  name  envimail[]

E verificar o campo Endereço de E-mail 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}  Endereço de E-mail 
	Element Attribute Value Should Be  ${CAMPO}  name  mailtipoocor

E verificar o campo Endereço de Cópia de E-mail
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}  Endereço de Cópia de E-mail
	Element Attribute Value Should Be  ${CAMPO}  name  copimailocor

E verificar o campo [texto] de E-mail 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/textarea
	
	Element Should Contain  ${LABEL}  [texto] de E-mail 
	Element Attribute Value Should Be  ${CAMPO}  name  textmail