*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Tipo de Contrato

# SCREEN
Acessar Tela Formulário de Cadastro de Tipo de Usuário (Inclusão)(Edição)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frm_tipoUsuario
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Formulário de Cadastro de Tipo de Usuário
    ${ELEMENT}  Set Variable      xpath=//td[contains(text(),'${SCREENNAME}')]   
  ELSE 
    ${SCREENNAME}  Set Variable  Formulário de Cadastro de Tipo de Usuário
    ${ELEMENT}  Set Variable    xpath=//*[@align='right'][contains(text(),'${SCREENNAME}')]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Tipo de Usuário "${TIPO}"
  Input Text  xpath=//*[@name="tipousuar1"][@type="text"]  ${TIPO}

#VERIFY

E verificar o campo Cód Tipo 

  ${LABEL}  Set Variable  xpath=td[@id='hidden_field_label_idtipousuar']
	${CAMPO}  Set Variable  xpath=td[@id='hidden_field_data_idtipousuar']
	
	Element Should Contain  ${LABEL}   Cód Tipo 
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_idtipousuar
  
E verificar o campo Tipo de Usuário 
  
  ${LABEL}  Set Variable  xpath=td[@id='hidden_field_label_tipousuar']
	${CAMPO}  Set Variable  xpath=input[@id='id_sc_field_tipousuar']
	
	Element Should Contain  ${LABEL}   Tipo de Usuário  
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_tipousuar  