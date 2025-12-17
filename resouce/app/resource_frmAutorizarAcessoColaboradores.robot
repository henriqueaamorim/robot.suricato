*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU 
resource_mnu.Clicar No Menu Registro | Área Restrita | Autorizar Acesso

# SCREEN
Acessar Tela Áreas Restritas de Colaboradores (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Áreas Restritas de Colaboradores
  ${APPNAME}  Set Variable  frmAutorizarAcessoColaboradores
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Áreas Restritas de Colaboradores (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Áreas Restritas de Colaboradores (Atualização)
  ${APPNAME}  Set Variable  frmAutorizarAcessoColaboradores
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código do Colaborador "${COLAB}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COLAB}
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[11]/td[1]

Preencher o campo Grupo de Acesso "${ACESSO}"
  Input Text  xpath=//*[@name="codiperm"][@type="text"]  ${ACESSO}

Preencher o campo Data Final "${DATA}"
  Input Text  xpath=//*[@name="datafina"][@type="text"]  ${DATA}

Preencher o campo Hora Final "${HORA}"
  Input Text  xpath=//*[@name="horafina"][@type="text"]  ${HORA}

Preencher o campo Observações "${OBSERVACOES}"
  Input Text  xpath=//*[@name="obse"]  ${OBSERVACOES}


#VERIFY


E verificar o campo Código do Colaborador   
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]
	Element Should Contain  ${LABEL}  Código do Colaborador 

E verificar o campo Empresa     
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	Element Should Contain  ${LABEL}  Empresa 

E verificar o campo Tipo do Colaborador 
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	Element Should Contain  ${LABEL}  Tipo do Colaborador

E verificar o campo Matrícula  
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
	Element Should Contain  ${LABEL}  Matrícula

E verificar o campo Nome  
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
	Element Should Contain  ${LABEL}  Nome  

E verificar o campo Data Inicial 
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/span/input
	
	Element Should Contain  ${LABEL}  Data Inicial 
	Element Attribute Value Should Be  ${CAMPO}  name  datainic

E verificar o campo Hora Inicial
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]/span[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Hora Inicial 
	Element Attribute Value Should Be  ${CAMPO}  name  horainic

E verificar o campo Grupo de Acesso 
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]/span[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Grupo de Acesso 
	Element Attribute Value Should Be  ${CAMPO}  name  codiperm

E verificar o campo Data Final 
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]/span[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/table/tbody/tr/td[1]/span[2]/span/input
	
	Element Should Contain  ${LABEL}  Data Final 
	Element Attribute Value Should Be  ${CAMPO}  name  datafina

E verificar o campo Hora Final 
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]/span[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Hora Final 
	Element Attribute Value Should Be  ${CAMPO}  name  horafina 

E verificar o campo Observações
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]/span
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[2]/table/tbody/tr/td[1]/span[2]/textarea
	
	Element Should Contain  ${LABEL}  Observações
	Element Attribute Value Should Be  ${CAMPO}  name  obse
