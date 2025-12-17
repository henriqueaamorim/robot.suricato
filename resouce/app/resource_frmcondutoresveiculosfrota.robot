*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Condutores

# SCREEN
Acessar Tela Condutores de Veículos da Frota (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Condutores de Veículos da Frota (Atualização)
  ${APPNAME}     Set Variable  frmcondutoresveiculosfrota
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Condutores de Veículos da Frota (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Condutores de Veículos da Frota (Inclusão)
  ${APPNAME}     Set Variable  frmcondutoresveiculosfrota
	
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

#FIELD
Preencher o campo Condutor "${CONDUTOR}"
  Input Text  xpath=//*[@name="idcodicond"][@type="text"]  ${CONDUTOR}
  #Necessário clicar fora para salvar o registro
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]
  
Preencher o campo Carteira Habilitação "${CARTEIRA}"
  Input Text  xpath=//*[@name="numecarthabi"][@type="text"]  ${CARTEIRA}

Preencher o campo Categoria Habilitação "${CATEGORIA}"
  Input Text  xpath=//*[@name="catecarthabi"][@type="text"]  ${CATEGORIA}

Preencher o campo Data Habilitação "${DATA}"
  Input Text  xpath=//*[@name="datacarthab"][@type="text"]  ${DATA}

Preencher o campo Data Vencimento Habilitação "${DATA}"
  Input Text  xpath=//*[@name="venccarthab"][@type="text"]  ${DATA}



#VERIFY

Verificar a label Condutor *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Condutor *

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label Matricula
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	Element Should Contain  ${LABEL}   Matricula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	Element Should Contain  ${LABEL}   Nome

Verificar o campo Carteira Habilitação *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}   Carteira Habilitação *
 	Element Attribute Value Should Be  ${CAMPO}   name   numecarthabi

Verificar o campo Categoria Habilitação *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}   Categoria Habilitação *
 	Element Attribute Value Should Be  ${CAMPO}   name   catecarthabi

Verificar o campo Data Habilitação *
	${LABEL}    Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}    Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data Habilitação *
 	Element Attribute Value Should Be  ${CAMPO}   name   datacarthab

Verificar o campo Data Vencimento Habilitação *
	${LABEL}    Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CAMPO}    Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[9]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data Vencimento Habilitação *
 	Element Attribute Value Should Be  ${CAMPO}   name   venccarthab


Verificar o campo Condutor *
	${LABEL}    Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}    Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]

	Element Should Contain  ${LABEL}   Condutor *
 	Element Attribute Value Should Be  ${CAMPO}   name   idcodicond