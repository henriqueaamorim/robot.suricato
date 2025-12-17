*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Candidato | Cadastro de Candidato

# SCREEN
Acessar Tela Consulta de Cadastro de Candidato
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Cadastro de Candidato
  ${APPNAME}  Set Variable  cnscadastroimprensacad
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Matrícula "${MATRICULA}"
  Input Text  xpath=//*[@name="idcand"][@type="text"]   ${MATRICULA}

Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="nomepess"][@type="text"]   ${NOME}


#VERIFY 

E verificar o campo Matrícula 
 	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Matrícula
	Element Attribute Value Should Be  ${CAMPO}  name  idcand

E verificar o campo Nome 
	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Nome
	Element Attribute Value Should Be  ${CAMPO}  name  nomepess
