*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.resource_mnu.Clicar No Menu Relatórios | Consulta Impressa
# REPORT
resource_report.Navegar no Relatório: Consulta Saldo de Benefícios nos Coletores

# SCREEN
Acessar Tela Consulta Saldo de Benefícios nos Coletores
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta Saldo de Benefícios nos Coletores
  ${APPNAME}     Set Variable  ctrselecaosaldobeneficios
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Benefícios
  ${ELEMENT}  Set Variable  id=cap_beneficio

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Codin
  ${ELEMENT}  Set Variable  id=cap_coletores

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window


#FIELD
Preencher o campo Data Inicial "${DATA}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${DATA}

Preencher o campo Data Final "${DATAF}" 
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${DATAF}

Preencher o campo Codin(+) "${CODIN}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${CODIN}

Preencher Benefícios(+) "${BEN}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${BEN






#VERIFY (Filtro)

Verificar o campo Data Inicial *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data Inicial *
 	Element Attribute Value Should Be  ${CAMPO}   name   dataini

Verificar o campo Data Final *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data Final *
 	Element Attribute Value Should Be  ${CAMPO}   name   datafim

Verificar o campo Codin(+)
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Codin(+)
 	Element Attribute Value Should Be  ${CAMPO}   name   coletores

Verificar o campo Benefícios(+)
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Benefícios(+)
 	Element Attribute Value Should Be  ${CAMPO}   name   beneficio
