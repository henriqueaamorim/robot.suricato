*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo

# SCREEN
Acessar Tela Cadastro de EPI por Centro de Custo e Cargo (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable  EPI por Centro de Custo e Cargo
      ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  ELSE
      ${SCREENNAME}  Set Variable  Cadastro de EPI por Centro de Custo e Cargo
      ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmEPICCustoCargo
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Cadastro de EPI por Centro de Custo e Cargo (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de EPI por Centro de Custo e Cargo
  ${APPNAME}  Set Variable  frmEPICCustoCargo
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"




#BUTTON
#resource_btn.

#FIELD
Selecionar um item no campo Empresa "${EMPRESA}"
  Select From List By Label    name=codiempr  ${EMPRESA}

Selecionar um item no campo Centro de Custo "${CENTRO_CUSTO}"
  Select From List By Label    name=codicentcust  ${CENTRO_CUSTO}

Selecionar um item no campo Cargo "${CARGO}"
  Select From List By Label    name=codicarg  ${CARGO}

Preencher o campo EPI "${EPI}"
  Input Text   xpath=//*[@id="hidden_bloco_0"]/tbody/tr[4]/td[2]/input[1]  ${EPI}

Preencher o campo Validade (Dias) "${VALIDADE}"
  Input Text   name=diasvaliepi   ${VALIDADE}

Preencher o campo Revisão (Dias) "${REVISAO}"
  Input Text   name=diasreviepi  ${REVISAO}

Selecionar um item no campo Uso "${USO}"
  Select From List By Label   name=usoepi  ${USO}



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

E verificar o campo Cargo
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/select
	
	Element Should Contain  ${LABEL}  Cargo  
	Element Attribute Value Should Be  ${CAMPO}  name  codicarg

E verificar o campo EPI
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  EPI  
	Element Attribute Value Should Be  ${CAMPO}  name  codiepi

E verificar o campo Validade (Dias)
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input
	
	Element Should Contain  ${LABEL}  Validade (Dias) 
	Element Attribute Value Should Be  ${CAMPO}  name  diasvaliepi

E verificar o campo Revisão (Dias)
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}  Revisão (Dias)    
	Element Attribute Value Should Be  ${CAMPO}  name  diasreviepi

E verificar o campo Uso
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[2]/select
	
	Element Should Contain  ${LABEL}  Uso  
	Element Attribute Value Should Be  ${CAMPO}  name  usoepi 


