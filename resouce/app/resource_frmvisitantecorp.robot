*** Settings ***
Library         SeleniumLibrary
Library         ../../api/data/client/person.py

Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Visitante | Cadastro de Visitante

# SCREEN
Acessar Tela Cadastro de Visitantes (Atualização)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmvisitantecorp
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Visitante
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE 
    ${SCREENNAME}  Set Variable  Cadastro de Visitantes (Atualização)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Cadastro de Visitantes (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmvisitantecorp  
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"  
    ${SCREENNAME}  Set Variable   Visitante
    ${ELEMENT}  Set Variable      xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de Visitantes (Inclusão)
    ${ELEMENT}  Set Variable     xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END  

  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
Clicar No Botão Buscar Dados Externos Para Empresa Terceira
  ${ELEMENT}  Set Variable  id=cap_codiemprcont

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window


# FIELD
Preencher o campo Tipo do Documento "${IDENTIDADE}"
  ${ELEMENT}  Set Variable   xpath=//span[@id='select2-id_sc_field_tipodocuvisi-container']
  ${CAMPO}  Set Variable   xpath=//input[@class='select2-search__field']
 
  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}
  Input Text  ${CAMPO}  ${IDENTIDADE}  
  

Preencher o campo Número do Documento "${DOCUMENTO}"
  ${ELEMENT}  Set Variable  xpath=//input[@name="numedocuvisi"][@type="text"]

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Input Text                     ${ELEMENT}   ${DOCUMENTO}



Preencher o campo Data de Emissão do Documento "${DATA_EMISSAO}"
  ${ELEMENT}  Set Variable  xpath=//input[@id="id_sc_field_dataemis"]  

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Input Text                     ${ELEMENT}   ${DATA_EMISSAO}

Preencher o campo Estado Emissor * "${ESTADO}"
  ${ELEMENT}  Set Variable  xpath=//input[@id="id_sc_field_estaemiscart"][@type="text"]

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}   ${ESTADO}    

Preencher o campo Órgão Emissor * "${ORGAO}"
  ${ELEMENT}  Set Variable  xpath=//input[@id="id_sc_field_orgaemiscart"][@type="text"]

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}   ${ORGAO}      

Preencher o campo Nome "${NOME}"
  ${ELEMENT}  Set Variable  xpath=//input[@id="id_sc_field_nomepess"][@type="text"]

  IF  '${NOME}' == 'API'
    ${NOME}  Run Keyword   Nome Completo
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${NOME}

Preencher o campo Número de Telefone "${TELEFONE}"
  ${ELEMENT}  Set Variable  xpath=//input[@id="id_sc_field_numetele"][@type="text"]

  IF  '${TELEFONE}' == 'API'
    ${TELEFONE}  Run Keyword   Celular  unidecode=True
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${TELEFONE}

Preencher o campo E-mail do Visitante "${EMAIL}"
  ${ELEMENT}  Set Variable  xpath=//input[@id="id_sc_field_mailvisit"][@type="text"]

  IF  '${EMAIL}' == 'API'
    ${EMAIL}  Run Keyword   Email Profissional
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${EMAIL}

Preencher o campo Empresa Terceira "${TERCEIRA}"
  Input Text  xpath=//*[@name="codiemprcont"][@type="text"]  ${TERCEIRA}

Selecionar uma opção no campo Portador de Necessidades Especiais - PNE? "${OPCAO}"
  Select from list by Label  xpath=//*[@name="portnessespe"]  ${OPCAO}

Preencher o campo Observação "${OBS}"
  Input Text  xpath=//*[@name="obsevisi"]  ${OBS}

#Area Alfandegada - LDC

Selecionar uma opção no campo: Tipo de Documento "${AREA_ALFA}" (Area Alfandegada) 
  Wait Until Element Is Visible    xpath=//select[@id='id_sc_field_tipodocualfa']  
  Select From List By Label    xpath=//select[@id='id_sc_field_tipodocualfa']   ${AREA_ALFA}

Preencher o campo Número do Documento "${IDENTIDADE}" (Area Alfandegada)
  Wait Until Element Is Visible    xpath=//input[@id='id_sc_field_numedocualfa']
  Input Text   xpath=//input[@id='id_sc_field_numedocualfa']   ${IDENTIDADE} 
 
Preencher o campo Função Exercida "${FUNCAO}" (Area Alfandegada) 
  Input Text   xpath=//input[@name='funcexer']   ${FUNCAO}  

Selecionar uma opção no campo Tipo Pessoa Física "${TIP_PESSOA}" (Area Alfandegada) 
  Wait Until Element Is Visible    xpath=//select[@id='id_sc_field_codipessfisi']
  Select From List By Label    xpath=//select[@id='id_sc_field_codipessfisi']   ${TIP_PESSOA}


Preencher o campo CPF "${CPF}" (Area Alfandegada) 
  ${ELEMENT}   Set Variable   xpath=//input[@name='numecpf']   

  Sleep  2s
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Input Text                     ${ELEMENT}   ${CPF} 

Preencher o campo CEP "${CEP}" (Area Alfandegada) 
  Input Text      xpath=//input[@id='id_sc_field_codicep']   ${CEP}   

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

