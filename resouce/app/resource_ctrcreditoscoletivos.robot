*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Coletivo

# SCREEN
Acessar Tela Créditos de Acesso Coletivos (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Créditos de Acesso Coletivos (Atualização)
  ${APPNAME}  Set Variable  ctrcreditoscoletivos
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#VERIFY

E verificar o campo Data Inicial: 
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input[1]
	
	Element Should Contain  ${LABEL}  Data Inicial:
	Element Attribute Value Should Be  ${CAMPO}  name  datini

E verificar o campo Data Final: 
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input[1]
	
	Element Should Contain  ${LABEL}  Data Final:
	Element Attribute Value Should Be  ${CAMPO}  name  datfim

E verificar o campo Hora Inicial:  
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Hora Inicial:
	Element Attribute Value Should Be  ${CAMPO}  name  horini

E verificar o campo Hora Final: 
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Hora Final:
	Element Attribute Value Should Be  ${CAMPO}  name  horfim

E verificar o campo Quantidade de Créditos:  
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Quantidade de Créditos:
	Element Attribute Value Should Be  ${CAMPO}  name  qtdcre

E verificar o campo Excluir créditos do período 
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Excluir créditos do período
	Element Attribute Value Should Be  ${CAMPO}  name  exccredper[]

#FIELD

Preencher o campo Data Inicial "${DATA}"
	Input Text  xpath=//*[@name="datini"][@type="text"]  ${DATA}

Preencher o campo Data Final "${DATA}"
	Input Text  xpath=//*[@name="datfim"][@type="text"]  ${DATA}

Preencher o campo Hora Inicial "${HORA}"
	Input Text  xpath=//*[@name="horini"][@type="text"]  ${HORA}

Preencher o campo Hora Final "${HORA}"
	Input Text  xpath=//*[@name="horfim"][@type="text"]  ${HORA}

Preencher o campo Quantidade de Créditos "${CREDITO}"
	Input Text  xpath=//*[@name="qtdcre"][@type="text"]  ${CREDITO}

Selecionar a opção Excluir créditos do período
	Click Element  xpath=//*[@name="exccredper[]"]