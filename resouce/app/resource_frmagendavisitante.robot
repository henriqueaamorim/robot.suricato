*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento Visitante

# SCREEN
Acessar Tela Agendamento de Visitas - Visitante (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Agendamento de Visitante
  ${APPNAME}  Set Variable    frmagendavisitante
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Agendamento de Visitas - Visitante (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Agendamento de Visitante
  ${APPNAME}  Set Variable    frmagendavisitante
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Solicitação de Visita
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Solicitação de Visita
  ${APPNAME}  Set Variable  frmagendavisitante
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.

#FIELD 
Preencher o campo Data Prevista "${DATA}"
  Input Text    xpath=//*[@name="dataprev"][@type="text"]    ${DATA}

Preencher o campo Hora Prevista "${HORA}"
  Input Text    xpath=//*[@name="horaprevsc9bugfixed"][@type="text"]   ${HORA}

Preencher o campo Tipo de Visita "${TIPO}"
  Select From List By Label      xpath=//select[@id="id_sc_field_tipovisi"]  ${TIPO}  

Preencher o campo Hora Validade "${HORA}"
  Input Text    xpath=//*[@name="horavaliauto"][@type="text"]   ${HORA}  

Preencher o campo Código do Visitado "${CODIGO}"
  Input Text    xpath=//*[@name="idcolab"][@type="text"]   ${CODIGO}
  # Necessário clicar fora para salvar o registro
  Click Element    xpath=//*[@id="hidden_bloco_1"]/tbody/tr[2]/td[1]

Preencher o campo Código do Visitante "${CODIGO}"
  Input Text    xpath=//*[@name="idvisi"][@type="text"]    ${CODIGO}
    # Necessário clicar fora para salvar o registro
  Click Element    xpath=//*[@id="hidden_bloco_2"]/tbody/tr[2]/td[1]

Selecionar uma opção no campo Tipo do Documento "${TIPO}"
  Select From List By Label   xpath=//*[@name="padtipdoc"]  ${TIPO}

Preencher o campo Número do Documento "${NUM}"
  Input Text    xpath=//*[@name="padnumdoc"][@type="text"]  ${NUM}

Preencher o campo Nome do Visitante "${NOME}"
  Input Text    xpath=//*[@name="padnomevis"][@type="text"]  ${NOME}

Preencher o campo Telefone do Visitante "${TELEFONE}"
  Input Text  xpath=//*[@name="numetelegrup"][@type="text"]  ${TELEFONE}

Preencher o campo E-mail do Visitante "${EMAIL}"
  Input Text  xpath=//*[@name="mailvisit"][@type="text"]  ${EMAIL}

Preencher o campo Código Empresa Terceira "${CODIGO}"
  Input Text  xpath=//*[@name="codiemprcont"][@type="text"]  ${CODIGO}
    # Necessário clicar fora para salvar o registro
  Click Element    xpath=//*[@id="hidden_bloco_2"]/tbody/tr[8]/td[1]

Selecionar uma opção no campo Tipo de Visita "${VISITA}"
  Select From List By Label   xpath=//*[@name="tipovisi"]  ${VISITA}

Preencher o campo Grupo de Acesso do Visitante "${GRUPO}"
  Input Text    xpath=//*[@name="codiperm"][@type="text"]    ${GRUPO}
    # Necessário clicar fora para salvar o registro
  Click Element    xpath=//*[@id="hidden_bloco_2"]/tbody/tr[10]/td[1]

Preencher o campo Data de Validade da Visita "${VALIDADE}"
  Input Text    xpath=//*[@name="datavali"][@type="text"]  ${VALIDADE}

Preencher o campo Observação "${OBSERVACAO}"
  Input Text  xpath=//textarea[@id="id_sc_field_obsevisi"]  ${OBSERVACAO}

Clicar na opção "Sim" no campo Autoriza Entrada do Veículo do Visitante
  Click Element  xpath=//*[@name="autoentrveic[]"][@type="text"]

E preencher o campo Código do Veículo "${COD}"
  Input Text  xpath=//*[@name="idveic"][@type="text"]  ${COD}
    # Necessário clicar fora para salvar o registro
  Click Element  xpath=//*[@id="hidden_bloco_4"]/tbody/tr[2]/td[1]


S#Area Alfandegada - LDC

Preencher o campo Tipo de Documento "${AREA_ALFA}" (Area Alfandegada) 
  ${ELEMENT}  Set Variable   //span[@class='select2-selection select2-selection--single css_codipessfisi_obj']
  ${CAMPO}  Set Variable     xpath=//input[@class='select2-search__field']
 
  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}
  Input Text  ${CAMPO}   ${AREA_ALFA}

Preencher o campo Número do Documento "${IDENTIDADE}" (Area Alfandegada) 
  Input Text   xpath=//input[@id='id_sc_field_numedocualfa']  ${IDENTIDADE} 
 
Preencher o campo Função Exercida "${FUNCAO}" (Area Alfandegada) 
  Input Text   xpath=//input[@name='funcexer']  ${FUNCAO}  

Preencher o campo Tipo Pessoa Física "${TIP_PESSOA}" (Area Alfandegada) 
  ${ELEMENT1}  Set Variable   xpath=(//span[@class='select2-selection__arrow'])[2]     
  ${CAMPO}    Set Variable   xpath=//input[@class='select2-search__field']    
   

  Wait Until Element Is Visible    ${ELEMENT1}  
  Click Element  ${ELEMENT1}  
  Input Text  ${CAMPO}  ${TIP_PESSOA} 


Preencher o campo CPF "${CPF}" (Area Alfandegada) 
  ${ELEMENT}   Set Variable   xpath=//input[@name='numecpf']   

  Sleep  2s
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Input Text                     ${ELEMENT}   ${CPF} 

Preencher o campo CEP "${CEP}" (Area Alfandegada) 
  Input Text      xpath=//input[@name='numecpf']   ${CEP}   

Preencher o campo Endereço "${ENDERECO}" (Area Alfandegada) 
  Input Text      xpath=//input[@name='enderesi']   ${ENDERECO}  

Preencher o campo Número "${NUMERO}" (Area Alfandegada) 
  Input Text      xpath=//input[@name='numeende']   ${NUMERO}    

Preencher o campo Complemento "${COMP}" (Area Alfandegada) 
  Input Text      xpath=//input[@name='compende']   ${COMP} 

Preencher o campo Bairro "${BAIRRO}" (Area Alfandegada) 
  Input Text      xpath=//input[@name='nomebair']   ${BAIRRO}   

Preencher o campo Cidade "${CID}" (Area Alfandegada) 
  Input Text      xpath=//input[@name='nomecida']   ${CID}    

Preencher o campo Estado "${ESTADO}" (Area Alfandegada) 
  Click Element   xpath=//span[@class='select2-selection select2-selection--single css_nomeesta_obj']
  Input Text      xpath=//input[@class='select2-search__field']   ${ESTADO}      




#VERIFY


E verificar o campo Data Prevista
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_dataprev']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_dataprev']
	
	Element Should Contain  ${LABEL}    Data Prevista
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_dataprev

E verificar o campo Hora Prevista
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_horaprevsc9bugfixed']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_horaprevsc9bugfixed']
	
	Element Should Contain  ${LABEL}    Hora Prevista
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_horaprevsc9bugfixed

