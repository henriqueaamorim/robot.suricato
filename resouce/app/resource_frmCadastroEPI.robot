*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI

# SCREEN
Acessar Tela Cadastro de EPI (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${SCREENNAME}  Set Variable  EPI
	${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[6]
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de EPI
	${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmCadastroEPI

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Cadastro de EPI (Atualização)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${SCREENNAME}  Set Variable  EPI
	${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[6]
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de EPI
	${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmCadastroEPI

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"




#BUTTON
#resource_btn.

#FIELD
Preencher o campo Descrição "${DESCRICAO}"
  Input Text    xpath=//*[@name="descepi"][@type="text"]    ${DESCRICAO}

Preencher o campo Tipo do EPI "${TIPO}"
  Input Text    xpath=//*[@name="coditipoepi"][@type="text"]    ${TIPO}
	#Necessário clicar fora para validar a inserção do registro
	Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]
Marcar a opção "Sim" no campo Devolução do EPI
  Click Element    xpath=//*[@name="devoepi[]"]

Marcar a opção "Sim" no campo Uso do EPI
  Click Element    xpath=//*[@name="usoepi[]"]

Preencher o campo Certificado de Aprovação "${CERTIFICADO}"
  Input Text    xpath=//*[@name="certapro"][@type="text"]    ${CERTIFICADO}

Preencher o campo Validade do Certificado de Aprovação "${VAL_CERTIFICADO}"
  Input Text    xpath=//*[@name="valica"][@type="text"]    ${VAL_CERTIFICADO}

Preencher o campo Validade do EPI (Dias) "${VALIDADE}"
  Input Text    xpath=//*[@name="diasvaliepi"][@type="text"]    ${VALIDADE}

Preencher o campo Revisão do EPI (Dias) "${REVISAO}"
  Input Text    xpath=//*[@name="diasreviepi"][@type="text"]    ${REVISAO}

Preencher o campo Tolerancia "${TOLERANCIA}"
  Input Text    xpath=//*[@name="toleepidias"][@type="text"]    ${TOLERANCIA}

Preencher o campo Caracteristicas "${CARACT}"
  Input Text    xpath=//*[@name="caraepi"]    ${CARACT}

Preencher o campo Instruções de Uso "${INTRUCOES}"
  Input Text    xpath=//*[@name="instuso"]     ${INTRUCOES}

Preencher o campo Valor do EPI "${VALOR}"
  Input Text    xpath=//*[@name="valoepi"][@type="text"]    ${VALOR}

Preencher o campo Número EPI Amoxarifado "${NUMERO}"
  Input Text    xpath=//*[@name="numeepialmo"][@type="text"]    ${NUMERO}


#VERIFY

E verificar o campo Descrição      
  
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}  Descrição   
	Element Attribute Value Should Be  ${CAMPO}  name  descepi 
	      

E verificar o campo Tipo de EPI 
  
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Tipo do EPI  
	Element Attribute Value Should Be  ${CAMPO}  name  coditipoepi 
	

E verificar o campo Devolução do EPI 
  
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CHECKBOX}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Devolução do EPI 
	Element Attribute Value Should Be  ${CHECKBOX}  name  devoepi[] 
	

E verificar o campo Uso do EPI   
  
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CHECKBOX}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Uso do EPI  
	Element Attribute Value Should Be  ${CHECKBOX}  name  usoepi[]  
	

E verificar o campo Certificado de Aprovação 
   
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input
	
	Element Should Contain  ${LABEL}  Certificado de Aprovação 
	Element Attribute Value Should Be  ${CAMPO}  name  certapro 
	

E verificar o campo Validade do Certificado de Aprovação
  
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Validade do Certificado de Aprovação 
	Element Attribute Value Should Be  ${CAMPO}  name  valica
	

E verificar o campo Validade do EPI (Dias)
  
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}  Validade do EPI (Dias) 
	Element Attribute Value Should Be  ${CAMPO}  name  diasvaliepi 
	

E verificar o campo Revisão do EPI (Dias)
 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input
	
	Element Should Contain  ${LABEL}  Revisão do EPI (Dias)  
	Element Attribute Value Should Be  ${CAMPO}  name  diasreviepi
	

E verificar o campo Tolerancia (Dias)
 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/input
	
	Element Should Contain  ${LABEL}  Tolerancia (Dias)  
	Element Attribute Value Should Be  ${CAMPO}  name  toleepidias 
	

E verificar o campo Caracteristicas 
 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/textarea
	
	Element Should Contain  ${LABEL}  Caracteristicas  
	Element Attribute Value Should Be  ${CAMPO}  name  caraepi 
	

E verificar o campo Instruções de uso 

	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[2]/textarea
	
	Element Should Contain  ${LABEL}  Instruções de uso 
	Element Attribute Value Should Be  ${CAMPO}  name  instuso 
	

E verificar o campo Valor do EPI  
  
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/input
	
	Element Should Contain  ${LABEL}  Valor do EPI 
	Element Attribute Value Should Be  ${CAMPO}  name  valoepi 
	

E verificar o campo Nuúmero EPI Amoxarifado 


	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[2]/input
	
	Element Should Contain  ${LABEL}  Número EPI Amoxarifado 
	Element Attribute Value Should Be  ${CAMPO}  name  numeepialmo 



