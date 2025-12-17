*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Veículos

# SCREEN
Acessar Tela Veículos Frota (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Veículos Frota (Atualização)
  ${APPNAME}     Set Variable  frmveiculofrota
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Veículos Frota (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Veículos Frota (Inclusão)
  ${APPNAME}     Set Variable  frmveiculofrota
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  ELSE
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
   
  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Contrato
  ${ELEMENT}  Set Variable  id=cap_idcont

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD
Preencher o campo Veículo "${VEICULO}"
  Input Text  xpath=//*[@name="idveic"][@type="text"]  ${VEICULO}

Preencher o campo Data Inicial "${DATA}"
  Input Text  xpath=//*[@name="datainic"][@type="text"]  ${DATA}

Preencher o campo Data Final "${DATA}"
  Input Text  xpath=//*[@name="datafina"][@type="text"]  ${DATA}

Selecionar uma opção no campo Proprietário "${PROPRIETARIO}"
  Select from list by label  xpath=//*[@name="emprpropveic"]  ${PROPRIETARIO}

Preencher o campo Contrato "${CONTRATO}"
  Input Text  xpath=//*[@name="idcont"][@type="text"]  ${CONTRATO}

Preencher o campo Responsável "${RESPONSAVEL}"
  Input Text  xpath=//*[@name="idcolaresp"][@type="text"]  ${RESPONSAVEL}
  #Necessário clicar fora para salvar o registro
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[11]/td[1]


#VERIFY

Verificar a label Veículo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Veículo *

Verificar a label Data Inicial *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}   Data Inicial *

Verificar o campo Data Final
	${LABEL}    Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}    Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data Final
 	Element Attribute Value Should Be  ${CAMPO}   name   datafina

Verificar o campo Proprietário
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select
	
	Element Should Contain  ${LABEL}   Proprietário
 	Element Attribute Value Should Be  ${CAMPO}   name   emprpropveic

Verificar o campo Veículo Locado
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Veículo Locado
 	Element Attribute Value Should Be  ${CAMPO}   name   veicloca

Verificar o campo Contrato
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Contrato
 	Element Attribute Value Should Be  ${CAMPO}   name   idcont

Verificar o campo Responsável
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Responsável
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolaresp

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	Element Should Contain  ${LABEL}   Tipo

Verificar a label Matricula
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	Element Should Contain  ${LABEL}   Matricula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[11]/td[1]
	Element Should Contain  ${LABEL}   Nome

Verificar o campo Veículo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Veículo *
 	Element Attribute Value Should Be  ${CAMPO}   name   idveic

Verificar o campo Data Inicial *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data Inicial *
 	Element Attribute Value Should Be  ${CAMPO}   name   datainic