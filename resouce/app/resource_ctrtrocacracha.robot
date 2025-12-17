*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Crachá | Troca de Crachá

# SCREEN
Acessar Tela Troca de Crachá
  ${OBJ}        Set Variable  SCN
  ${APPNAME}    Set Variable  ctrtrocacracha
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Troca de Crachá 
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'Troca de Crachá')]
  ELSE
  ${SCREENNAME}  Set Variable  Troca de Crachá 
  ${ELEMENT}   Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible   ${ELEMENT}
  Element Text Should Be   ${ELEMENT}   ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.

#VERIFY 

E verificar a label: Colaborador
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Colaborador')]
	Element Should Contain  ${LABEL}   Colaborador

E verificar o campo Colaborador 
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=//span[@id='id_label_idcolab']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_idcolab']
    ELSE
 	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	END
	sleep  2s
	Element Should Contain  ${LABEL}  Colaborador   
	Element Attribute Value Should Be  ${CAMPO}  name  idcolab

E verificar o campo Nome   
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnome']
    ELSE
 	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	END
	Element Should Contain  ${LABEL}  Nome 

E verificar o campo Matrícula 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumcad']
    ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	END
	Element Should Contain  ${LABEL}  Matrícula

E verificar o campo Empresa
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumemp']
    ELSE
 	 ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
  END
	Element Should Contain  ${LABEL}   Empresa  

E verificar o campo Tipo 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padtipcol']
    ELSE
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	END
  Element Should Contain  ${LABEL}   Tipo
	 
#FIELD
Preencher o campo Colaborador "${COLAB}"
	Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COLAB}
	#Necessário clicar fora para validar a inserção do registro
	Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[2]/input[1]