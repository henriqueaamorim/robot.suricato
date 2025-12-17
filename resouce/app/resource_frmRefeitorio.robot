ssss*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Refeitório

# SCREEN
Acessar Tela Cadastro de Refeitório
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Refeitório
  ${APPNAME}  Set Variable  frmRefeitorio
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible   ${ELEMENT}
  Element Text Should Be   ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Filtro de Refeitório
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Refeitório
  ${APPNAME}  Set Variable  frmRefeitorio
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  5s
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


Acessar Tela Edição de Vagas para Refeitório
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Refeitório
  ${APPNAME}  Set Variable  frmRefeitorio
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible   ${ELEMENT}
  Element Text Should Be   ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V3.png"



Acessar Tela Pesquisar Equipamento de Refeitório
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Pesquisar Equipamento de Refeitório
  ${APPNAME}  Set Variable  frmRefeitorio
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  #Wait Until Element is Visible   ${ELEMENT}
  #Element Text Should Be   ${ELEMENT}  ${SCREENNAME}
  Sleep  5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
#resource_btn.


#FIELD
Preencher o campo Código "${COD}"
  Input Text  xpath=//*[@name="codirefe"][@type="text"]  ${COD}

Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="descrefe"][@type="text"]  ${DESCRICAO}

Preencher o campo Total "${TOTAL}"
  Input Text  xpath=//*[@name="total"][@type="text"]  ${TOTAL}

Preencher o campo VIP "${VIP}"
  Input Text  xpath=//*[@name="vip"][@type="text"]  ${VIP}

Preencher o campo Em Uso "${USO}"
  Input Text  xpath=//*[@name="uso"][@type="text"]  ${USO}



  #VERIFY 

E verificar o campo Código     
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"  			
    ${LABEL}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[1]/td[1]/span[1]
    ${CAMPO}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/span[2]/input
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input
	END

	Element Should Contain  ${LABEL}  Código
	Element Attribute Value Should Be  ${CAMPO}  name  codirefe

E verificar o campo Descrição 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"  			
    ${LABEL}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[2]/td[1]/span[1]
    ${CAMPO}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[2]/td[2]/table/tbody/tr[1]/td/span[2]/input
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
	END

	Element Should Contain  ${LABEL}  Descrição 
	Element Attribute Value Should Be  ${CAMPO}  name  descrefe
	

E verificar o campo Total      
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"  			
    ${LABEL}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[3]/td[1]/span
    ${CAMPO}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/span[2]/input
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
	END
  
	Element Should Contain  ${LABEL}  Total
	Element Attribute Value Should Be  ${CAMPO}  name  total
	

E verificar o campo VIP     
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"  			
    ${LABEL}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[4]/td[1]/span
    ${CAMPO}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td/span[2]/input
  ELSE  
    ${LABEL}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
	END

	Element Should Contain  ${LABEL}  VIP
	Element Attribute Value Should Be  ${CAMPO}  name  vip
	

E verificar o campo Em Uso   
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"  			
    ${LABEL}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[5]/td[1]/span
    ${CAMPO}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/span[2]/input
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/input
	END

	Element Should Contain  ${LABEL}  Em Uso
	Element Attribute Value Should Be  ${CAMPO}  name  uso 
	