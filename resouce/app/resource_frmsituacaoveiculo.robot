*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Cadastro | Situações

# SCREEN
Acessar Tela Situações para Veículos (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Situações para Veículos (Atualização)
  ${APPNAME}     Set Variable  frmsituacaoveiculo
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Situações para Veículos (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Situações para Veículos (Inclusão)
  ${APPNAME}     Set Variable  frmsituacaoveiculo
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
Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="descsitu"][@type="text"]  ${DESCRICAO}

Selecionar um item no campo Tipo "${TIPO}"
  Select from list by label  xpath=//*[@name="tipositu"]  ${TIPO}

#VERIFY

Verificar a label Situação do Veículo
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Situação do Veículo

Verificar o campo Descrição *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}   Descrição *
 	Element Attribute Value Should Be  ${CAMPO}   name   descsitu

Verificar o campo Tipo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/select
	
	Element Should Contain  ${LABEL}   Tipo *
 	Element Attribute Value Should Be  ${CAMPO}   name   tipositu

Verificar o campo Bloqueia Movimentação *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Bloqueia Movimentação *
 	Element Attribute Value Should Be  ${CHECKBOX}   name   bloqmoviveic



#VERIFY (Inclusão)

Verificar o campo Descrição * (Inclusão)
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}   Descrição *
 	Element Attribute Value Should Be  ${CAMPO}   name   descsitu

Verificar o campo Tipo * (Inclusão)
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Tipo *
 	Element Attribute Value Should Be  ${CAMPO}   name   tipositu

Verificar o campo Bloqueia Movimentação * (Inclusão)
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Bloqueia Movimentação *
 	Element Attribute Value Should Be  ${CAMPO}   name   bloqmoviveic
