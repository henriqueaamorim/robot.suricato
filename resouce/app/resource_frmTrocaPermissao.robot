*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Grupo de Acesso

# SCREEN
Acessar Tela Troca de Grupo de Acesso (Atualização)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmTrocaPermissao
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Programação - Troca de Grupo de Acesso
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'Programação - Troca de Grupo de Acesso')]
  ELSE  
    ${SCREENNAME}  Set Variable  Troca de Grupo de Acesso (Atualização)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Troca de Grupo de Acesso (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmTrocaPermissao
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Programação - Troca de Grupo de Acesso
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'Programação - Troca de Grupo de Acesso')]
  ELSE  
    ${SCREENNAME}  Set Variable  Troca de Grupo de Acesso (Inclusão)
    ${ELEMENT}  Set Variable    xpath=//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON

Clicar No Botão Buscar Dados Externos Para Grupo de Acesso para Dias Normais
  ${ELEMENT}  Set Variable  id=cap_codiperm

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD
Preencher o campo Código do Colaborador "${CODIGO}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${CODIGO}
  # Necessário clicar fora para salvar o registro
  Click Element    xpath=//*[@id="hidden_bloco_1"]/tbody/tr[6]/td[2]

Preencher o campo Data Inicial "${DATA}"
  Input Text  xpath=//input[@id="id_sc_field_datainic"][@type="text"]  ${DATA}

Preencher o campo Data Final "${DATA}"
  Input Text  xpath=//*[@name="datafina"][@type="text"]  ${DATA}

Preencher o campo Hora Final "${HORA}"
  Input Text  xpath=//*[@name="horafina"][@type="text"]  ${HORA}

Preencher o campo Código do Autorizador "${CODIGO}"
  Input Text  xpath=//*[@name="idcolaautolibe"][@type="text"]  ${CODIGO}
  # Necessário clicar fora para salvar o registro
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[5]/td[1]
  
Preencher o campo Grupo de Acesso para Dias Normais "${NORMAL}"
  Input Text  xpath=//*[@name="codiperm"][@type="text"]  ${NORMAL}

Preencher o campo Grupo de Acesso para Sábado "${SABADO}"
  Input Text  xpath=//*[@name="permacessaba"][@type="text"]  ${SABADO}

Preencher o campo Grupo de Acesso para Domingo "${DOMINGO}"
  Input Text  xpath=//*[@name="permacesdomi"][@type="text"]  ${DOMINGO}

Preencher o campo Grupo de Acesso para Feriado "${FERIADO}"
  Input Text  xpath=//*[@name="permacesferi"][@type="text"]  ${FERIADO}

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
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnomecol']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnomecol']
	
	Element Should Contain  ${LABEL}  Nome   
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnomecol  

E verificar o campo Data Inicial                     
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_datainic']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_datainic']
	
	Element Should Contain  ${LABEL}  Data Inicial       
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_datainic  

E verificar o campo Hora Inicial 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_horainicsc9bugfixed']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_horainicsc9bugfixed']
	
	Element Should Contain  ${LABEL}   Hora Inicial    
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_horainicsc9bugfixed  

E verificar o campo Dia Útil
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_codiperm']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_codiperm']
	
	Element Should Contain  ${LABEL}   Dia Útil
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_codiperm  

E verificar o campo Sábado 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_permacessaba']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_permacessaba']
	
	Element Should Contain  ${LABEL}   Sábado
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_permacessaba  

E verificar o campo Domingo 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_permacesdomi']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_permacesdomi']
	
	Element Should Contain  ${LABEL}   Domingo
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_permacesdomi  

E verificar o campo Feriado 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_permacesferi']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_permacesferi']
	
	Element Should Contain  ${LABEL}   Feriado
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_permacesferi  

E verificar o campo Data Final 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_datafina']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_datafina']
	
	Element Should Contain  ${LABEL}   Data Final
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_datafina  

E verificar o campo Hora Final 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_horafina']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_horafina']
	
	Element Should Contain  ${LABEL}   Hora Final
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_horafina  

E verificar o campo Código do Autorizador 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_idcolaautolibe']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_idcolaautolibe']
	
	Element Should Contain  ${LABEL}   Código do Autorizador 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_idcolaautolibe  

E verificar o campo Empresa do Autorizador 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumempaut']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnumempaut']
	
	Element Should Contain  ${LABEL}   Empresa
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnumempaut  


E verificar o campo Tipo do Autorizador 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padtipcolaut']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padtipcolaut']
	
	Element Should Contain  ${LABEL}   Tipo do Autorizador 
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padtipcolaut  
	

E verificar o campo Matrícula (Autorizador)
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumcadaut']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnumcadaut']
	
	Element Should Contain  ${LABEL}   Matrícula
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnumcadaut  
	

E verificar o campo Nome (Autorizador)
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnomeaut']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnomeaut']
	
	Element Should Contain  ${LABEL}   Nome
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnomeaut  


