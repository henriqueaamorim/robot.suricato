*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Desbloqueio


# SCREEN
Acessar Tela Desbloqueio do Colaborador (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Desbloqueio do Colaborador (Atualização)
  ${APPNAME}     Set Variable  frmdesbloqueiocolaborador
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#FIELD
Preencher o campo Código do Autorizador "${COD}"
	Input Text  xpath=//*[@name="idcolaautolibe"][@type="text"]  ${COD}
	#Necessário clicar fora para validar a inserção do registro
	Click Element  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[2]/td[1]

Preencher o campo Observação Bloqueio/Liberação "${OBS}"
	Input Text  xpath=//*[@name="obsebloqlibe"]  ${OBS}

Preencher o campo Data de Liberação "${DATA}"
	Input Text  xpath=//*[@name="datalibe"][@type="text"]  ${DATA}

Preencher o campo Hora de Liberação "${HORA}"
	Input Text  xpath=//*[@name="horalibe"][@type="text"]  ${HORA}


#VERIFY

Verificar a label Código do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Código do Colaborador

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	Element Should Contain  ${LABEL}   Nome

Verificar a label Data de Bloqueio do Acesso
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[1]/span
	Element Should Contain  ${LABEL}   Data de Bloqueio do Acesso

Verificar a label Hora do Bloqueio do Acesso
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[2]/span
	Element Should Contain  ${LABEL}   Hora de Bloqueio do Acesso

Verificar a label Código do Motivo do Bloqueio
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Código do Motivo do Bloqueio

Verificar o campo Código do Autorizador
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]

	Element Should Contain  ${LABEL}   Código do Autorizador
 	Element Attribute Value Should Be  ${CHECKBOX}   name   idcolaautolibe

Verificar a label Empresa do Autorizador da Liberação
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}   Empresa do Autorizador da Liberação

Verificar a label Tipo de Pessoa Autorizadora
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	Element Should Contain  ${LABEL}   Tipo de Pessoa Autorizadora

Verificar a label Matrícula do Autorizador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	Element Should Contain  ${LABEL}   Matrícula do Autorizador

Verificar a label Nome do Autorizador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	Element Should Contain  ${LABEL}   Nome do Autorizador

Verificar o campo Observação Bloqueio/Liberação
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/textarea

	Element Should Contain  ${LABEL}   Observação Bloqueio/Liberação
 	Element Attribute Value Should Be  ${CHECKBOX}   name  obsebloqlibe  

Verificar o campo Data de Liberação
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input[1]

	Element Should Contain  ${LABEL}   Data de Liberação
 	Element Attribute Value Should Be  ${CHECKBOX}   name   datalibe

Verificar o campo Hora de Liberação
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/input

	Element Should Contain  ${LABEL}   Hora de Liberação
 	Element Attribute Value Should Be  ${CHECKBOX}   name   horalibe
