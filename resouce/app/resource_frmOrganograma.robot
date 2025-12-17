*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Organograma


# SCREEN
Acessar Tela Cadastro de Locais de Organograma
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
	 Sleep  2s
	 Select Frame   xpath=/html/body/div[4]/iframe	
 	 ${ELEMENT}     Set Variable  	  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]
 	 ${SCREENNAME}  Set Variable  Local de Organograma 
  ELSE	
	 ${SCREENNAME}  Set Variable  Cadastro de Locais de Organograma
	 ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  
  ${APPNAME}     Set Variable  frmOrganograma
  ${OBJ}         Set Variable  SCN
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
Clicar no Organograma "Pai"
  Click Element  xpath=//*[@id="sd0"]

Clicar no Local "${LOCAL}"
  Click Element  xpath=//*[@id="sd${LOCAL}"]


#FIELD
Preencher o campo Código do Local "${COD}"
  Input Text  xpath=//*[@name="locaorga"][@type="text"]  ${COD}

Preencher o campo Local "${LOCAL}"
  Input Text  xpath=//*[@name="nomeloca"][@type="text"]  ${LOCAL}


#VERIFY

Verificar a label Organograma *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}   Organograma *

Verificar o campo Código do Local *
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   		Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Código do Local *
 	Element Attribute Value Should Be  ${CAMPO}   name   locaorga

Verificar o campo Local *
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
     ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span[1]
     ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
 	 Element Should Contain  ${LABEL}   Local 	
	ELSE								
     ${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	 ${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
	 Element Should Contain  ${LABEL}   Local *	
	END
	
 	Element Attribute Value Should Be  ${CAMPO}   name   nomeloca

Verificar a label Data da Criação
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
     ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
	ELSE							
	 ${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	END
	
	Element Should Contain  ${LABEL}   Data da Criação

Verificar a label Local Pai
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
     ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
    ELSE							
	 ${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	END

	Element Should Contain  ${LABEL}   Local Pai