Selecionar uma opção no campo Estado "${ESTADO}" (Area Alfandegada) 
  Wait Until Element Is Visible    xpath=//select[@id='id_sc_field_nomeesta']
  Select From List By Label   xpath=//select[@id='id_sc_field_nomeesta']   ${ESTADO}      


#VERIFY 

E verificar o campo Tipo de Documento 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_tipodocuvisi']
	${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_tipodocuvisi-container']
	
	Element Should Contain  ${LABEL}  Tipo de Documento   
	Element Attribute Value Should Be  ${CAMPO}  id  select2-id_sc_field_tipodocuvisi-container

E verificar o campo Número do Documento 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_numedocuvisi']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_numedocuvisi']
	Element Should Contain  ${LABEL}  Número do Documento 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_numedocuvisi

E verificar o campo Data de Emissão do Documento	             
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_dataemis']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_dataemis']
	
	Element Should Contain  ${LABEL}  Data de Emissão do Documento	  
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_dataemis  

E verificar o campo Estado Emissor            
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_estaemiscart']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_estaemiscart']
	
	Element Should Contain  ${LABEL}  Estado Emissor  
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_estaemiscart 

E verificar o campo Órgão Emissor  
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_orgaemiscart']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_orgaemiscart']
	
	Element Should Contain  ${LABEL}  Órgão Emissor   
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_orgaemiscart      

E verificar o campo Nome             
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_nomepess']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_nomepess']
	
	Element Should Contain  ${LABEL}  Nome  
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_nomepess

E verificar o campo Email             
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_mailvisit']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_mailvisit']
	
	Element Should Contain  ${LABEL}  Email  
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_mailvisit

E verificar o campo Número de Telefone	             
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_numetele']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_numetele']
	
	Element Should Contain  ${LABEL}  Número de Telefone	  
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_numetele  

E verificar o campo Empresa Terceira            
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_codiemprcont']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_codiemprcont']
	
	Element Should Contain  ${LABEL}   Empresa Terceira 	  
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_codiemprcont    

E verificar o campo PNE 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_portnessespe']
	${CAMPO1}  Set Variable  xpath=//input[@id='id-opt-portnessespe-0']
  ${CAMPO2}  Set Variable  xpath=//input[@id='id-opt-portnessespe-1']
	
	Element Should Contain  ${LABEL}   PNE 
	Element Attribute Value Should Be  ${CAMPO1}  id  id-opt-portnessespe-0      
  Element Attribute Value Should Be  ${CAMPO2}  id  id-opt-portnessespe-1     

E verificar o campo Observação         
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_obsevisi']
	${CAMPO}  Set Variable  xpath=//textarea[@id='id_sc_field_obsevisi']
	
	Element Should Contain  ${LABEL}   Observação 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_obsevisi   

#Area Alfandegada - LDC
E verificar o campo Tipo de Documento (Area Alfandegada)           
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_tipodocualfa']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_tipodocualfa_obj']
	
	Element Should Contain  ${LABEL}   Tipo de Documento	  
	Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single css_tipodocualfa_obj 

E verificar o campo Número do Documento (Area Alfandegada)              
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_numedocualfa']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_numedocualfa']
	
	Element Should Contain  ${LABEL}  Número do Documento	 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_numedocualfa  

E verificar o campo Função Exercida (Area Alfandegada)              
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_funcexer']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_funcexer']
	
	Element Should Contain  ${LABEL}   Função Exercida
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_funcexer    

E verificar o campo Tipo Pessoa Física (Area Alfandegada)              
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_codipessfisi']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codipessfisi_obj']
	
	Element Should Contain  ${LABEL}   Tipo Pessoa Física	
	Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single css_codipessfisi_obj

E verificar o campo CPF (Area Alfandegada)              
  ${LABEL}  Set Variable  xpath=//*[@id="hidden_field_label_numecpf"]
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_numecpf']
	
	#Element Should Contain  ${LABEL}  CPF
	Element Attribute Value Should Be  ${CAMPO}   id   id_sc_field_numecpf   

E verificar o campo CEP (Area Alfandegada)              
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_codicep']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_codicep']
	
	#Element Should Contain  ${LABEL}  CEP
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_codicep    

E verificar o campo Endereço (Area Alfandegada)              
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_enderesi']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_enderesi']
	
	#Element Should Contain  ${LABEL}   Endereço
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_enderesi     

E verificar o campo Número (Area Alfandegada)              
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_numeende']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_numeende']
	
	#Element Should Contain  ${LABEL}   Número
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_numeende   

E verificar o campo Complemento (Area Alfandegada)              
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_compende']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_compende']
	
	#Element Should Contain  ${LABEL}   Complemento
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_compende         

E verificar o campo Bairro (Area Alfandegada)              
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_nomebair']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_nomebair']
	
	#Element Should Contain  ${LABEL}   Bairro
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_nomebair   

E verificar o campo Cidade (Area Alfandegada)              
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_nomecida']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_nomecida']
	
	#Element Should Contain  ${LABEL}   Cidade
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_nomecida     

E verificar o campo Estado (Area Alfandegada)              
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_nomeesta']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_nomeesta_obj']
	
	#Element Should Contain  ${LABEL}   Estado
	Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single css_nomeesta_obj      