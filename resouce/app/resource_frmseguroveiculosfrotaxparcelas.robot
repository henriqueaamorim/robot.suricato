*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cadastro

# SCREEN
Acessar Tela Seguros de Veículos - Parcelas
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Seguros de Veículos - Parcelas
  ${APPNAME}     Set Variable  frmseguroveiculosfrotaxparcelas
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "nmsc_iframe_frmseguroveiculosfrotaxparcelas_2"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Seguros de Veículos - Parcelas - Inclusão
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Seguros de Veículos - Parcelas
  ${APPNAME}     Set Variable  frmseguroveiculosfrotaxparcelas
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "nmsc_iframe_frmseguroveiculosfrotaxparcelas_2"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"




#BUTTON
#resource_btn.


#FIELD
Preencher o campo Vencimento "${VENCIMENTO}"
  Input Text  xpath=//*[@name="datavenc1"][@type="text"]  ${VENCIMENTO}

Preencher o campo Valor "${VALOR}"
  Input Text  xpath=//*[@name="valosegu1"][@type="text"]  ${VALOR}

Selecionar uma opção no campo Situação "${SITUACAO}"
  Select from list by label  xpath=//*[@name="situsegu1"]  ${SITUACAO}


#VERIFY

Verificar a label SEQ
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   SEQ

Verificar a label Vencimento
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[3]
	Element Should Contain  ${LABEL}   Vencimento

Verificar a label Valor
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[4]
	Element Should Contain  ${LABEL}   Valor

Verificar a label Situação
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[5]
	Element Should Contain  ${LABEL}   Situação



#VERIFY (Inclusão)

Verificar o campo Vencimento
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[3]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[3]/input[1]
	
	Element Should Contain  ${LABEL}   Vencimento
 	Element Attribute Value Should Be  ${CAMPO}   name   datavenc1

Verificar o campo Valor
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[4]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[4]/input
	
	Element Should Contain  ${LABEL}   Valor
 	Element Attribute Value Should Be  ${CAMPO}   name   valosegu1

Verificar o campo Situação
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[5]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[5]/select
	
	Element Should Contain  ${LABEL}   Situação
 	Element Attribute Value Should Be  ${CAMPO}   name   situsegu1
