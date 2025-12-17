*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Candidato | Agendamento

# SCREEN
Acessar Tela Agendamento de Candidato (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Agendamento de Candidato (Atualização)
  ${APPNAME}  Set Variable  frmagendamentoimprensa
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Agendamento de Candidato (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Agendamento de Candidato (Inclusão)
  ${APPNAME}  Set Variable  frmagendamentoimprensa
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  




#BUTTON
#resource_btn.
# FIELD
Preencher o campo Data do Agendamento "${DATA}"
  Input Text  xpath=//input[@id='id_sc_field_dataagencand']  ${DATA}

Preencher o campo Hora do Agendamento "${HORA}"
  Input Text  xpath=//input[@id="id_sc_field_horaagencandsc9bugfixed"]  ${HORA}

Preencher o campo Candidato "${CANDIDATO}"
  Input Text  xpath=//*[@name="idcand"][@type="text"]  ${CANDIDATO}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]



#VERIFY

E verificar o campo Data do Agendamento 
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_dataagencand']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_dataagencand']
	
	Element Should Contain  ${LABEL}  Data 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_dataagencand  

E verificar o campo Hora do Agendamento 
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_horaagencandsc9bugfixed']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_horaagencandsc9bugfixed']
	
	Element Should Contain  ${LABEL}  Hora
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_horaagencandsc9bugfixed

E verificar o campo Candidato 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_idcand']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_idcand']
	
	Element Should Contain  ${LABEL}  Candidato  
	Element Attribute Value Should Be  ${CAMPO}  id   id_sc_field_idcand

E verificar o campo Nome 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_idcand']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_nomepess']
	
	Element Should Contain  ${LABEL}   Nome  
	Element Attribute Value Should Be  ${CAMPO}  id   hidden_field_data_nomepess  

E verificar o campo CPF 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_numecpf']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_numecpf']
	
	Element Should Contain  ${LABEL}   CPF  
	Element Attribute Value Should Be  ${CAMPO}  id   hidden_field_data_numecpf  

E verificar o campo Carteira de Identidade	 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_numecartiden']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_numecartiden']
	
	Element Should Contain  ${LABEL}   Carteira de Identidade	  
	Element Attribute Value Should Be  ${CAMPO}  id   hidden_field_data_numecartiden   

E verificar o campo Foto
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_foto']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_foto']
	
	Element Should Contain  ${LABEL}   Foto
	Element Attribute Value Should Be  ${CAMPO}  id   hidden_field_data_foto           