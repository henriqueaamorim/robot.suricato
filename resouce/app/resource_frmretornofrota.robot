*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Devolução


# SCREEN
Acessar Tela Devolução de Veículo - Alteração
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Devolução de Veículo - Alteração
  ${APPNAME}     Set Variable  frmretornofrota
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Mudar Frame Aplicação "mnu_iframe"
  
  Sleep  5s
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#FIELD
Preencher o campo Código do Vigiliante de Retorno "${COD}"
	Input Text  xpath=//*[@name="idvigireto"][@type="text"]  ${COD}
	#Necessário clicar fora para validar a inserção do registro
	Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[13]/td[1]

Preencher o campo Observação "${OBS}"
	Input Text  xpath=//*[@name="obsemovi"]  ${OBS}

Preencher o campo Data de Retorno "${DATA}"
	Input Text  xpath=//*[@name="datareto"][@type="text"]  ${DATA}

Preencher o campo Hora de Retorno "${HORA}"
	Input Text  xpath=//*[@name="horareto"][@type="text"]  ${HORA}

Preencher o campo Quilometragem de Retorno "${KM}"
	Input Text  xpath=//*[@name="quilveicreto"][@type="text"]  ${KM}

Selecionar uma opção no campo Combustível de Retorno "${COMBUSTIVEL}"
	Select From List By Label  xpath=//*[@name="combreto"]  ${COMBUSTIVEL}

Preencher o campo Portaria de Retorno "${PORTARIA}"
	Input Text  xpath=//*[@name="portretoveic"][@type="text"]  ${PORTARIA}




#VERIFY

Verificar a label Veículo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Veículo *

Verificar a label Portaria de Saída *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}   Portaria de Saída *

Verificar a label Código do Condutor *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}   Código do Condutor *

Verificar a label Empresa do Condutor
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	Element Should Contain  ${LABEL}   Empresa do Condutor

Verificar a label Tipo do Condutor
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	Element Should Contain  ${LABEL}   Tipo do Condutor

Verificar a label Matricula do Condutor
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	Element Should Contain  ${LABEL}   Matricula do Condutor

Verificar a label Nome do Condutor
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	Element Should Contain  ${LABEL}   Nome do Condutor

Verificar a label Código do Autorizador *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	Element Should Contain  ${LABEL}   Código do Autorizador *

Verificar a label Empresa do Autorizador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	Element Should Contain  ${LABEL}   Empresa do Autorizador

Verificar a label Tipo do Autorizador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	Element Should Contain  ${LABEL}   Tipo do Autorizador

Verificar a label Matricula do Autorizador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[11]/td[1]
	Element Should Contain  ${LABEL}   Matricula do Autorizador

Verificar a label Nome do Autorizador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[12]/td[1]
	Element Should Contain  ${LABEL}   Nome do Autorizador

Verificar o campo Código do Vigilante de Retorno
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[13]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[13]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Código do Vigiliante de Retorno
 	Element Attribute Value Should Be  ${CAMPO}   name   idvigireto

Verificar a label Empresa do Vigilante de Retorno
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[14]/td[1]
	Element Should Contain  ${LABEL}   Empresa do Vigilante de Retorno

Verificar a label Tipo do Vigilante de Retorno
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[15]/td[1]
	Element Should Contain  ${LABEL}   Tipo do Vigilante de Retorno

Verificar a label Matricula do Vigilante de Retorno
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[16]/td[1]
	Element Should Contain  ${LABEL}   Matricula do Vigilante de Retorno

Verificar a label Nome do Vigilante de Retorno
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[17]/td[1]
	Element Should Contain  ${LABEL}   Nome do Vigilante de Retorno

Verificar o campo Observação
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[18]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[18]/td[2]/textarea
	
	Element Should Contain  ${LABEL}   Observação
 	Element Attribute Value Should Be  ${CAMPO}   name   obsemovi

Verificar a label Data de Saída *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[19]/td[1]
	Element Should Contain  ${LABEL}   Data de Saída *

Verificar a label Hora de Saída *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[20]/td[1]
	Element Should Contain  ${LABEL}   Hora de Saída *

Verificar o campo Data de Retorno *
	${LABEL}    Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[21]/td[1]
	${CAMPO}    Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[21]/td[2]/input
	
	Element Should Contain  ${LABEL}   Data de Retorno *
 	Element Attribute Value Should Be  ${CAMPO}   name   datareto

Verificar o campo Hora de Retorno *
	${LABEL}    Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[22]/td[1]
	${CAMPO}    Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[22]/td[2]/input
	
	Element Should Contain  ${LABEL}   Hora de Retorno *
 	Element Attribute Value Should Be  ${CAMPO}   name   horareto

Verificar o campo Quilometragem de Retorno
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[23]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[23]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Quilometragem de Retorno
 	Element Attribute Value Should Be  ${CAMPO}   name   quilveicreto

Verificar o campo Combustível de Retorno *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[24]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[24]/td[2]/select
	
	Element Should Contain  ${LABEL}   Combustível de Retorno *
 	Element Attribute Value Should Be  ${CAMPO}   name   combreto

Verificar o campo Portaria de Retorno *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[25]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[25]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Portaria de Retorno *
 	Element Attribute Value Should Be  ${CAMPO}   name   portretoveic
