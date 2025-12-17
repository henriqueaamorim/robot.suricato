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
resource_report.Navegar no Relatório: Marcação de Acesso

# SCREEN
Acessar Tela Marcação de Acesso - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Marcação de Acesso
  ${APPNAME}     Set Variable  consrelmarcacaoacesso
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Marcação de Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Marcação de Acesso
  ${APPNAME}     Set Variable  consrelmarcacaoacesso
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar o campo Crachá
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Crachá
 	Element Attribute Value Should Be  ${CAMPO}   name   icard

Verificar o campo Data
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input[1]
  ${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input[2]
  ${CAMPO3}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input[3]
  ${CAMPO4}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span[1]/input[1]
  ${CAMPO5}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span[1]/input[2]
  ${CAMPO6}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span[1]/input[3]
	
	Element Should Contain  ${LABEL}   Data
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataaces_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   dataaces_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   dataaces_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   dataaces_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   dataaces_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   dataaces_input_2_ano

Verificar o campo Planta
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Planta
 	Element Attribute Value Should Be  ${CAMPO}   name   codiplan

Verificar o campo Codin
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Codin
 	Element Attribute Value Should Be  ${CAMPO}   name   codicole
