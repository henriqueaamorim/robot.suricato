*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Horário

# SCREEN
Acessar Tela Troca de Horário (Edição)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Programação - Troca de Horário
  ${APPNAME}  Set Variable  frmtrocahorario
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Programação - Troca de Horário (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Programação - Troca de Horário
  ${APPNAME}  Set Variable  frmtrocahorario
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON
#resource_btn.

#FIELD

Preencher o campo Código do Colaborador "${CODIGO}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[2]/input[1]    ${CODIGO}
  # Necessário clicar fora para salvar a alteração
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[5]/td[1]

Selecionar um item no campo Novo Horário "${HORARIO}"
  Select From List By Label    name=codihora   ${HORARIO}


Preencher o campo Novo Horário * "${HORARIO}"
  Click Element    xpath=//span[@id='select2-id_sc_field_codihora-container']
  Input Text    xpath=//input[@class="select2-search__field"]    ${HORARIO}
  # Necessário clicar fora para salvar a alteração
  Sleep  2s
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[5]/td[1]

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

E verificar o campo Data da Troca 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_datainic']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_datainic']
	
	Element Should Contain  ${LABEL}  Data da Troca  
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_datainic

E verificar o campo Novo Horário 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_codihora']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codihora_obj']
	
	Element Should Contain  ${LABEL}  Novo Horário   
	Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single css_codihora_obj