E verificar o campo Tipo de Visita
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_tipovisi']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_tipovisi_obj']
	
	Element Should Contain  ${LABEL}    Tipo de Visita
	Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single css_tipovisi_obj

E verificar o campo Data Validade
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_datavali']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_datavali']
	
	Element Should Contain  ${LABEL}    Data Validade
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_datavali

E verificar o campo Hora Validade
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_horavaliauto']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_horavaliauto']
	
	Element Should Contain  ${LABEL}    Hora Validade
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_horavaliauto	

E verificar o campo Código Grupo de Acesso
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_codiperm']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_codiperm']
	
	Element Should Contain  ${LABEL}    Código Grupo de Acesso
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_codiperm		

E verificar o campo Grupo de Acesso	
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_descperm']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_descperm']
	
	Element Should Contain  ${LABEL}    Grupo de Acesso	
	Element Attribute Value Should Be   ${CAMPO}  id  hidden_field_data_descperm	

E verificar o campo Autoriza Entrada com Veículo
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_autoentrveic']
	${CAMPO1}  Set Variable  xpath=//input[@id='id-opt-autoentrveic-0']
	${CAMPO2}  Set Variable  xpath=//input[@id='id-opt-autoentrveic-1']
	
	Element Should Contain  ${LABEL}    Autoriza Entrada com Veículo
	Element Attribute Value Should Be   ${CAMPO1}  id  id-opt-autoentrveic-0
	Element Attribute Value Should Be   ${CAMPO2}  id  id-opt-autoentrveic-1	

