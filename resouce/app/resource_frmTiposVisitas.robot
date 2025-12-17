*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Visitante | Tipo de Visita

# SCREEN
Acessar Tela Tipos de Visitas (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Tipo de Visita
  ${APPNAME}  Set Variable  frmTiposVisitas
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Tipos de Visitas (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Tipo de Visita
  ${APPNAME}  Set Variable  frmTiposVisitas
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="desctipovisi"][@type="text"]  ${DESCRICAO}

Preencher o campo Tempo de Visita "${TEMPO}"
  Input Text  xpath=//*[@name="horalimivisi"][@type="text"]  ${TEMPO}

Preencher o campo Horário Limite de Visita "${LIMITE}"
  Input Text  xpath=//*[@name="horalimi"][@type="text"]  ${LIMITE}

Marcar a opção "Sim" no campo Bloqueio automático após saída do visitante
  Click Element  xpath=//input[@id='id-opt-bloqacessaid-0']

Marcar a opção "Sim" no campo Baixa automática na saída do visitante 
  Click Element  xpath=//input[@id='id-opt-baixautocrac-0']

Selecionar uma opção no campo Tipo de Visitante "${TIPO}"
  Select from list by label  xpath=//*[@name="visitipo"]  ${TIPO}

Marcar a opção "Sim" no campo Gera créditos de acesso para o visitante
  Click Element  xpath=//input[@id='id-opt-credrefevisi-0']

Selecionar uma opção no campo Controla créditos de acesso "${CREDITO}"
  Select from list by label  xpath=//*[@name="contcredrefe"]  ${CREDITO}

Marcar a opção "Sim" no campo Controla anti-dupla
  Click Element  xpath=//input[@id='id-opt-contantidupl-0']

Selecionar uma opção no campo Controle biométrico "${BIO}"  
  Select from list by label  xpath=//*[@name="contbiom"]  ${BIO}

Marcar a opção "Sim" no campo Controla Vídeo de Segurança
  Click Element  xpath=//input[@id='id-opt-padassivide-0']

Preencher o campo Validade do Vídeo de Segurança "${VALIDADE}"
  Input Text  xpath=//input[@id="id_sc_field_padvalividesegu"][@type="text"]  ${VALIDADE}

Selecionar uma opção no campo Liberação de entrada Automatica "${ENTRADA}"
  Select from list by label  xpath=//*[@name="libeentrauto"]  ${ENTRADA}

#VERIFY

E verificar o campo Descrição     
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_desctipovisi']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_desctipovisi']
	
	Element Should Contain  ${LABEL}  Descrição  
	Element Attribute Value Should Be  ${CAMPO}  id   id_sc_field_desctipovisi

E verificar o campo Tempo de visita  
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_horalimivisi']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_horalimivisi']
	
	Element Should Contain  ${LABEL}   Tempo de visita 
	Element Attribute Value Should Be  ${CAMPO}  id   id_sc_field_horalimivisi

E verificar o campo Horário limite de visita 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_horalimi']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_horalimi']
	
	Element Should Contain  ${LABEL}   Horário limite da visita 
	Element Attribute Value Should Be  ${CAMPO}  id   id_sc_field_horalimi

E verificar o campo Bloqueio automático após saída do visitante 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_bloqacessaid']
	${CAMPO1}  Set Variable  xpath=//input[@id='id-opt-bloqacessaid-0']
  ${CAMPO2}  Set Variable  xpath=//input[@id='id-opt-bloqacessaid-1']
	
	Element Should Contain  ${LABEL}   Bloqueio automático após saída do visitante
	Element Attribute Value Should Be  ${CAMPO1}  id   id-opt-bloqacessaid-0
  Element Attribute Value Should Be  ${CAMPO2}  id   id-opt-bloqacessaid-1

E verificar o campo Baixa automática na saída do visitante 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_baixautocrac']
	${CAMPO1}  Set Variable  xpath=//input[@id='id-opt-baixautocrac-0']
  ${CAMPO2}  Set Variable  xpath=//input[@id='id-opt-baixautocrac-1']
	
	Element Should Contain  ${LABEL}   Baixa automática na saída do visitante
	Element Attribute Value Should Be  ${CAMPO1}  id   id-opt-baixautocrac-0
  Element Attribute Value Should Be  ${CAMPO2}  id   id-opt-baixautocrac-1

E verificar o campo Tipo de visitante   
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_visitipo']
	${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_visitipo-container']
	
	Element Should Contain  ${LABEL}   Tipo de visitante
	Element Attribute Value Should Be  ${CAMPO}  id   select2-id_sc_field_visitipo-container

E verificar o campo Gera créditos de acesso para o visitante 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_credrefevisi']
	${CAMPO1}  Set Variable  xpath=//input[@id='id-opt-credrefevisi-0']
  ${CAMPO2}  Set Variable  xpath=//input[@id='id-opt-credrefevisi-1']
	
	Element Should Contain  ${LABEL}   Gera créditos de acesso para o visitante
	Element Attribute Value Should Be  ${CAMPO1}  id   id-opt-credrefevisi-0
  Element Attribute Value Should Be  ${CAMPO2}  id   id-opt-credrefevisi-1

E verificar o campo Controla créditos de acesso 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_contcredrefe']
	${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_contcredrefe-container']
	
	Element Should Contain  ${LABEL}   Controla créditos de acesso 
	Element Attribute Value Should Be  ${CAMPO}  id   select2-id_sc_field_contcredrefe-container

E verificar o campo Controla anti-dupla
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_contantidupl']
	${CAMPO1}  Set Variable  xpath=//input[@id='id-opt-contantidupl-0']
  ${CAMPO2}  Set Variable  xpath=//input[@id='id-opt-contantidupl-1']
	
	Element Should Contain  ${LABEL}   Controla anti-dupla
	Element Attribute Value Should Be  ${CAMPO1}  id   id-opt-contantidupl-0
  Element Attribute Value Should Be  ${CAMPO2}  id   id-opt-contantidupl-1

E verificar o campo Controle biométrico 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_contbiom']
	${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_contbiom-container']
	
	Element Should Contain  ${LABEL}   Controle biométrico 
	Element Attribute Value Should Be  ${CAMPO}  id   select2-id_sc_field_contbiom-container

E verificar o campo Controla Vídeo de Segurança 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padassivide']
	${CAMPO1}  Set Variable  xpath=//input[@id='id-opt-padassivide-0']
  ${CAMPO2}  Set Variable  xpath=//input[@id='id-opt-padassivide-1']
	
	Element Should Contain  ${LABEL}   Controla Vídeo de Segurança 
	Element Attribute Value Should Be  ${CAMPO1}  id   id-opt-padassivide-0
  Element Attribute Value Should Be  ${CAMPO2}  id   id-opt-padassivide-1

E verificar o campo Liberação de entrada Automatica  
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_libeentrauto']
	${CAMPO1}  Set Variable  xpath=//span[@id='select2-id_sc_field_libeentrauto-container']
	
	Element Should Contain  ${LABEL}   Liberação de entrada Automatica 
	Element Attribute Value Should Be  ${CAMPO1}  id   select2-id_sc_field_libeentrauto-container

