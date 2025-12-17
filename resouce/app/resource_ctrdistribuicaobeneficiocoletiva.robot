*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Benefício | Atribuição

# SCREEN
Acessar Tela Atribuição de Benefícios
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  ctrdistribuicaobeneficiocoletiva
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Atribuição de Benefícios
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Atribuição de Benefícios 
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.


#VERIFY

E verificar o campo Código Benefício 
 	${LABEL}  Set Variable  xpath=//span[@id='id_label_codibene']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codibene_obj']
	
	Element Should Contain  ${LABEL}  Código Benefício

E verificar o campo Data Inicial da Atribuição 
	${LABEL}  Set Variable  xpath=//span[@id='id_label_datainic']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_datainic']
	
	Element Should Contain  ${LABEL}  Data Inicial da Atribuição
	Element Attribute Value Should Be  ${CAMPO}  name  datainic

E verificar o campo Hora Inicial da Atribuição 
 	${LABEL}  Set Variable  xpath=//span[@id='id_label_horainic']
	${CAMPO}  Set Variable  xpath=//input[@name='horainic']
	
	Element Should Contain  ${LABEL}  Hora Inicial da Atribuição
	Element Attribute Value Should Be  ${CAMPO}  name  horainic

E verificar o campo Data Final da Atribuição 
	${LABEL}  Set Variable  xpath=//span[@id='id_label_datafina']
	${CAMPO}  Set Variable  xpath=//input[@name='datafina']
	
	Element Should Contain  ${LABEL}  Data Final da Atribuição
	Element Attribute Value Should Be  ${CAMPO}  name  datafina

E verificar o campo Hora Final da Atribuição  
	${LABEL}  Set Variable  xpath=//span[@id='id_label_horafina']
	${CAMPO}  Set Variable  xpath=//input[@name='horafina']
	
	Element Should Contain  ${LABEL}  Hora Final da Atribuição 
	Element Attribute Value Should Be  ${CAMPO}  name  horafina

E verificar o campo Mês Competência
	${LABEL}  Set Variable  xpath=//span[@id='id_label_mescompfolh']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_mescompfolh_obj']
	
	Element Should Contain  ${LABEL}  Mês Competência 

E verificar o campo Qtde Entregas 
	${LABEL}  Set Variable  xpath=//span[@id='id_label_quanentrbene']
	Element Should Contain  ${LABEL}  Qtde Entregas

Verificar o campo: Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=//input[@name='numemp']
	Element Should Contain             ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   numemp

Verificar o campo: Tipo de Colaborador:	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo de Colaborador:	')]
	${CAMPO}      Set Variable  xpath=//spann[@class='select2-selection select2-selection--multiple css_tipcol_obj']
	Element Should Contain             ${LABEL}   Tipo de Colaborador:	
 	

Verificar o campo: Colaborador
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Colaborador')]
	${CAMPO}      Set Variable  xpath=//input[@name='numcad']
	Element Should Contain             ${LABEL}   Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   numcad






#FIELD
Selecionar uma opção no campo Código Beneficio "${CÓDIGO_BENEFICIO}"
	Select From List By Label  xpath=//*[@name="codibene"]  ${CÓDIGO_BENEFICIO}

Preencher o campo data Inicial da Atribuição "${DATA_INICIAL_DA_ATRIBUIÇÃO}"
	Input Text  xpath=//*[@name="datainic"][@type="text"]  ${DATA_INICIAL_DA_ATRIBUIÇÃO}

Preencher o campo hora Inicial da Atribuição "${HORA_INICIAL_DA_ATRIBUIÇÃO}"
	Input Text  xpath=//*[@name="horainic"][@type="text"]  ${HORA_INICIAL_DA_ATRIBUIÇÃO}

Preencher o campo data Final da Atribuição "${DATA_FINAL_DA_ATRIBUIÇÃO}"
	Input Text  xpath=//*[@name="datafina"][@type="text"]  ${DATA_FINAL_DA_ATRIBUIÇÃO}

Preencher o campo hora Final da Atribuição "${HORA_FINAL_DA_ATRIBUIÇÃO}"
	Input Text  xpath=//*[@name="horafina"][@type="text"]  ${HORA_FINAL_DA_ATRIBUIÇÃO}

Preencher o campo Mês Competência "${MÊS_COMPETÊNCIA}"
	Input Text  xpath=//*[@name="mescompfolh"][@type="text"]  ${MÊS_COMPETÊNCIA}

