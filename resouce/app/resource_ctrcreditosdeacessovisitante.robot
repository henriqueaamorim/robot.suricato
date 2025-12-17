*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Visitante

# SCREEN
Acessar Tela Créditos de Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Créditos de Acessos
  ${APPNAME}  Set Variable     ctrcreditosdeacessovisitante
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_ctrcreditosdeacessovisitante_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#VERIFY 



E verificar o campo Código do Visitante 
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Código do Visitante
	Element Attribute Value Should Be  ${CAMPO}  name  idvisi

E verificar o campo Tipo do Documento         
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]

	
	Element Should Contain  ${LABEL}  Tipo do Documento 
 

E verificar o campo Número do Documento      
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]

	
	Element Should Contain  ${LABEL}  Número do Documento
 

E verificar o campo Nome 
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]

	
	Element Should Contain  ${LABEL}  Nome


E verificar o campo Data Inicial   
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/input[1]
	
	Element Should Contain  ${LABEL}  Data Inicial
	Element Attribute Value Should Be  ${CAMPO}  name  paddatini

E verificar o campo Data Final 
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/input[1]
	
	Element Should Contain  ${LABEL}  Data Final 
	Element Attribute Value Should Be  ${CAMPO}  name  paddatfim



#FIELD
Preencher o campo Código do Visitante "${CÓDIGO_DO_VISITANTE}"
	Input Text  xpath=//*[@name="idvisi"][@type="text"]  ${CÓDIGO_DO_VISITANTE}

Preencher o campo Data Inicial "${DATA}"
	Input Text  xpath=//*[@name="paddatini"][@type="text"]  ${DATA}

Preencher o campo Data Final "${DATA}"
	Input Text  xpath=//*[@name="paddatfim"][@type="text"]  ${DATA}


