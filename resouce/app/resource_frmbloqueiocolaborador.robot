*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio

# SCREEN
Acessar Tela Bloqueio de Colaborador (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Bloqueio de Colaborador
  ${APPNAME}  Set Variable  frmbloqueiocolaborador
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Bloqueio de Colaborador (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Bloqueio de Colaborador
  ${APPNAME}  Set Variable  frmbloqueiocolaborador
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código do Colaborador "${CODIGO}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${CODIGO}
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[7]/td[1]
  
Selecionar uma opção no campo Código do Motivo do Bloquio "${CODIGO}"
  Select from list by label  xpath=//*[@name="codimoti"]  ${CODIGO}

Preencher o campo Observação Bloqueio/Liberação "${OBSERVACAO}"
  Input Text  xpath=//*[@name="obsebloqlibe"]  ${OBSERVACAO}


#VERIFY


E verificar o campo Código do Colaborador 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
    ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input
  ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]
  END
	Element Should Contain  ${LABEL}  Código do Colaborador   
	Element Attribute Value Should Be  ${CAMPO}  name  idcolab

E verificar o campo Empresa      
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]

	
	Element Should Contain  ${LABEL}  Empresa


E verificar o campo Tipo do Colaborador    
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]

	
	Element Should Contain  ${LABEL}  Tipo do Colaborador
	

E verificar o campo Matrícula     
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	
	
	Element Should Contain  ${LABEL}  Matrícula
	

E verificar o campo Nome       
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	
	
	Element Should Contain  ${LABEL}  Nome 
	 

E verificar o campo Data do Bloqueio do Acesso 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Data do Bloqueio do Acesso 
	Element Attribute Value Should Be  ${CAMPO}  name  databloq

E verificar o campo Hora do Bloqueio do Acesso 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}  Hora do Bloqueio do Acesso 
	Element Attribute Value Should Be  ${CAMPO}  name  horabloq

E verificar o campo Código do Motiva do Bloqueio 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/select
	
	Element Should Contain  ${LABEL}  Código do Motivo do Bloqueio* 
	Element Attribute Value Should Be  ${CAMPO}  name  codimoti

E verificar o campo Observação Bloqueia/Liberação 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/textarea
	
	Element Should Contain  ${LABEL}  Observação Bloqueio/Liberação
	Element Attribute Value Should Be  ${CAMPO}  name  obsebloqlibe