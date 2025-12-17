*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Movimentação de Guarda-Volumes

# SCREEN
Acessar Tela Utilização de Guarda-Volumes
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Utilização de Guarda-Volumes
  ${APPNAME}  Set Variable  frmUtilizaGVolumes
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "iframe_mnu"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Guarda-Volumes "${GUARDA_VOLUME}"
  Input Text  xpath=//*[@name="codiguarvolu"][@type="text"]  ${GUARDA_VOLUME}

Preencher o campo Código "${CODIGO}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${CODIGO}
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]

Preencher o campo Observação "${OBSERVACAO}"
  Input Text  xpath=//*[@name="obseguarvolu"][@type="text"]  ${OBSERVACAO}



#VERIFY 

E verificar o campo Guarda-Volumes   
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Guarda-Volumes
	Element Attribute Value Should Be  ${CAMPO}  name  codiguarvolu

E verificar o campo Código        
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Código
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
	

E verificar o campo Data Utilização   
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]/span[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/table/tbody/tr/td[1]/span[2]/span/input
	
	Element Should Contain  ${LABEL}  Data Utilização
	Element Attribute Value Should Be  ${CAMPO}  name  datauso

E verificar o campo Hora Utilização 
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[1]/span[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Hora Utilização 
	Element Attribute Value Should Be  ${CAMPO}  name  horauso

E verificar o campo Observação    
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[1]/span
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[2]/table/tbody/tr/td[1]/span[2]/textarea
	
	Element Should Contain  ${LABEL}  Observação
	Element Attribute Value Should Be  ${CAMPO}  name  obseguarvolu