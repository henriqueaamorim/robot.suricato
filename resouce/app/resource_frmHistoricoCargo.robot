*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Cargo

# SCREEN
Acessar Tela Histórico de Cargos (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Histórico de Cargo
  ${APPNAME}  Set Variable  frmHistoricoCargo
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Histórico de Cargos (Edição)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Histórico de Cargo
  ${APPNAME}  Set Variable  frmHistoricoCargo
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON


#FIELD
Preencher o campo Código do Colaborador "${COD}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COD}
  #Necessário clicar fora para validar o registro
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Data da Alteração "${DATA}"
  Input Text  xpath=//*[@name="dataalte"][@type="text"]  ${DATA}

Preencher o campo Grupo de Cargos "${CARGO}"
  Input Text  xpath=//*[@name="codiestrcarg"][@type="text"]  ${CARGO}
    #Necessário clicar fora para validar o registro
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Novo Cargo "${NOVO_CARGO}"
  Input Text  xpath=//*[@name="codicarg"][@type="text"]  ${NOVO_CARGO}


#VERIFY 

E verificar o campo Código do Colaborador      
  ${LABEL}  Set Variable  xpath=//*[@id="hidden_field_label_idcolab"]
	${CAMPO}  Set Variable  xpath=//*[@id="id_sc_field_idcolab"]
	
	Element Should Contain  ${LABEL}  Código do Colaborador  
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_idcolab

E verificar o campo Empresa    
  ${LABEL}  Set Variable  xpath=//*[@id="hidden_field_label_padnumemp"]
  ${CAMPO}  Set Variable  xpath=//*[@id="hidden_field_data_padnumemp"]
	
	Element Should Contain  ${LABEL}  Empresa 
  Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnumemp
	

E verificar o campo Tipo
  ${LABEL}  Set Variable  xpath=//*[@id="hidden_field_label_padtipcol"]
  ${CAMPO}  Set Variable  xpath=//*[@id="hidden_field_data_padtipcol"]

	Element Should Contain  ${LABEL}  Tipo
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padtipcol
 
E verificar o campo Matrícula   
  ${LABEL}  Set Variable  xpath=//*[@id="hidden_field_label_padnumcad"]
  ${CAMPO}  Set Variable  xpath=//*[@id="hidden_field_data_padnumcad"]

	Element Should Contain  ${LABEL}  Matrícula
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnumcad
  
E verificar o campo Nome      
  ${LABEL}  Set Variable  xpath=//*[@id="hidden_field_label_padnome"]
  ${CAMPO}  Set Variable  xpath=//*[@id="hidden_field_data_padnome"]
	
	Element Should Contain  ${LABEL}  Nome
  Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnome

E verificar o campo Alteração          
  ${LABEL}  Set Variable  xpath=//*[@id="hidden_field_label_dataalte"]
	${CAMPO}  Set Variable  xpath=//*[@id="id_sc_field_dataalte"]
	
	Element Should Contain  ${LABEL}  Alteração 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_dataalte 

E verificar o campo Grupo de Cargo 
  ${LABEL}  Set Variable  xpath=//*[@id="hidden_field_label_codiestrcarg"]
	${CAMPO}  Set Variable  xpath=//*[@id="id_sc_field_codiestrcarg"]
	
	Element Should Contain  ${LABEL}  Grupo de Cargo
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_codiestrcarg 

E verificar o campo Cargo
  ${LABEL}  Set Variable  xpath=//*[@id="hidden_field_label_codicarg"]
	${CAMPO}  Set Variable  xpath=//*[@id="id_sc_field_codicarg"]
	
	Element Should Contain  ${LABEL}  Cargo 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_codicarg