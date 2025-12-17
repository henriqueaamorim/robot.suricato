*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Filial

# SCREEN
Acessar Tela Histórico de Filial (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Histórico de Filial
  ELSE
    ${SCREENNAME}  Set Variable  Histórico de Filial (Inclusão)
  END
  ${APPNAME}  Set Variable  frmHistoricoFilial
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Histórico de Filial (Edição)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Histórico de Filial
  ${APPNAME}  Set Variable  frmHistoricoFilial
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'Histórico de Filial')]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Grupo de Cargos
  ${ELEMENT}  Set Variable  id=cap_codiestrcarg

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Novo Local
  ${ELEMENT}  Set Variable  id=cap_locaorga

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD

Preencher o campo Código do Colaborador "${COD}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COD}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Empresa "${EMP}"
  Input Text  xpath=//*[@name="padnuemp"][@type="text"]  ${EMP}

Selecionar uma opção no campo Tipo de Colaborador "${TIPO}" 
  Select From List By Label  xpath=//*[@name="padtipcol"]  ${TIPO}

Preencher o campo Matrícula "${MAT}"
  Input Text  xpath=//*[@name="padnumcad"][@type="text"]  ${MAT} 

Preencher o campo Nome "${NOME}"    
  Input Text  xpath=//*[@name="padnome"][@type="text"]  ${NOME}        

Preencher o campo Alteração "${DATA}"
  Input Text  xpath=//*[@name="dataalte"][@type="text"]  ${DATA}

Preencher o campo Nova Filial "${NFILIAL}"
  Input Text  xpath=//*[@name="codifili"][@type="text"]  ${NFILIAL}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[7]/td[1]


#VERIFY 

Verificar o campo Código do Colaborador 
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Código do Colaborador')]
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_idcolab']
	
	Element Should Contain  ${LABEL}  Código do Colaborador 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_idcolab

Verificar o campo Empresa    
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Empresa')]
	${CAMPO}  Set Variable  xpath=//td[@class='scFormDataFontOdd css_padnuemp_line']
	
	Element Should Contain  ${LABEL}  Empresa
	Element Attribute Value Should Be  ${CAMPO}  class  scFormDataFontOdd css_padnuemp_line

Verificar o campo Tipo 
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Tipo')]
	${CAMPO}  Set Variable  xpath=//td[@class='scFormDataFontOdd css_padtipcol_line']
	
	Element Should Contain  ${LABEL}  Tipo
	Element Attribute Value Should Be  ${CAMPO}  class  scFormDataFontOdd css_padtipcol_line

Verificar o campo Matrícula    
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Matrícula')]
	${CAMPO}  Set Variable  xpath=//td[@class='scFormDataFontOdd css_padnumcad_line']
	
	Element Should Contain  ${LABEL}  Matrícula
	Element Attribute Value Should Be  ${CAMPO}  class  scFormDataFontOdd css_padnumcad_line

Verificar o campo Nome       
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Nome')]
	${CAMPO}  Set Variable  xpath=//td[@class='scFormDataFontOdd css_padnome_line']
	
	Element Should Contain  ${LABEL}  Nome
	Element Attribute Value Should Be  ${CAMPO}  class  scFormDataFontOdd css_padnome_line

Verificar o campo Alteração                                     
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Alteração')]
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_dataalte']
	
	Element Should Contain  ${LABEL}  Alteração 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_dataalte

Verificar o campo Filial 
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Filial')]
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_codifili']
	
	Element Should Contain  ${LABEL}  Filial 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_codifili