*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Candidato | Saída


# SCREEN
Acessar Tela Saída de Candidato (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Saída de Candidato
  ${APPNAME}     Set Variable  frmsaidaimprensa
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#FIELD
Preencher o campo Data da Saída "${DATA}"
	Input Text  xpath=//*[@name="datasaid"][@type="text"]  ${DATA}

Preencher o campo Hora da Saida "${HORA}"
	Input Text  xpath=//*[@name="horasaid"][@type="text"]  ${HORA}

#VERIFY

Verificar a label Crachá
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span
	Element Should Contain  ${LABEL}   Crachá

Verificar a label Candidato
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Candidato

Verificar a label Data da Liberação
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	Element Should Contain  ${LABEL}   Data da Liberação

Verificar a label Hora da Liberação
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
	Element Should Contain  ${LABEL}   Hora da Liberação

Verificar a label Código de Liberação
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
	Element Should Contain  ${LABEL}   Código de Liberação

Verificar a label Data da Validade
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span
	Element Should Contain  ${LABEL}   Data da Validade

Verificar a label Hora da Validade
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]/span
	Element Should Contain  ${LABEL}   Hora da Validade

Verificar a label Grupo de Acesso
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]/span
	Element Should Contain  ${LABEL}   Grupo de Acesso

Verificar o campo Data da Saída *
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]/span[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/table/tbody/tr/td[1]/span[2]/span/input

	Element Should Contain  ${LABEL}   Data da Saída
 	Element Attribute Value Should Be  ${CAMPO}   name   datasaid

Verificar o campo Hora da Saida * 
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]/span[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Hora da Saida
 	Element Attribute Value Should Be  ${CAMPO}   name   horasaid
