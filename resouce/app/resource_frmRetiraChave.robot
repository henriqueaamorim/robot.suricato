*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Chave | Movimentação de Chave

# SCREEN
Acessar Tela Retirada de Chave
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Retirada de Chave
  ${APPNAME}  Set Variable  frmRetiraChave
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Chave "${CHAVE}"
  Input Text  xpath=//*[@name="codichav"][@type="text"]  ${CHAVE}

Preencher o Código do Colaborador "${COLAB}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COLAB}
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[9]/td[1]

Preencher o campo Observação "${OBSERVACOES}"
  Input Text  xpath=//*[@name="obsechave"]  ${OBSERVACOES}


#VERIFY

E verificar o campo Chave 
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Chave 
	Element Attribute Value Should Be  ${CAMPO}  name  codichav

E verificar o campo Código do Colaborador        
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Código do Colaborador
	Element Attribute Value Should Be  ${CAMPO}  name  idcolab

E verificar o campo Empresa      
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	
  Element Should Contain  ${LABEL}  Empresa
	
E verificar o campo Tipo Colaborador   
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
	
	Element Should Contain  ${LABEL}  Tipo Colaborador
	
E verificar o campo Matrícula     
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
	
	Element Should Contain  ${LABEL}  Matrícula
	 
E verificar o campo Colaborador        
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span
	
	Element Should Contain  ${LABEL}  Colaborador

E verificar o campo Data Retirada  
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]/span[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/table/tbody/tr/td[1]/span[2]/span/input
	
	Element Should Contain  ${LABEL}  Data Retirada 
	Element Attribute Value Should Be  ${CAMPO}  name  datareti

E verificar o campo Hora Retirada    
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]/span[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Hora Retirada 
	Element Attribute Value Should Be  ${CAMPO}  name  horareti

E verificar o campo Observação     
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]/span
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/table/tbody/tr/td[1]/span[2]/textarea
	
	Element Should Contain  ${LABEL}  Observação
	Element Attribute Value Should Be  ${CAMPO}  name  obsechave

E verificar o campo Usuário que entregou a chave 
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[1]/span

	Element Should Contain  ${LABEL}  Usuário que entregou a chave
	
