*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Cadastro

# SCREEN
Acessar Tela Área de Risco - Cadastro
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
    ${SCREENNAME}  Set Variable  Área de Risco
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  ELSE
    ${SCREENNAME}  Set Variable  Área de Risco - Cadastro
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frm_tbLocal_Acess
  

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

Preencher o campo Descrição "${DESCRICAO}"
  Input Text    xpath=//*[@name="desclocaaces"][@type="text"]  ${DESCRICAO}

Preencher o campo Tempo Limite Dentro "${TEMPO}"
  Input Text   xpath=//*[@name="timeoutin"][@type="text"]  ${TEMPO}

Preencher o campo Time-Out Saída "${TIME_OUT}"
  Input Text    xpath=//*[@name="timeoutout"][@type="text"]   ${TIME_OUT}

Preencher o campo Endereço IP - Painel "${IP}"
  Input Text    xpath=//*[@name="endetcpip"][@type="text"]   ${IP}

Preencher o campo Pré Mensagem de Exibição "${MENSAGEM}"
  Input Text  xpath=//*[@name="msgpre"][@type="text"]  ${MENSAGEM}

Preencher o campo Pós Mensagem de Exibição "${MENSAGEM}"
  Input Text  xpath=//*[@name="msgpos"][@type="text"]  ${MENSAGEM}

Preencher o campo Tempo de Visualização (Segundos) "${TEMPO}"
  Input Text  xpath=//*[@name="timemsg"][@type="text"]  ${TEMPO}


#VERIFY

E verificar o campo Código

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	
	
	Element Should Contain  ${LABEL}  Código
	


E verificar o campo Descrição      

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}  Descrição   
	Element Attribute Value Should Be  ${CAMPO}  name  desclocaaces


E verificar o campo Tempo Limite Dentro
  
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}  Tempo Limite Dentro  
	Element Attribute Value Should Be  ${CAMPO}  name  timeoutin  


E verificar o campo Time-Out Saída (Minutos)

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}  Time-Out Saída (Minutos) 
	Element Attribute Value Should Be  ${CAMPO}  name  timeoutout


E verificar o campo Endereço IP-Painel

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input
	
	Element Should Contain  ${LABEL}  Endereço IP - Painel   
	Element Attribute Value Should Be  ${CAMPO}  name  endetcpip 


E verificar o campo Pré Mensagem de Exibição

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}  Pré Mensagem de Exibição  
	Element Attribute Value Should Be  ${CAMPO}  name  msgpre 


E verificar o campo Pós Mensagem de Exibição 
  
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}  Pós Mensagem de Exibição
	Element Attribute Value Should Be  ${CAMPO}  name  msgpos 

E verificar o campo Tempo de Visualização (Segundos)

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input
	
	Element Should Contain  ${LABEL}  Tempo de Visualização (Segundos)  
	Element Attribute Value Should Be  ${CAMPO}  name  timemsg 