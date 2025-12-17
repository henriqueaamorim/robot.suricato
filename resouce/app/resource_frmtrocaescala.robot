*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Escala

# SCREEN
Acessar Tela Troca de Escala (Atualização)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmtrocaescala
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Programação - Troca de Escala
    ${ELEMENT}  Set Variable      xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Troca de Escala (Atualização)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

Acessar Tela Troca de Escala (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmtrocaescala
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Programação - Troca de Escala
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Troca de Escala (Inclusão)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END  
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código do Colaborador "${CODIGO}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${CODIGO}

Preencher o campo Data Inicial "${DATA_INICIAL}"
  Input Text  xpath=//*[@name="datainic"][@type="text"]  ${DATA_INICIAL}

Preencher o campo Data Final "${DATA_FINAL}"
  Input Text  xpath=//*[@name="datafina"][@type="text"]  ${DATA_FINAL}

Preencher o campo Escala "${ESCALA}"
  Click Element  xpath=//span[@class='select2-selection__arrow']
  Input Text     xpath=//input[@class='select2-search__field']   ${ESCALA}
  Sleep  2s
  Click Element  xpath=//form[@name='F1']


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


E verificar o campo Data Inicial 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_datainic']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_datainic']
	
	Element Should Contain  ${LABEL}  Data Inicial 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_datainic

E verificar o campo Data Final 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_datafina']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_datafina']
	
	Element Should Contain  ${LABEL}  Data Final
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_datafina

E verificar o campo Escala   
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_codiesca']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codiesca_obj']
	
	Element Should Contain  ${LABEL}  Escala
	Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single css_codiesca_obj