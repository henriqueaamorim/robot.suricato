*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Local

# SCREEN
Acessar Tela Histórico de Local (Edição)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmHistoricoLocal
  ${SCREENNAME}  Set Variable  Histórico de Local
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'Histórico de Local')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Histórico de Local (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmHistoricoLocal
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Histórico de Local
    ${ELEMENT}  Set Variable    xpath=(//td[contains(text(),'${SCREENNAME}')])[1]
  ELSE
    ${SCREENNAME}  Set Variable  Histórico de Local (Inclusão)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Local do Organograma
  ${ELEMENT}  Set Variable  id=cap_locaorga

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD
Preencher o campo Código do Colaborador "${COD}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COD}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Data de Alteração "${DATA}"
  Input Text  xpath=//*[@name="dataalte"][@type="text"]  ${DATA}

Preencher o campo Organograma "${ORGANOGRAMA}"
  Input Text  xpath=//*[@name="codiorgaloca"][@type="text"]  ${ORGANOGRAMA}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Local do Organograma "${LOCAL}"
  Input Text  xpath=//*[@name="locaorga"][@type="text"]  ${LOCAL}
  #Necessário clicar fora para validar a inserção
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
	
E verificar o campo Tipo do Colaborador 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padtipcol']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padtipcol']
	Element Should Contain  ${LABEL}  Tipo do Colaborador 
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
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_dataalte']
	Element Should Contain  ${LABEL}  Alteração 
  Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_dataalte
	
E verificar o campo Organograma 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_codiorgaloca']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_codiorgaloca']
	Element Should Contain  ${LABEL}  Organograma 
  Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_codiorgaloca

E verificar o campo Local do Organograma 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_locaorga']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_locaorga']
	Element Should Contain  ${LABEL}  Local do Organograma  
  Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_locaorga
  
	