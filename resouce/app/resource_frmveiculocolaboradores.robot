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
Acessar Tela Veículo de Colaborador - Cadastro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Veículo de Colaborador - Cadastro
  ${APPNAME}  Set Variable  frmveiculocolaboradores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  ELSE
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmveiculocolaboradores_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




Acessar Tela Veículo de Colaborador - Inclusão
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Veículo de Colaborador - Cadastro
  ${APPNAME}  Set Variable  frmveiculocolaboradores
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmveiculocolaboradores_1"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"




#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Grupo de Acesso
  ${ELEMENT}  Set Variable  id=cap_grupoveicu

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Crachá do Veículo
  ${ELEMENT}  Set Variable  id=cap_icardv

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD
Preencher o campo Cód. Veiculo "${COD}"
  Input Text  xpath=//*[@name="idveic"][@type="text"]  ${COD}
  #Necessário clicar fora para validar a inserção
  Click Element    xpath=//*[@id="hidden_bloco_1"]/tbody/tr[1]/td[1]

Preencher o campo Crachá do Veículo "${CRACHA}"
  Input Text  xpath=//*[@name="icardv"][@type="text"]  ${CRACHA}
  #Necessário clicar fora para validar a inserção
  Click Element    xpath=//*[@id="hidden_bloco_1"]/tbody/tr[1]/td[1]

Preencher o campo Data Inicio "${DATA}"
  Input Text  xpath=//*[@name="datainic"][@type="text"]  ${DATA}

Preencher o campo Data Final "${DATA}"
  Input Text  xpath=//*[@name="datafim"][@type="text"]  ${DATA}

Preencher o campo Grupo de Acesso "${GRUPO}"
  Input Text  xpath=//*[@name="grupoveicu"][@type="text"]  ${GRUPO}
  #Necessário clicar fora para validar a inserção
  Click Element    xpath=//*[@id="hidden_bloco_1"]/tbody/tr[1]/td[1]

Preencher o campo Hora de Início "${HORA}"
  Input Text  xpath=//*[@name="horainic"][@type="text"]  ${HORA}

Preencher o campo Hora Final "${HORA}"
  Input Text  xpath=//*[@name="horafina"][@type="text"]  ${HORA}



#VERIFY

Verificar a label Cód. Veículo
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Cód. Veículo

Verificar a label Placa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	Element Should Contain  ${LABEL}   Placa

Verificar a label Modelo
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
	Element Should Contain  ${LABEL}   Modelo

Verificar a label Cor
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
	Element Should Contain  ${LABEL}   Cor

Verificar a label Marca
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/span
	Element Should Contain  ${LABEL}   Marca

Verificar a label UF Placa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/span
	Element Should Contain  ${LABEL}   UF PLaca

Verificar a label Tipo
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/span
	Element Should Contain  ${LABEL}   Tipo

Verificar o campo Crachá do Veículo
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]

	Element Should Contain  ${LABEL}   Crachá do Veículo
 	Element Attribute Value Should Be  ${CAMPO}   name   icardv

Verificar a label Data Início
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}   Data Início

Verificar o campo Data Final
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input[1]

	Element Should Contain  ${LABEL}   Data Final
 	Element Attribute Value Should Be  ${CAMPO}   name   datafim

Verificar o campo Grupo de Acesso
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input[1]

	Element Should Contain  ${LABEL}   Grupo de Acesso
 	Element Attribute Value Should Be  ${CAMPO}   name   grupoveicu

Verificar o campo Baixa Crachá
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td[3]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td[4]/table/tbody/tr/td/input

	Element Should Contain  ${LABEL}   Baixa Crachá
 	Element Attribute Value Should Be  ${CAMPO}   name   baixaauto[]

Verificar a label Hora de Início
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[3]
	Element Should Contain  ${LABEL}   Hora de Início

Verificar o campo Hora Final
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[3]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[4]/input

	Element Should Contain  ${LABEL}   Hora Final
 	Element Attribute Value Should Be  ${CAMPO}   name   horafina




# VERIFY (Inclusão)
Verificar o campo Cód. Veículo
  ${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input[1]

	Element Should Contain  ${LABEL}   Cód. Veículo
 	Element Attribute Value Should Be  ${CAMPO}   name   idveic

Verificar o campo Hora de Início
  ${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[3]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/input

	Element Should Contain  ${LABEL}   Hora de Início
 	Element Attribute Value Should Be  ${CAMPO}   name   horainic

Verificar o campo Data Início
  ${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	Element Should Contain  ${LABEL}   Data Início
 	Element Attribute Value Should Be  ${CAMPO}   name   datainic