*** Settings ***
Library         SeleniumLibrary
Library         ../../api/data/client/person.py

Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***
${EMPR}  xpath=//select[@name='codiempr']
${MAT}   name=codimatr
${NOME}  xpath=//input[@name='padnome']
${APEL}  name=apelcola
${DATAADMI}  name=dataadmi
${DATANASC}  name=datanasc
${TIPOCONT}  id=select2-id_sc_field_tipocont-container
${SEXO}  id=select2-id_sc_field_sexocola-container
${CPF}  name=numecpf
${PIS}  name=numepis
${CODCOLAB}  name=codiresp

*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado
resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Cadastro de Terceiro
resource_mnu.Clicar No Menu Identificação | Colaborador | Parceiro
# SCREEN

# EMPREGADO EDITAR - 246 - 249 
Acessar Tela: Empregado (Edição)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmcolaborador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Empregado
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de Empregado
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe" 
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

# EMPREGADO INCLUIR - 246 - 249 
Acessar Tela: Empregado (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmcolaborador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Empregado
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de Empregado
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "Iframe_control_td" 
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

#EMPREGADO 
Voltar para Janela Cadastro de Empregado
  ${HANDLES}     Get Window Handles
  Switch Window  ${HANDLES}[0]
  Acessar Tela Cadastro de Empregado
  Sleep  3s

# TERCEIRO INCLUIR - 246 - 249 
Acessar Tela: Terceiro (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Terceiro
  ${APPNAME}     Set Variable  frmcolaborador
  ${ELEMENT}     Set Variable  xpath=(//td[contains(text(),'${SCREENNAME}')])[1]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"   
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#TERCEIRO EDITAR - 246 - 249 
Acessar Tela: Terceiro (Edição)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  frmcolaborador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Terceiro
    ${ELEMENT}     Set Variable  xpath=(//td[contains(text(),'Terceiro')])[1]
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de Terceiro
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

#PARCEIRO EDITAR - 246 - 249
Acessar Tela: Parceiro (Edição)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmcolaborador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Parceiro
     ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de Parceiro  
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe" 
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#PARCEIRO INCLUIR - 246 - 249
Acessar Tela Parceiro (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  frmcolaborador  
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"  
    ${SCREENNAME}  Set Variable  Parceiro
    ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'Parceiro')]
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de Parceiro  
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END  
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe" 
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

#VERIFY CAMPOS EMPREGADO - EDIÇÃO
Verificar a label: Chave Externa
	${LABEL}      Set Variable  xpath=//td[@id='hidden_field_label_external_key']
  ${VALOR}      Set Variable  xpath=//td[@id='hidden_field_data_external_key']
	Element Should Contain  ${LABEL}  Chave Externa
  Element Attribute Value Should Be  ${VALOR}   id   hidden_field_data_external_key  

Verificar a label: Código do Colaborador
	${LABEL}   Set Variable  xpath=(//span[contains(text(),'Código do Colaborador')])[1]
	Element Should Contain  ${LABEL}   Código do Colaborador	

Verificar a label: Empresa
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_codiempr']
	Element Should Contain  ${LABEL}  Empresa  

Verificar a label: Tipo de Colaborador
	${LABEL}   Set Variable  xpath=(//span[contains(text(),'Tipo de Colaborador')])[1]
	Element Should Contain  ${LABEL}   Tipo de Colaborador

Verificar a label: Matrícula
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_codimatr']
	Element Should Contain  ${LABEL}   Matrícula  

Verificar o campo: Nome  
	${LABEL}      Set Variable  xpath=//td[@id='hidden_field_label_padnome']
	${CAMPO}      Set Variable  xpath=//input[@name='padnome']
	Element Should Contain             ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name   padnome        

Verificar o campo: Apelido
	${LABEL}      Set Variable  xpath=//td[@id='hidden_field_label_apelcola']
	${CAMPO}      Set Variable  xpath=//input[@name='apelcola']
	Element Should Contain             ${LABEL}   Apelido
 	Element Attribute Value Should Be  ${CAMPO}   name  apelcola

Verificar a label: Situação
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Situação')]
  ${VALOR}      Set Variable  xpath=//td[@id='hidden_field_data_txtsitafa']
	Element Should Contain  ${LABEL}   Situação 
  Element Attribute Value Should Be  ${VALOR}   id   hidden_field_data_txtsitafa   

Verificar a label: Biometria
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Biometria')]
	Element Should Contain  ${LABEL}   Biometria 

Verificar a label: Utiliza Controle Biométrico
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_tipoutilbiom']
  ${VALOR}   Set Variable  xpath=//td[@id='hidden_field_data_tipoutilbiom']
	Element Should Contain  ${LABEL}   Utiliza Controle Biométrico	
  Element Attribute Value Should Be  ${VALOR}   id   hidden_field_data_tipoutilbiom

Verificar a label: Tipo
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_divbiometria']
  ${VALOR}   Set Variable  xpath=//td[@id='hidden_field_data_divbiometria']
	Element Should Contain  ${LABEL}   Tipo
  Element Attribute Value Should Be  ${VALOR}   id  hidden_field_data_divbiometria

Verificar a label: Geral
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Geral')]
	Element Should Contain  ${LABEL}   Geral   

Verificar o campo: Data de Admissão
	${LABEL}      Set Variable  xpath=//td[@id='hidden_field_label_dataadmi']
	${CAMPO}      Set Variable  xpath=//input[@name='dataadmi']
	Element Should Contain             ${LABEL}   Data de Admissão
 	Element Attribute Value Should Be  ${CAMPO}   name   dataadmi  

Verificar o campo: Data de Nascimento
	${LABEL}      Set Variable  xpath=//td[@id='hidden_field_label_datanasc']
	${CAMPO}      Set Variable  xpath=//input[@name='datanasc']
	Element Should Contain             ${LABEL}   Data de Nascimento	
 	Element Attribute Value Should Be  ${CAMPO}   name   datanasc    

Verificar o campo: Tipo de Contrato
	${LABEL}      Set Variable  xpath=//td[@id='hidden_field_label_tipocont']
	${CAMPO}      Set Variable  xpath=//span[@id='select2-id_sc_field_tipocont-container']
	Element Should Contain             ${LABEL}   Tipo de Contrato
 	Element Attribute Value Should Be  ${CAMPO}   id   select2-id_sc_field_tipocont-container     

Verificar o campo: Sexo
	${LABEL}      Set Variable  xpath=//td[@id='hidden_field_label_sexocola']
	${CAMPO}      Set Variable  xpath=//span[@id='select2-id_sc_field_sexocola-container']
	Element Should Contain             ${LABEL}   Sexo 
 	Element Attribute Value Should Be  ${CAMPO}   id   select2-id_sc_field_sexocola-container

Verificar o campo: Número do CPF
	${LABEL}      Set Variable  xpath=//td[@id='hidden_field_label_numecpf']
	${CAMPO}      Set Variable  xpath=//input[@name='numecpf']
	Element Should Contain             ${LABEL}   Número do CPF	
 	Element Attribute Value Should Be  ${CAMPO}   name   numecpf

Verificar o campo: Número do PIS	
	${LABEL}      Set Variable  xpath=//td[@id='hidden_field_label_numepis']
	${CAMPO}      Set Variable  xpath=//input[@name='numepis']
	Element Should Contain             ${LABEL}   Número do PIS	
 	Element Attribute Value Should Be  ${CAMPO}   name   numepis

Verificar a label: Dados do Histórico
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Dados do Histórico')]
	Element Should Contain  ${LABEL}   Dados do Histórico

Verificar a label: Filial
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_cmbr030fil']
  ${VALOR}   Set Variable  xpath=//td[@id='hidden_field_data_cmbr030fil']
	Element Should Contain  ${LABEL}   Filial
  Element Attribute Value Should Be  ${VALOR}   id   hidden_field_data_cmbr030fil

Verificar a label: Local
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_numr016orn']
  ${VALOR}   Set Variable  xpath=//td[@id='hidden_field_data_numr016orn']
	Element Should Contain  ${LABEL}   Local
  Element Attribute Value Should Be  ${VALOR}   id   hidden_field_data_numr016orn

Verificar a label: Cargo
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_numr024car']
  ${VALOR}   Set Variable  xpath=//td[@id='hidden_field_data_numr024car']
	Element Should Contain  ${LABEL}   Cargo
  Element Attribute Value Should Be  ${VALOR}   id   hidden_field_data_numr024car  

Verificar a label: Escala
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_cmbr006esc']
  ${VALOR}   Set Variable  xpath=//td[@id='hidden_field_data_cmbr006esc']
	Element Should Contain  ${LABEL}   Escala
  Element Attribute Value Should Be  ${VALOR}   id   hidden_field_data_cmbr006esc  

Verificar a label: Crachá
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_numr038hch']
  ${VALOR}   Set Variable  xpath=//td[@id='hidden_field_data_numr038hch']
	Element Should Contain  ${LABEL}   Crachá
  Element Attribute Value Should Be  ${VALOR}   id   hidden_field_data_numr038hch    

Verificar a label: Centro de Custo
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_txtr018ccu']
  ${VALOR}   Set Variable  xpath=//td[@id='hidden_field_data_txtr018ccu']
	Element Should Contain  ${LABEL}   Centro de Custo
  Element Attribute Value Should Be  ${VALOR}   id   hidden_field_data_txtr018ccu      

Verificar a label: Turno TOTVS
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_turno_totvs']
  ${VALOR}   Set Variable  xpath=//td[@id='hidden_field_data_turno_totvs']
	Element Should Contain  ${LABEL}   Turno TOTVS
  Element Attribute Value Should Be  ${VALOR}   id   hidden_field_data_turno_totvs  

Verificar o campo: Empresa Terceira	
	${LABEL}      Set Variable  xpath=//td[@id='hidden_field_label_txtr032oem']
	${CAMPO}      Set Variable  xpath=//input[@name='txtr032oem']
	Element Should Contain             ${LABEL}   Empresa Terceira
 	Element Attribute Value Should Be  ${CAMPO}   name   txtr032oem

Verificar a label: Contrato
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_txtr038hct']
  ${VALOR}   Set Variable  xpath=//td[@id='hidden_field_data_txtr038hct']
	Element Should Contain  ${LABEL}   Contrato
  Element Attribute Value Should Be  ${VALOR}   id   hidden_field_data_txtr038hct   

Verificar a label: Período Inicial
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_dtdatin']
  ${VALOR}   Set Variable  xpath=//td[@id='hidden_field_data_dtdatin']
	Element Should Contain  ${LABEL}   Período Inicial
  Element Attribute Value Should Be  ${VALOR}   id   hidden_field_data_dtdatin     

Verificar a label: Período Final
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_dtdatfim']
  ${VALOR}   Set Variable  xpath=//td[@id='hidden_field_data_dtdatfim']
	Element Should Contain  ${LABEL}   Período Final
  Element Attribute Value Should Be  ${VALOR}   id   hidden_field_data_dtdatfim     

Verificar a label: Tipo de Terceiro
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Tipo de Terceiro')]
  ${CAMPO}   Set Variable  xpath=//span[@id='select2-id_sc_field_tipoterc-container']
  Element Should Contain  ${LABEL}   Tipo de Terceiro
  Element Attribute Value Should Be  ${CAMPO}   id   select2-id_sc_field_tipoterc-container 
    
Verificar a label: Colaborador Responsável
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Colaborador Responsável')]
  Element Should Contain  ${LABEL}   Colaborador Responsável

Verificar o campo: Código do Colaborador	
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_codiresp']
  ${CAMPO}   Set Variable  xpath=//input[@name='codiresp']
  ${BTN}     Set Variable  xpath=//a[@id='cap_codiresp']
  Element Should Contain  ${LABEL}   Tipo de Terceiro
  Element Attribute Value Should Be  ${CAMPO}   id   select2-id_sc_field_tipoterc-container   
  Element Attribute Value Should Be  ${BTN}     id   cap_codiresp

Verificar a label: Nome Responsável
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_padnomeresp']
  ${VALOR}   Set Variable  xpath=//td[@id='hidden_field_data_padnomeresp']
  Element Should Contain  ${LABEL}   Nome
  Element Attribute Value Should Be  ${VALOR}   id   hidden_field_data_padnomeresp

Verificar a label: Empresa Responsável
	${LABEL}   Set Variable  xpath=//td[@id='hidden_field_label_padnumempresp']
  ${VALOR}   Set Variable  xpath=//td[@id='hidden_field_data_padnumempresp']
  Element Should Contain  ${LABEL}   Empresa
  Element Attribute Value Should Be  ${VALOR}   id   hidden_field_data_padnumempresp  



#INCLUSÃO e EDIÇÃO
Preencher o campo: Empresa "${EMPR}"
  Click Element   xpath=//span[@id='select2-id_sc_field_codiempr-container'] 
  Sleep  2s 
  Input text     xpath=//input[@class='select2-search__field']   ${EMPR}   
  Sleep  2s
  Click Element  xpath=(//li[contains(text(),'Automação')])[1]

Preencher o campo: Matrícula "${MAT}"
  Input text  xpath=//input[@name='codimatr'][@type="text"]  ${MAT}

Preencher o campo: Nome "${NOME}"
  Input text    xpath=//input[@name='padnome']  ${NOME} 

Preencher o campo: Apelido "${APEL}"  
  Input text  xpath=//input[@name='apelcola']  ${APEL}

Preencher o campo: Data de Admissão "${DATAADMI}"  
  Input text  xpath=//input[@name='dataadmi']  ${DATAADMI}

Preencher o campo: Data de Nascimento "${DATANASC}"   
  Input text  xpath=//input[@name='datanasc']  ${DATANASC}   

Preencher o campo: Tipo de Contrato * "${TIPOCONT}"
  Click Element  xpath=//span[@id='select2-id_sc_field_tipocont-container']  
  Input text     xpath=//input[@class='select2-search__field']  ${TIPOCONT}

Preencher o campo: Sexo * "${SEXO}"
  Click Element  xpath=//span[@id='select2-id_sc_field_sexocola-container']  
  Input text     xpath=//input[@class='select2-search__field']  ${SEXO}
  Click Element  xpath=//li[@class='select2-results__option select2-results__option--highlighted'] 

Preencher o campo: Número do CPF "${CPF}"
  Input text  xpath=//input[@name='numecpf']  ${CPF}

Preencher o campo: Número do PIS "${PIS}"
  Input text  xpath=//input[@name='numepis']  ${PIS}

Preencher o campo: Empresa Terceira "${EMPRTERC}"
  Input text  xpath=//input[@name='txtr032oem']  ${EMPRTERC}  

Preencher o campo: Tipo de Terceiro "${TIPOTERC}"
  Click Element  xpath=//span[@class='select2-selection select2-selection--single css_tipoterc_obj']
  Input text  xpath=//input[@class='select2-search__field']  ${TIPOTERC}  

Preencher o campo: Código do Colaborador "${CODCOLAB}"
  Input text  xpath=//input[@name='codiresp']  ${CODCOLAB}  


  

  



