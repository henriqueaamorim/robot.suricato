*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Autorização | Entrada

# SCREEN
Acessar Tela Autorização de Entrada (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Autorização de Entrada
  ${APPNAME}  Set Variable  frmentradaservidor
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  	${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
	ELSE
  	${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
	END

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Autorização de Entrada (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Autorização de Entrada (Atualização)
  ${APPNAME}  Set Variable  frmentradaservidor
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Crachá
  ${ELEMENT}  Set Variable  id=cap_icard

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD
Preencher o campo Código do Colaborador "${CODIGO}"
  Input Text    xpath=//*[@name="idcolab"][@type="text"]  ${CODIGO}
	#Necessário clicar fora para validar a inserção do registro
  Click Element    xpath=//*[@id="id_label_idcolab"]

Preencher o campo Crachá "${CRACHA}"
  Input Text    xpath=//*[@name="icard"][@type="text"]    ${CRACHA}
	#Necessário clicar fora para validar a inserção do registro
  Click Element    xpath=//*[@id="id_label_icard"]

Preencher o campo Grupo de Acesso "${GRUPO}"
  Input Text    xpath=//*[@name="codiperm"][@type="text"]    ${GRUPO}
	#Necessário clicar fora para validar a inserção do registro
  Click Element    xpath=//*[@id="id_label_codiperm"]

Preencher o campo Observações "${OBSERVACOES}" 
  Input Text    xpath=//*[@id="id_read_off_obseautoentr"]/textarea   ${OBSERVACOES}



#VERIFY

Verificar o campo Código do Colaborador *
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[1]/td[1]/span[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Código do Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolab

Verificar a label Empresa *
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[2]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo do Colaborador *
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[3]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label Matrícula *
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[4]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome *
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[5]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Nome

Verificar a label Data de Entrada *
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[6]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Data de Entrada

Verificar a label Hora de Entrada *
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[7]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Hora de Entrada

Verificar a label Dados Gerais
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Dados Gerais

Verificar o campo Crachá
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Crachá
 	Element Attribute Value Should Be  ${CAMPO}   name   icard

Verificar o campo Grupo de Acesso
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/span[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Grupo de Acesso
 	Element Attribute Value Should Be  ${CAMPO}   name   codiperm

Verificar o campo Data de Validade
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/span[1]/input

	Element Should Contain  ${LABEL}   Data de Validade
 	Element Attribute Value Should Be  ${CAMPO}   name   datavali

Verificar o campo Hora de Validade
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[3]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[4]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Hora de Validade
 	Element Attribute Value Should Be  ${CAMPO}   name   horavali

Verificar o campo Observações
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/textarea

	Element Should Contain  ${LABEL}   Observações
 	Element Attribute Value Should Be  ${CAMPO}   name   obseautoentr
