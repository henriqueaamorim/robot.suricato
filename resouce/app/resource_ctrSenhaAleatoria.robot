*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Cadastro de Senha de Acesso Temporária

# SCREEN
Acessar Tela Solicitação de Senha Aleatória para Codins
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  ctrSenhaAleatoria
  IF	 "${SERVER}" "172.16.14.246" or "${SERVER}" "172.16.14.247"
  ${SCREENNAME}  Set Variable    Cadastro de senha de acesso temporária.  
  ${ELEMENT}    Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Solicitação de Senha Aleatória para Codins
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  END

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.

#VERIFY 

E verificar o campo Empresa 1  
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[@id='id_label_codiempr']
	ELSE
 	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[1]/td[1]/span
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	END
	Element Should Contain  ${LABEL}  Empresa
	

E verificar o campo Tipo Colaborador        
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[@id='id_label_tipocola']
	ELSE
 	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	END
	Element Should Contain  ${LABEL}  Tipo Colaborador
	

E verificar o campo Matrícula    
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[@id='id_label_codimatr']
	ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
	END
	Element Should Contain  ${LABEL}  Matrícula
	

Verificar o campo Nome 
	${LABEL}   Set Variable  xpath=//span[@id='id_label_nomepess']
	Element Should Contain  ${LABEL}   Nome 


E verificar o campo ID 
    IF	 "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"   
	${LABEL}  Set Variable  xpath=//span[@id='id_label_idcolab']
	${CAMPO}  Set Variable  xpath=//input[@name='idcolab']
	ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[4]/td[1]
	END
	sleep  2s
	Element Should Contain  ${LABEL}    ID
	
	

E verificar o campo Nome      
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[@id='id_label_nomepess']
	ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[5]/td[1]
	END
	Element Should Contain  ${LABEL}  Nome

E verificar o campo Apelido
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[@id='id_label_apelcola']
	ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[6]/td[1]
	END
	Element Should Contain  ${LABEL}  Apelido

E verificar o campo Situação    
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[@id='id_label_situafas']
	ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[7]/td[1]
	END
	Element Should Contain  ${LABEL}  Situação

E verificar o campo Foto
	${LABEL}   Set Variable  xpath=//span[@id='id_label_foto']
	Element Should Contain  ${LABEL}   	Foto

E verificar o campo Empresa 2   
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"  
	${LABEL}  Set Variable  xpath=//span[@id='id_label_codiempr']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codiemprcodin_obj']
	ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	END
	
	Element Should Contain  ${LABEL}  Empresa
	Element Attribute Value Should Be  ${CAMPO}  name  codiemprcodin


E verificar o campo Planta   
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[@id='id_label_codiplan']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codiplan_obj']
	ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	END
	Element Should Contain  ${LABEL}  Planta

E verificar o campo Codin       
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[@id='id_label_codicole']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codicole_obj']
	ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	END
	Element Should Contain  ${LABEL}  Codin


E verificar o campo Senha   
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[@id='id_label_senha']
	ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	END
	Element Should Contain  ${LABEL}  Senha

#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Tipo Colaborador "${TIPO}"
	Select From List By Label  xpath=//*[@name="tipocola"]  ${TIPO}

Preencher o campo Matrícula "${MATRICULA}"
	Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MATRICULA}

Selecionar uma opção no segundo campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="codiemprcodin"]  ${EMPRESA}

Selecionar uma opção no campo Planta "${PLANTA}"
	Select From List By Label  xpath=//*[@name="codiplan"]  ${PLANTA}

Selecionar uma opção no campo Codin "${CODIN}"
	Select From List By Label  xpath=//*[@name="codicole"]  ${CODIN}
