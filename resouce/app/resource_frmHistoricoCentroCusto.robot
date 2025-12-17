*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Centro de Custo

# SCREEN
Acessar Tela Histórico de Centro de Custo (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmHistoricoCentroCusto
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Histórico de Centro de Custo  
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE 
    ${SCREENNAME}  Set Variable  Histórico de Centro de Custo (Inclusão)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Histórico de Centro de Custo (Edição)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmHistoricoCentroCusto
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Histórico de Centro de Custo 
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Histórico de Centro de Custo (Atualização)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código do Colaborador "${COD}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COD}
  #Necessário clicar fora para validar o registro
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Data de Alteração "${DATA}"
  Input Text  xpath=//*[@name="dataalte"][@type="text"]  ${DATA}

Preencher o campo Novo Centro de Custo "${CENTRO}"
  Input Text  xpath=//*[@name="idcentcust"][@type="text"]  ${CENTRO}
  #Necessário clicar fora para validar o registro
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

#VERIFY 

E verificar o campo Código do Colaborador
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_idcolab']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_idcolab']
	
	Element Should Contain  ${LABEL}  Código do Colaborador
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_idcolab

E verificar o campo Empresa   
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumemp']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnumemp']
	
	Element Should Contain  ${LABEL}  Empresa
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnumemp


E verificar o campo Tipo
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padtipcol']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padtipcol']
	
	Element Should Contain  ${LABEL}  Tipo
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padtipcol

E verificar o campo Matrícula
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumcad']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnumcad']
	
	Element Should Contain  ${LABEL}  Matrícula
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnumcad

E verificar o campo Nome 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnome']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnome']
	
	Element Should Contain  ${LABEL}  Nome
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnome

E verificar o campo Alteração 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_dataalte']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_dataalte']
	
	Element Should Contain  ${LABEL}  Alteração 
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_dataalte

E verificar o campo Centro de Custo 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_idcentcust']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_idcentcust']
	
	Element Should Contain  ${LABEL}  Centro de Custo 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_idcentcust