E verificar o campo Crachá Automático	
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_icard']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_icard']
	
	Element Should Contain  ${LABEL}    Crachá Automático	
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_icard

#Visitado
E verificar o campo Código (Visitado)
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_idcolab']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_idcolab']
	
	Element Should Contain  ${LABEL}    Código 
	Element Attribute Value Should Be   ${CAMPO}  id  id_sc_field_idcolab

E verificar o campo Empresa (Visitado)
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumemp']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnumemp']
	
	Element Should Contain  ${LABEL}    Empresa  
	Element Attribute Value Should Be   ${CAMPO}  id  hidden_field_data_padnumemp

E verificar o campo Tipo (Visitado) 
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padtipcol']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padtipcol']
	
	Element Should Contain  ${LABEL}    Tipo  
	Element Attribute Value Should Be   ${CAMPO}  id  hidden_field_data_padtipcol

E verificar o campo Matrícula (Visitado)
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumcad']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnumcad']
	
	Element Should Contain  ${LABEL}    Matrícula  
	Element Attribute Value Should Be   ${CAMPO}  id  hidden_field_data_padnumcad

E verificar o campo Nome (Visitado)
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnomecol']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnomecol']
	
	Element Should Contain  ${LABEL}    Nome   
	Element Attribute Value Should Be   ${CAMPO}  id  hidden_field_data_padnomecol

#Visitante
E verificar o campo Código (Visitante)
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_idvisi']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_idvisi']
	
	Element Should Contain  ${LABEL}    Código   
	Element Attribute Value Should Be   ${CAMPO}  id  id_sc_field_idvisi

E verificar o campo Tipo do Documento (Visitante)
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padtipdoc']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padtipdoc']
	
	Element Should Contain  ${LABEL}    Tipo do Documento   
	Element Attribute Value Should Be   ${CAMPO}  id  hidden_field_data_padtipdoc

E verificar o campo Número do Documento (Visitante)   
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumdoc']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnumdoc']
	
	Element Should Contain  ${LABEL}    Número do Documento  
	Element Attribute Value Should Be   ${CAMPO}  id  hidden_field_data_padnumdoc

E verificar o campo Nome (Visitante)
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnomevis']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnomevis']
	
	Element Should Contain  ${LABEL}    Nome
	Element Attribute Value Should Be   ${CAMPO}  id  hidden_field_data_padnomevis

E verificar o campo Telefone (Visitante)
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_numetelegrup']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_numetelegrup']
	
	Element Should Contain  ${LABEL}    Telefone
	Element Attribute Value Should Be   ${CAMPO}  id  hidden_field_data_numetelegrup

E verificar o campo Código Empresa Terceira (Visitante)
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_codiemprcont']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_codiemprcont']
	
	Element Should Contain  ${LABEL}    Código Empresa Terceira
	Element Attribute Value Should Be   ${CAMPO}  id  id_sc_field_codiemprcont

E verificar o campo Empresa Terceira (Visitante)	
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnomeemprcont']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnomeemprcont']
	
	Element Should Contain  ${LABEL}    Empresa Terceira	
	Element Attribute Value Should Be   ${CAMPO}  id  hidden_field_data_padnomeemprcont

E verificar o campo E-mail (Visitante)	
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_mailvisit']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_mailvisit']
	
	Element Should Contain  ${LABEL}    E-mail	
	Element Attribute Value Should Be   ${CAMPO}  id  hidden_field_data_mailvisit

