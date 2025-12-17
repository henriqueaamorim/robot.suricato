*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Envio de Mensagem | Individual

# SCREEN
Acessar Tela Mensagem de Acesso (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Mensagem de Acesso (Atualização)
  ${APPNAME}     Set Variable  frmmensagemvisitante
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmmensagemvisitante_2"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Sleep  2s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Mensagem de Acesso (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Mensagem de Acesso (Inclusão)
  ${APPNAME}  Set Variable  frmmensagemvisitante
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmmensagemvisitante_2"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.


#FIELD
Preencher o campo Código do Visitante "${COD}"
  Input Text  xpath=//*[@name="idvisi"][@type="text"]  ${COD}
  # Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]

Preencher o campo Data de Término da Mensagem "${DATA}"
  Input Text  xpath=//*[@name="datafina"][@type="text"]  ${DATA}
  # Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]

Preencher o campo Hora de Término da Mensagem "${HORA}"
  Input Text  xpath=//*[@name="horafina"][@type="text"]  ${HORA}
  # Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]
  
Preencher o campo Quantidade de Visualização "${QUANT}"
  Input Text  xpath=//*[@name="quanmenscole"][@type="text"]  ${QUANT}

Preencher o campo Mensagem "${MENSAGEM}"
  Input Text  xpath=//*[@name="menscole"][@type="text"]  ${MENSAGEM}



#VERIFY 

E verificar o campo Código do Visitante 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Código do Visitante 
	Element Attribute Value Should Be  ${CAMPO}  name  idvisi

E verificar o campo Tipo de Documento 
 	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	
	
	Element Should Contain  ${LABEL}  Tipo de Documento
	

E verificar o campo Número do Documento   
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	
	
	Element Should Contain  ${LABEL}  Número do Documento 
	   

E verificar o campo Nome         
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	
	
	Element Should Contain  ${LABEL}  Nome
	       

E verificar o campo Data de Início da Mensagem       
 	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Data de Início da Mensagem  
	Element Attribute Value Should Be  ${CAMPO}  name  datainic      

E verificar o campo Hora de Início da Mensagem  
 	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}  Hora de Início da Mensagem 
	Element Attribute Value Should Be  ${CAMPO}  name  horainic

E verificar o campo Data de Término da Mensagem 
 	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Data de Término da  Mensagem 
	Element Attribute Value Should Be  ${CAMPO}  name  datafina

E verificar o campo Hora de Término da Mensagem       
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input
	
	Element Should Contain  ${LABEL}  Hora de Término da Mensagem 
	Element Attribute Value Should Be  ${CAMPO}  name  horafina   

E verificar o campo Quantidade de Visualizações 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}  Quantidade de Visualização  
	Element Attribute Value Should Be  ${CAMPO}  name  quanmenscole

E verificar o campo Mensagem 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}  Mensagem  
	Element Attribute Value Should Be  ${CAMPO}  name  menscole