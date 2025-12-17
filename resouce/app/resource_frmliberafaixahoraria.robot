*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Liberação Faixa Horária | Individual

# SCREEN
Acessar Tela Liberação de Faixa Horária
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Liberação de Faixa Horária
  ${APPNAME}  Set Variable  frmliberafaixahoraria
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
Clicar No Botão Buscar Dados Externos Para Crachá
  ${ELEMENT}  Set Variable  id=cap_icard

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#VERIFY 
E verificar o campo Crachá
	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Crachá:  
	Element Attribute Value Should Be  ${CAMPO}  name  icard

E verificar o campo Faixa Horária de Trabalho
	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}  Faixa Horária de Trabalho:  

E verificar o campo Liberar Acesso
	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[2]/input
	
	Element Should Contain  ${LABEL}  Liberar Acesso:  
	Element Attribute Value Should Be  ${CAMPO}  name  horainic

E verificar o campo Até 
	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[3]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[4]/input
	
	Element Should Contain  ${LABEL}  Até  
	Element Attribute Value Should Be  ${CAMPO}  name  horafina

E verificar o campo Tipo do Crachá 
	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}  Tipo do Crachá:

E verificar o campo Titular
	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}  Titular:

#FIELD
Preencher o campo Crachá "${CRACHA}"
	Input Text  xpath=//*[@name="icard"][@type="text"]  ${CRACHA}
	#Neessário clicar fora para validar a inserção do registro
	Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Liberar Acesso "${LIBERAR}"
	Input Text  xpath=//*[@name="horainic"][@type="text"]  ${LIBERAR}

Preencher o campo Até "${ATE}"
	Input Text  xpath=//*[@name="horafina"][@type="text"]  ${ATE}