E verificar o campo Observação (Visitante)  
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_obsevisi']
	${CAMPO}  Set Variable  xpath=//textarea[@id='id_sc_field_obsevisi']
	
	Element Should Contain  ${LABEL}    Observação	
	Element Attribute Value Should Be   ${CAMPO}  id  id_sc_field_obsevisi

#Veículo
E verificar o campo Código (Veículo)   
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_idveic']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_idveic']
	
	Element Should Contain  ${LABEL}     Código	
	Element Attribute Value Should Be   ${CAMPO}  id  id_sc_field_idveic

E verificar o campo Placa (Veículo)  
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padplacveic']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padplacveic']
	
	Element Should Contain  ${LABEL}     Placa	
	Element Attribute Value Should Be    ${CAMPO}  id  hidden_field_data_padplacveic

E verificar o campo Cor (Veículo)
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padcorveic']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padcorveic']
	
	Element Should Contain  ${LABEL}     Cor	
	Element Attribute Value Should Be    ${CAMPO}  id  hidden_field_data_padcorveic

E verificar o campo Marca (Veículo)    
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padmarcveic']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padmarcveic']
	
	Element Should Contain  ${LABEL}     Marca	
	Element Attribute Value Should Be    ${CAMPO}  id  hidden_field_data_padmarcveic


E verificar o campo Modelo (Veículo)     
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padmodeveic']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padmodeveic']
	
	Element Should Contain  ${LABEL}     Modelo	
	Element Attribute Value Should Be    ${CAMPO}  id  hidden_field_data_padmodeveic

#Área Alfandegada LDC
E verificar o campo Número do Documento	   
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_numedocualfa']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_numedocualfa']
	
	#Element Should Contain  ${LABEL}     Número do Documento		
	Element Attribute Value Should Be    ${CAMPO}  id  id_sc_field_numedocualfa

E verificar o campo Função Exercida	
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_funcexer']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_funcexer']
	
	#Element Should Contain  ${LABEL}     Função Exercida
	Element Attribute Value Should Be    ${CAMPO}  id  id_sc_field_funcexer	

E verificar o campo Tipo Pessoa Fisica	
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_codipessfisi']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codipessfisi_obj']
	
	#Element Should Contain  ${LABEL}     Tipo Pessoa Fisica		
	Element Attribute Value Should Be    ${CAMPO}  class  select2-selection select2-selection--single css_codipessfisi_obj
	
E verificar o campo Número do CPF	
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_numecpf']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_numecpf']
	
	#Element Should Contain  ${LABEL}     Número do CPF	
	Element Attribute Value Should Be    ${CAMPO}  id  id_sc_field_numecpf	

E verificar o campo CEP
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_codicep']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_codicep']
	
	#Element Should Contain  ${LABEL}     CEP
	Element Attribute Value Should Be    ${CAMPO}  id  id_sc_field_codicep		

E verificar o campo Endereço
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_enderesi']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_enderesi']
	
	#Element Should Contain  ${LABEL}     Endereço
	Element Attribute Value Should Be    ${CAMPO}  id  id_sc_field_enderesi	

E verificar o campo Número	
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_numeende']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_numeende']
	
	#Element Should Contain  ${LABEL}     Número	
	Element Attribute Value Should Be    ${CAMPO}  id  id_sc_field_numeende	

E verificar o campo Complemento	
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_compende']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_compende']
	
	#Element Should Contain  ${LABEL}     Complemento	
	Element Attribute Value Should Be    ${CAMPO}  id  id_sc_field_compende		

E verificar o campo Bairro	
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_nomebair']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_nomebair']
	
	#Element Should Contain  ${LABEL}     Bairro	
	Element Attribute Value Should Be    ${CAMPO}  id  id_sc_field_nomebair		

E verificar o campo Cidade	
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_nomecida']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_nomecida']
	
	#Element Should Contain  ${LABEL}     Cidade	
	Element Attribute Value Should Be    ${CAMPO}  id  id_sc_field_nomecida		

E verificar o campo Estado	
 	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_nomeesta']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_nomeesta_obj']
	
	#Element Should Contain  ${LABEL}     Estado	
	Element Attribute Value Should Be    ${CAMPO}  class  select2-selection select2-selection--single css_nomeesta_obj			



