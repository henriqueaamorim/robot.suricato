*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

# SCREEN
Acessar Tela Cadastro de Responsáveis por Veículo
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Responsáveis por Veículo
  ${APPNAME}  Set Variable  frmHistoricoResponsaveis
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmHistoricoResponsaveis_2"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Cód. Colaborador
  ${ELEMENT}  Set Variable  id=cap_idcolab1

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window




#VERIFY

Verificar a label SEQ
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   SEQ

Verificar a label Cód. Veículo	
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[3]
	Element Should Contain  ${LABEL}   Cód. Veículo	

Verificar a label Marca
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[4]
	Element Should Contain  ${LABEL}   Marca

Verificar a label Modelo
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[5]
	Element Should Contain  ${LABEL}   Modelo

Verificar a label Placa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[6]
	Element Should Contain  ${LABEL}   Placa

Verificar o campo Cód. Colaborador
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[7]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[7]/input[1]

	Element Should Contain  ${LABEL}   Cód. Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolab1

Verificar a label Baixa Crachá
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[8]
	Element Should Contain  ${LABEL}   Baixa Crachá

Verificar o campo Data Início
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[9]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[9]/input[1]

	Element Should Contain  ${LABEL}   Data Início
 	Element Attribute Value Should Be  ${CAMPO}   name   datainic1

Verificar o campo Hora de Início
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[10]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[10]/input

	Element Should Contain  ${LABEL}   Hora de Início
 	Element Attribute Value Should Be  ${CAMPO}   name   horainic1

Verificar o campo Data Final
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[11]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[11]/input[1]

	Element Should Contain  ${LABEL}   Data Final
 	Element Attribute Value Should Be  ${CAMPO}   name   datafim1

Verificar o campo Hora Final
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[12]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[12]/input

	Element Should Contain  ${LABEL}   Hora Final
 	Element Attribute Value Should Be  ${CAMPO}   name   horafina1


#FIELD
Preencher o campo Cód. Colaborador "${COD}"
	Input Text  xpath=//*[@name="idcolab1"][@type="text"]  ${COD}
	#Necessário clicar fora para validar a inserção do registro
	Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[7]

Selecionar a opção Baixa Crachá 
	Click Element  xpath=//*[@name="baixacolab1[]"]

Preencher o campo Data Início "${DATA}"
	Input Text  xpath=//*[@name="datainic1"][@type="text"]  ${DATA}

Preencher o campo Hora de Início "${HORA}"
	Input Text  xpath=//*[@name="horainic1"][@type="text"]  ${HORA}

Preencher o campo Data Final "${DATA}"
	Input Text  xpath=//*[@name="datafim1"][@type="text"]  ${DATA}

Preencher o campo Hora Final "${HORA}"
	Input Text  xpath=//*[@name="horafina1"][@type="text"]  ${HORA}
