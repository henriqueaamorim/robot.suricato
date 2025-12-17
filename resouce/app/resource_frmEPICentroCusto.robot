*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar no Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo

# SCREEN
Acessar Tela Cadastro de EPI por Centro de Custo (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de EPI por Centro de Custo
  ${APPNAME}  Set Variable  frmEPICentroCusto
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Cadastro de EPI por Centro de Custo (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de EPI por Centro de Custo
  ${APPNAME}  Set Variable  frmEPICentroCusto
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#BUTTON
#resource_btn.

#FIELD
Selecionar um item no campo Empresa "${EMPRESA}"
  Select from list by label  xpath=//*[@name="codiempr"]  ${EMPRESA}

Selecionar um item no campo Centro de Custo "${CENTRO_CUSTO}"
  Select from list by label  xpath=//*[@name="idccodicentcustolab"]  ${CENTRO_CUSTO}

Preencher o campo EPI "${EPI}"
  Input Text  xpath=//*[@name="codiepi"][@type="text"]  ${EPI}

Preencher o campo Validade (Dias) "${VALIDADE}"
  Input Text  xpath=//*[@name="diasvaliepi"][@type="text"]  ${VALIDADE}

Preencher o campo Revisão (Dias) "${REVISAO}"
  Input Text  xpath=//*[@name="diasreviepi"][@type="text"]  ${REVISAO}

Selecionar um item no campo Uso "${USO}"
  Select from list by label  xpath=//*[@name="usoepi"]  ${USO}


#VERIFY

E verificar o campo Empresa

	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/select
	
	Element Should Contain  ${LABEL}  Empresa   
	Element Attribute Value Should Be  ${CAMPO}  name  codiempr

E verificar o campo Centro de Custo      

	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}  Centro de Custo  
	Element Attribute Value Should Be  ${CAMPO}  name  codicentcust  

E verificar o campo EPI

	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  EPI  
	Element Attribute Value Should Be  ${CAMPO}  name  codiepi

E verificar o campo Validade (Dias)

	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}  Validade (Dias) 
	Element Attribute Value Should Be  ${CAMPO}  name  diasvaliepi 

E verificar o campo Revisão (Dias)

	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input
	
	Element Should Contain  ${LABEL}  Revisão (Dias) 
	Element Attribute Value Should Be  ${CAMPO}  name  diasreviepi

E verificar o campo Uso    

	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/select
	
	Element Should Contain  ${LABEL}  Uso 
	Element Attribute Value Should Be  ${CAMPO}  name  usoepi 




