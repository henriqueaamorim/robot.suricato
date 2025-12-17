*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Envio de Mensagem | Coletiva

# SCREEN
Acessar Tela Mensagens Coletivas
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Mensagens Coletivas
  ${APPNAME}  Set Variable  ctrmensagemcoletiva
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.


#VERIFY

E verificar o campo Data de Início da Mensagem
	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Data de Início da Mensagem: 
	Element Attribute Value Should Be  ${CAMPO}  name  datini

E verificar o campo Hora de Início da Mensagem
	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}  Hora de Início da Mensagem:  
	Element Attribute Value Should Be  ${CAMPO}  name  horini

E verificar o campo Data de Término da Mensagem
	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Data de Término da Mensagem:  
	Element Attribute Value Should Be  ${CAMPO}  name  datfim

E verificar o campo Hora de Término da Mensagem
	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}   Hora de Término da Mensagem: 
	Element Attribute Value Should Be  ${CAMPO}  name  horfim

E verificar o campo Quantidade de Visualizações
	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input
	
	Element Should Contain  ${LABEL}  Quantidade de Visualizações: 
	Element Attribute Value Should Be  ${CAMPO}  name  qtdmsg 

E verificar o campo Mensagem
	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}  Mensagem:   
	Element Attribute Value Should Be  ${CAMPO}  name  msgacc

#FIELD
Preencher o campo Data de Início da Mensagem "${DATA}"
	Input Text  xpath=//*[@name="datini"][@type="text"]  ${DATA}

Preencher o campo Hora de Início da Mensagem "${HORA}"
	Input Text  xpath=//*[@name="horini"][@type="text"]  ${HORA}

Preencher o campo Data de Término da Mensagem "${DATA}"
	Input Text  xpath=//*[@name="datfim"][@type="text"]  ${DATA}

Preencher o campo Hora de Término da Mensagem "${HORA}"
	Input Text  xpath=//*[@name="horfim"][@type="text"]  ${HORA}

Preencher o campo Quantidade de Visualizações "${QUANT}"
	Input Text  xpath=//*[@name="qtdmsg"][@type="text"]  ${QUANT}
	
Preencher o campo Mensagem "${MENSAGEM}"
	Input Text  xpath=//*[@name="msgacc"][@type="text"]  ${MENSAGEM}
	