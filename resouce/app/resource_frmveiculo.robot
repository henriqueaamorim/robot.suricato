*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Veículo | Cadastro

# SCREEN
Acessar Tela Cadastro Veículos - Atualização
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro Veículos - Atualização
  ${APPNAME}  Set Variable  frmveiculo
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Cadastro Veículos - Inclusão
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro Veículos - Inclusão
  ${APPNAME}  Set Variable  frmveiculo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  	${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
	ELSE
		${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
	END

  Mudar Frame Aplicação "mnu_iframe"
	
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Placa "${PLACA}"
  Input Text    xpath=//*[@name="placveic"][@type="text"]    ${PLACA}


Selecionar uma opção no campo UF Placa "${UF}"
  Select From List By Label    xpath=//*[@name="estaplac"]  ${UF}

Selecionar uma opção no campo Marca "${MARCA}"
  Select From List By Label    xpath=//*[@name="idmarcveic"]  ${MARCA}

Selecionar uma opção no campo Modelo "${MODELO}"
  Select From List By Label    xpath=//*[@name="idmodeveic"]  ${MODELO}

Selecionar uma opção no campo Cor "${COR}"
  Select From List By Label    xpath=//*[@name="corveic"]  ${COR}

Selecionar uma opção no campo Tipo Veículo "${VEICULO}"
  Select From List By Label    xpath=//*[@name="tipoveicdena"]  ${VEICULO}

Selecionar uma opção no campo Tipo de Combustível "${COMBUSTIVEL}"
  Select from list by label  xpath=//*[@name="tipocomb"]  ${COMBUSTIVEL}

Preencher o campo Data de Validade de Fumaça "${VALIDADE}"
  Input Text  xpath=//*[@name="datavalifumaca"][@type="text"]  ${VALIDADE}

Preencher o campo Observação "${OBSERVACAO}"
  Input Text  xpath=//*[@name="obseveic"][@type="text"]  ${OBSERVACAO}



#VERIFY

Verificar a label Placa *
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Placa *

Verificar a label UF Placa *
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}   UF Placa *

Verificar o campo Marca *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain  ${LABEL}   Marca *
 	Element Attribute Value Should Be  ${CAMPO}   name   idmarcveic

Verificar o campo Modelo *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain  ${LABEL}   Modelo *
 	Element Attribute Value Should Be  ${CAMPO}   name   idmodeveic

Verificar o campo Cor *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain  ${LABEL}   Cor *
 	Element Attribute Value Should Be  ${CAMPO}   name   corveic

Verificar o campo Tipo Veículo *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain  ${LABEL}   Tipo Veículo *
 	Element Attribute Value Should Be  ${CAMPO}   name   tipoveicdena

Verificar o campo Observação
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/table/tbody/tr/td[1]/span[2]/textarea

	Element Should Contain  ${LABEL}   Observação
 	Element Attribute Value Should Be  ${CAMPO}   name   obseveic

# VERIFY (Inclusão)
Verificar o campo Placa *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Placa *
 	Element Attribute Value Should Be  ${CAMPO}   name   placveic

Verificar o campo UF Placa *
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain  ${LABEL}   UF Placa *
 	Element Attribute Value Should Be  ${CAMPO}   name   estaplac