*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Alarme | Sinal de Alarme

# SCREEN
Acessar Tela Sinais de Alarme (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Sinal de Alarme
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  ELSE
    ${SCREENNAME}  Set Variable  Sinais de Alarme (Inclusão)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmSinaisAlarme
  

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Sinais de Alarme (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Sinais de Alarme (Atualização)
  ${APPNAME}  Set Variable  frmSinaisAlarme
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="descsinaalar"][@type="text"]  ${DESCRICAO}

Preencher o campo Prioridade "${PRIORIDADE}"
  Input Text  xpath=//*[@name="priosinaalar"][@type="text"]  ${PRIORIDADE}

Clicar na opção "Sim" no campo Exibir no Monitoramento
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[4]/td[2]/table/tbody/tr/td/input

Clicar na opção "Sim" no campo Tocar Arquivo de Som
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[7]/td[2]/table/tbody/tr/td/input

Clicar na opção "Sim" no campo Reconhecimento Coletivo
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[8]/td[2]/table/tbody/tr/td/input


#VERIFY  



E verificar o campo Descrição                                             
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}  Descrição  
	Element Attribute Value Should Be  ${CAMPO}  name  descsinaalar 

E verificar o campo Prioridade 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}  Prioridade  
	Element Attribute Value Should Be  ${CAMPO}  name  priosinaalar

E verificar o campo Exibir no Monitoramento
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Exibir no Monitoramento
	Element Attribute Value Should Be  ${CAMPO}  name  sinaalarmoni[]

E verificar o campo Cor para Sinal Não Tratado 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}  Cor para Sinal Não Tratado  
	Element Attribute Value Should Be  ${CAMPO}  name  coralarnao

E verificar o campo Cor para o Sinal Reconhecido  
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input
	
	Element Should Contain  ${LABEL}  Cor para Sinal Reconhecido 
	Element Attribute Value Should Be  ${CAMPO}  name  coralarreco 

E verificar o campo Trocar arquivo de som    
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Tocar arquivo de som
	Element Attribute Value Should Be  ${CAMPO}  name  beepsinaalar[]

E verificar o campo Reconhecimento Coletivo 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Reconhecimento Coletivo
	Element Attribute Value Should Be  ${CAMPO}  name  recocole[]

E verificar o campo Som do Alarme 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Som do Alarme
	Element Attribute Value Should Be  ${CAMPO}  name  somwavealar