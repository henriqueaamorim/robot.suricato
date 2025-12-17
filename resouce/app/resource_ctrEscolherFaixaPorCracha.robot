*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Crachá | Gravação por Faixa

# SCREEN
Acessar Tela Gravação de Crachá Por Faixa
  ${OBJ}         Set Variable   SCN
  ${SCREENNAME}  Set Variable   Gravação de Crachá Por Faixa
  ${APPNAME}     Set Variable   ctrEscolherFaixaPorCracha
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#VERIFY 

E verificar a label: Gravação de Crachá Por Faixa
	${LABEL}  Set Variable  xpath=//td[@class='scFormBlockFont']
	Element Should Contain  ${LABEL}  Gravação de Crachá Por Faixa

E verificar o campo: Tipos de Crachás*	
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[@id='id_label_cadastro_cracha']
	${CAMPO}  Set Variable  xpath=//span[@class=''select2-selection select2-selection--single css_cadastro_cracha_obj]
	ELSE
 	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/select
	END
	Element Should Contain  ${LABEL}  Tipos de Crachás*	

E verificar o campo Faixa Inicial*	
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[contains(text(),'Faixa Inicial*')]
	${CAMPO}  Set Variable  xpath=//input[@name='faixa_de']
    ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	END
	Element Should Contain  ${LABEL}   Faixa Inicial 
	Element Attribute Value Should Be  ${CAMPO}  name  faixa_de

E verificar o campo:Faixa Final*	
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[contains(text(),'Faixa Final*')]
	${CAMPO}  Set Variable  xpath=//input[@name='faixa_ate']
    ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	END
	Element Should Contain  ${LABEL}   Faixa Final*	
	Element Attribute Value Should Be  ${CAMPO}  name  faixa_ate

E verificar o campo Qtde. Crachá*	
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[contains(text(),'Qtde. Crachá*')]
	ELSE
	${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	END
	Element Should Contain  ${LABEL}  Qtde. Crachá*	




#FIELD
Selecionar uma opção no campo Tipo de Crachá "${TIPO_DE_CRACHÁ}"
	Select From List By Label  xpath=//*[@name="usofaixcrac"]  ${TIPO_DE_CRACHÁ}

Preencher o campo De "${DE}"
	Input Text  xpath=//*[@name="crachade"][@type="text"]  ${DE}

Preencher o campo Até "${ATÉ}"
	Input Text  xpath=//*[@name="crachaate"][@type="text"]  ${ATÉ}

