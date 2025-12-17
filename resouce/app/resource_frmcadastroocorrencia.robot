*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Ocorrência | Cadastro

# SCREEN
Acessar Tela Cadastro de Ocorrências (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Ocorrências (Inclusão)
  ${APPNAME}  Set Variable  frmcadastroocorrencia
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Cadastro de Ocorrências (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Ocorrências (Atualização)
  ${APPNAME}  Set Variable  frmcadastroocorrencia
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Cód. Pessoa
  ${ELEMENT}  Set Variable  id=cap_idpessoa

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD 

Selecionar um item no campo Empresa "${EMPRESA}"
  Select from list by label  xpath=//*[@name="codiempr"]  ${EMPRESA}

Selecionar um item no campo Filial "${FILIAL}"
  Select from list by label  xpath=//*[@name="codifili"]  ${FILIAL}

Selecionar um item no campo Local "${LOCAL}"
  Select from list by label  xpath=//*[@name="locaorga"]  ${LOCAL}

Selecionar um item no campo Planta "${PLANTA}"
  Select from list by label  xpath=//*[@name="codiplan"]  ${PLANTA}

Selecionar um item no campo Portaria "${PORTARIA}"
  Select from list by label  xpath=//*[@name="codiport"]  ${PORTARIA}

Preencher o campo Data da Ocorrência "${DATA}"
  Input Text  xpath=//*[@name="dataocorport"][@type="text"]  ${DATA}

Preencher o campo Hora da Ocorrência "${HORA}"
  Input Text  xpath=//*[@name="horaocorport"][@type="text"]  ${HORA}

Selecionar o campo Tipo "${TIPO}"
  Select from list by label  xpath=//*[@name="tipoocor"]  ${TIPO}

Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="descocorport"][@type="text"]  ${DESCRICAO}

Preencher o campo Cód. Pessoa "${CODIGO}"
  Input Text  xpath=//*[@name="idpessoa"][@type="text"]  ${CODIGO}
  #Necessário clicar fora para validar a inserção
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[10]/td[1]


#VERIFY

E verificar o campo Empresa      
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/select
	
	Element Should Contain  ${LABEL}  Empresa 
	Element Attribute Value Should Be  ${CAMPO}  name  codiempr

E verificar o campo Filial     
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}  Filial
	Element Attribute Value Should Be  ${CAMPO}  name  codifili 

E verificar o campo Local     
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/select
	
	Element Should Contain  ${LABEL}  Local
	Element Attribute Value Should Be  ${CAMPO}  name  locaorga

E verificar o campo Planta 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select
	
	Element Should Contain  ${LABEL}  Planta 
	Element Attribute Value Should Be  ${CAMPO}  name  codiplan 

E verificar o campo Portaria 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/select
	
	Element Should Contain  ${LABEL}   Portaria
	Element Attribute Value Should Be  ${CAMPO}  name  codiport 

E verificar o campo Data da Ocorrência 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Data da Ocorrência  
	Element Attribute Value Should Be  ${CAMPO}  name  dataocorport

E verificar o campo Hora da Ocorrência 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}  Hora da Ocorrência  
	Element Attribute Value Should Be  ${CAMPO}  name  horaocorport

E verificar o campo Tipo 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/select
	
	Element Should Contain  ${LABEL}  Tipo   
	Element Attribute Value Should Be  ${CAMPO}  name  tipoocor 

E verificar o campo Descrição        
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/textarea
	
	Element Should Contain  ${LABEL}  Descrição  
	Element Attribute Value Should Be  ${CAMPO}  name  descocorport 

E verificar o campo Cód Pessoa 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Cód. Pessoa 
	Element Attribute Value Should Be  ${CAMPO}  name  idpessoa