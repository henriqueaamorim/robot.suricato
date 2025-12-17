*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio

# SCREEN
Acessar Tela Desbloquear Crachá (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Desbloquear Crachá (Atualização)
  ${APPNAME}     Set Variable  frmDesbloquearCracha
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

#VERIFY 

E verificar o campo Crachá         
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]	
	Element Should Contain  ${LABEL}  Crachá  

E verificar o campo Data do Bloqueio       
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}  Data do Bloqueio 

E verificar o campo Hora do Bloqueio             
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}  Hora do Bloqueio 

E verificar o campo Motivo do Bloqueio 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	Element Should Contain  ${LABEL}  Motivo do Bloqueio

E verificar o campo Observações     
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/textarea
	
	Element Should Contain  ${LABEL}  Observações
	Element Attribute Value Should Be  ${CAMPO}  name  obsebloqlibe

E verificar o campo Data da Liberação  
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Data da Liberação 
	Element Attribute Value Should Be  ${CAMPO}  name  datalibe

E verificar o campo Hora da Liberação  
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}  Hora da Liberação 
	Element Attribute Value Should Be  ${CAMPO}  name  horalibe

E verificar o campo Autorizador 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Autorizador 
	Element Attribute Value Should Be  ${CAMPO}  name  idcolaautolibe

E verificar o campo Empresa do Autorizador   
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}  Empresa do Autorizador
	
E verificar o campo Tipo do Colaborador   
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	Element Should Contain  ${LABEL}  Tipo do Colaborador 
	
E verificar o campo Matrícula do Autorizador   
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	Element Should Contain  ${LABEL}  Matrícula do Autorizador

E verificar o campo Nome do Autorizador  
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	Element Should Contain  ${LABEL}  Nome do Autorizador 

#FIELD
Preencher o campo Observações "${OBSERVACOES}"
	Input Text  xpath=//*[@name="obsebloqlibe"][@type="text"]  ${OBSERVACOES}

Preencher o campo Data da Liberação "${DATA}"
	Input Text  xpath=//*[@name="datalibe"][@type="text"]  ${DATA}

Preencher o campo Hora da Liberação "${HORA}"
	Input Text  xpath=//*[@name="horalibe"][@type="text"]  ${HORA}

Preencher o campo Autorizador "${AUTORIZADOR}"
	Input Text  xpath=//*[@name="idcolaautolibe"][@type="text"]  ${AUTORIZADOR}
	#Necessário clicar fora para validar a inserção do registro
	Click Element  xpath=//*[@id="hidden_bloco_1"]/tbody/tr[2]/td[1]