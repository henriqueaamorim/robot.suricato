*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Reclamações

# SCREEN
Acessar Tela Reclamações (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Reclamações (Atualização)
  ${APPNAME}     Set Variable  frmreclamacoes
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Reclamações (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Reclamações (Inclusão)
  ${APPNAME}     Set Variable  frmreclamacoes
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

Clicar No Botão Buscar Dados Externos Para Código do Condutor
  ${ELEMENT}  Set Variable  id=cap_idcodicond

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Veículo
  ${ELEMENT}  Set Variable  id=cap_idveic

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD
Preencher o campo Veículo "${VEICULO}"
  Input Text  xpath=//*[@name="idveic"][@type="text"]  ${VEICULO}
  #Necessário clicar fora para validar a inserção 
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Data do Ocorrido "${DATA}"
  Input Text  xpath=//*[@name="dataocor"][@type="text"]  ${DATA}

Preencher o campo Hora do Ocorrido "${HORA}"
  Input Text  xpath=//*[@name="horaocor"][@type="text"]  ${HORA}

Preencher o campo Código do Condutor "${CODIGO}"
  Input Text  xpath=//*[@name="idcodicond"][@type="text"]  ${CODIGO}
  #Necessário clicar fora para validar a inserção 
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Descrição da Reclamação "${RECLAMACAO}"
  Input Text  xpath=//*[@name="idcodicond"][@type="text"]  ${RECLAMACAO}

Preencher o campo Nome do Reclamante "${RECLAMANTE}"
  Input Text  xpath=//*[@name="nomerecl"][@type="text"]  ${RECLAMANTE}

Preencher o campo Telefone do Reclamante "${TELEFONE}"
  Input Text  xpath=//*[@name="numetelerecl"][@type="text"]  ${TELEFONE}



#VERIFY

Verificar a label Veículo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Veículo *

Verificar a label Data da Reclamação *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}   Data da Reclamação *

Verificar a label Hora da Reclamação *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}   Hora da Reclamação *

Verificar o campo Data do Ocorrido
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data do Ocorrido
 	Element Attribute Value Should Be  ${CAMPO}   name   dataocor

Verificar o campo Hora do Ocorrido
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Hora do Ocorrido
 	Element Attribute Value Should Be  ${CAMPO}   name   horaocor

Verificar o campo Código do Condutor *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Código do Condutor *
 	Element Attribute Value Should Be  ${CAMPO}   name   idcodicond

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo de Pessoa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	Element Should Contain  ${LABEL}   Tipo de Pessoa

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	Element Should Contain  ${LABEL}   Nome

Verificar o campo Descrição da Reclamação
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[11]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[11]/td[2]/textarea
	
	Element Should Contain  ${LABEL}   Descrição da Reclamação
 	Element Attribute Value Should Be  ${CAMPO}   name   descrecousua

Verificar o campo Nome do Reclamante
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[12]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[12]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Nome do Reclamante
 	Element Attribute Value Should Be  ${CAMPO}   name   nomerecl

Verificar o campo Telefone do Reclamante
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[13]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[13]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Telefone do Reclamante
 	Element Attribute Value Should Be  ${CAMPO}   name   numetelerecl


Verificar o campo Veículo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Veículo *
 	Element Attribute Value Should Be  ${CAMPO}   name   idveic

Verificar o campo Data da Reclamação *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data da Reclamação *
 	Element Attribute Value Should Be  ${CAMPO}   name   datarecoalar

Verificar o campo Hora da Reclamação *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Hora da Reclamação *
 	Element Attribute Value Should Be  ${CAMPO}   name   horarecoalar