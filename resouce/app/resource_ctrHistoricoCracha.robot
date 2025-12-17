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
resource_report.Navegar no Relatório: Consulta de Histórico de Crachá

# SCREEN
Acessar Tela Consulta de Histórico de Crachá - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Histórico de Crachá
  ${APPNAME}     Set Variable  ctrHistoricoCracha
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Matrícula
  ${ELEMENT}  Set Variable  id=cap_slccol

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window



#VERIFY (Filtro)

Verificar o campo Tipo de Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/select
	
	Element Should Contain  ${LABEL}   Tipo de Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   slctipocol[]

Verificar o campo Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   slccol

#FIELD
Selecionar uma opção no campo Tipo de Colaborador "${TIPO}"
  Select From List By Label  xpath=//*[@name="slctipocol[]"]  ${TIPO}

Preencher o campo Matrícula "${MATRICULA}"
	Input Text  xpath=//*[@name="slccol"][@type="text"]  ${MATRICULA}