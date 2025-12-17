*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Autorização | Baixa de Autorização

# SCREEN
Acessar Tela Baixa de Autorização de Entrada (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Baixa de Autorização de Entrada
  ${APPNAME}     Set Variable  frmbaixaautorizacaoentrada
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#BUTTON
#resource_btn.



#VERIFY

Verificar a label Código do Colaborador *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Código do Colaborador

Verificar a label Empresa *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo do Colaborador *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label Matrícula *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Nome

Verificar a label Data de Entrada *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Data de Entrada

Verificar a label Hora de Entrada *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Hora de Entrada

Verificar a label Número do Crachá
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]/span
	Element Should Contain  ${LABEL}   Número do Crachá

Verificar a label Permissão
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]/span
	Element Should Contain  ${LABEL}   Permissão

Verificar a label Data de Validade
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]/span
	Element Should Contain  ${LABEL}   Data de Validade

Verificar a label Hora de Validade
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]/span
	Element Should Contain  ${LABEL}   Hora de Validade

Verificar o campo Data de Saída
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/table/tbody/tr/td[1]/span[2]/span[1]/input

	Element Should Contain  ${LABEL}   Data de Saída
 	Element Attribute Value Should Be  ${CAMPO}   name   datasaid

Verificar o campo Hora de Saída
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Hora de Saída
 	Element Attribute Value Should Be  ${CAMPO}   name   horasaid

Verificar o campo Observações
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[2]/table/tbody/tr/td[1]/span[2]/textarea

	Element Should Contain  ${LABEL}   Observações
 	Element Attribute Value Should Be  ${CAMPO}   name   obseautoentr

#FIELD
Preencher o campo Data de Saída "${DATA}"
	Input Text  xpath=//*[@name="datasaid"][@type="text"]  ${DATA}
	
Preencher o campo Hora de Saída "${HORA}"
	Input Text  xpath=//*[@name="horasaid"][@type="text"]  ${HORA}
	
Preencher o campo Observações "${OBS}"
	Input Text  xpath=//*[@name="obseautoentr"]  ${OBS}
	