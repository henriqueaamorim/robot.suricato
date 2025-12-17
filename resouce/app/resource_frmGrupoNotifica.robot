*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Alarme | Notificações

# SCREEN
Acessar Tela Cadastro Notificações Alarme REP
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro Notificações Alarme REP
  ${APPNAME}  Set Variable  frmGrupoNotifica
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON



#FIELD
Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="nome"][@type="text"]  ${DESCRICAO}

Preencher o campo E-mail "${EMAIL}"
  Input Text  xpath=//*[@name="email"][@type="text"]  ${EMAIL}

Preencher o campo Texto do E-mail "${TXT_EMAIL}"
  Input Text  xpath=//*[@name="textoemail"][@type="text"]  ${TXT_EMAIL}

Clicar na opção "Sim" no campo Desativar
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[5]/td[2]/table/tbody/tr/td/input

  
  
#VERIFY 

E verificar o campo Descrição 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}  Descrição 
	Element Attribute Value Should Be  ${CAMPO}  name  nome

E verificar o campo E-mail 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/textarea
	
	Element Should Contain  ${LABEL}  E-mail 
	Element Attribute Value Should Be  ${CAMPO}  name  email

E verificar o campo Texto do e-mail  
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/textarea
	
	Element Should Contain  ${LABEL}  Texto do e-mail
	Element Attribute Value Should Be  ${CAMPO}  name  textoemail

E verificar o campo Desativar
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Desativar 
	Element Attribute Value Should Be  ${CAMPO}  name  desativa[]