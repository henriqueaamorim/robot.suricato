*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Escala

# SCREEN
Acessar Tela Histórico de Escalas (Edição)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmHistoricoEscala
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Histórico de Escala
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Histórico de Escalas (Edição)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
 
  Mudar Frame Aplicação "mnu_iframe"    
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Histórico de Escalas (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmHistoricoEscala
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Histórico de Escala
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE  
    ${SCREENNAME}  Set Variable  Histórico de Escala (Inclusão) 
    ${ELEMENT}  Set Variable    xpath=//*[contains(text(),'${SCREENNAME}')])[2]
  END
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
  Sleep  2s

Preencher o campo Data da Alteração "${DATA}"
  Input Text  xpath=//*[@name="dataalte"][@type="text"]  ${DATA}

Selecionar uma opção no campo Escala "${ESCALA}" 
  Sleep  2s
  Click Element   xpath=//span[@id='select2-id_sc_field_codiesca-container']
  Input Text      xpath=//input[@class='select2-search__field']  "${ESCALA}" 
  #Necessário clicar fora para validar o registro
  Click Element   xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

#VERIFY 
Verificar o campo Chave Externa
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_external_key']
  ${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_external_key']
	Element Should Contain  ${LABEL}  Chave Externa
  Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_external_key

Verificar o campo Código do Colaborador 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_idcolab']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_idcolab']
	Element Should Contain  ${LABEL}  Código do Colaborador 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_idcolab 

Verificar o campo Empresa    
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumemp']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnumemp']
  Element Should Contain  ${LABEL}  Empresa
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnumemp

Verificar o campo Tipo de Colaborador    
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padtipcol']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padtipcol']
  Element Should Contain  ${LABEL}  Tipo
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padtipcol
  
Verificar o campo Matrícula    
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumcad']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnumcad']
  Element Should Contain  ${LABEL}  Matrícula
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnumcad

Verificar o campo Nome       
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnome']
	${CAMPO}  Set Variable  xpath=//td[@class='scFormDataFontOdd css_padnome_line']
  Element Should Contain  ${LABEL}  Nome
	Element Attribute Value Should Be  ${CAMPO}  class  scFormDataFontOdd css_padnome_line

Verificar o campo Data da Alteração 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_dataalte']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_dataalte']
  Element Should Contain  ${LABEL}  Data da Alteração
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_dataalte

Verificar o campo Escala  
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_codiesca']
	${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_codiesca-container']
  Element Should Contain  ${LABEL}  Escala
	Element Attribute Value Should Be  ${CAMPO}  id  select2-id_sc_field_codiesca-container