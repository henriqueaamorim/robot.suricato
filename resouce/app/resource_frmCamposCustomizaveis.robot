*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Campos Customizáveis

# SCREEN
Acessar Tela: Campo não Customizavel - Consulta 
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmCamposCustomizaveis
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable    Campo não Customizavel
    ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Formulário de Campos Customizáveis
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela: Campo não Customizavel - Filtro 
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmCamposCustomizaveis
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Campo não Customizavel
    ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Formulário de Campos Customizáveis 
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.


Clicar No Botão Buscar Dados Externos Para Aplicação
  ${ELEMENT}  Set Variable  id=cap_application

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window


#VERIFY LABELS

Verificar a label: id
	${LABEL}   Set Variable  xpath=//div[contains(text(),'id')]
	Element Should Contain  ${LABEL}   id

Verificar a label: Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	Element Should Contain  ${LABEL}   Nome

Verificar a label: Tipo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo')]
	Element Should Contain  ${LABEL}   Tipo

Verificar a label: Tamanho do Campo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tamanho do Campo')]
	Element Should Contain  ${LABEL}   Tamanho do Campo

Verificar a label: Aplicação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Aplicação')]
	Element Should Contain  ${LABEL}   Aplicação


#VERIFY CAMPOS

Verificar o campo Nome *
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	  ${CAMPO}      Set Variable  xpath=//input[@name='name']
	Element Should Contain  ${LABEL}   Nome
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input
	Element Should Contain  ${LABEL}   Nome *
	END
 	Element Attribute Value Should Be  ${CAMPO}   name   name
    

Verificar o campo Tipo *
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo')]
	  ${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain  ${LABEL}   Tipo
 	Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Tipo *
 	Element Attribute Value Should Be  ${CAMPO}   name   type
    END

Verificar o campo Tamanho do Campo *
	  ${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Tamanho do Campo *
 	Element Attribute Value Should Be  ${CAMPO}   name   length

Verificar o campo Aplicação *
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}      Set Variable  xpath=//td[contains(text(),'Aplicação')]
	  ${CAMPO}      Set Variable  xpath=//input[@name='application']
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
	END
	Element Should Contain  ${LABEL}   Aplicação
 	Element Attribute Value Should Be  ${CAMPO}   name   application


Verificar o campo Titulo Campo em Português *
	  ${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Titulo Campo em Português *
 	Element Attribute Value Should Be  ${CAMPO}   name   idioma_pt

Verificar o campo Titulo Campo em Espanhol *
	  ${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Titulo Campo em Espanhol *
 	Element Attribute Value Should Be  ${CAMPO}   name   idioma_es

Verificar o campo Titulo Campo em Inglês *
	  ${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Titulo Campo em Inglês *
 	Element Attribute Value Should Be  ${CAMPO}   name   idioma_en


#FIELD
Preencher o campo Nome "${NOME}"
	Input Text  xpath=//*[@name="name"][@type="text"]  ${NOME}
	
Selecionar uma opção no campo Tipo "${TIPO}"
	Select From List By Label  xpath=//*[@name="type"]  ${TIPO}

Preencher o campo Tamanho do Campo "${TAMANHO}"
	Input Text  xpath=//*[@name="length"][@type="text"]  ${TAMANHO}
	
Preencher o campo Aplicação "${APP}"
	Input Text  xpath=//*[@name="application"][@type="text"]  ${APP}
	#Necessário clicar fora para validar a inserção do registro
	Click Element  xpath=//*[@id="id_label_application"]
	
Preencher o campo Titulo Campo em Português "${PT}"
	Input Text  xpath=//*[@name="idioma_pt"][@type="text"]  ${PT}
	
Preencher o campo Titulo Campo em Espanhol "${ES}"
	Input Text  xpath=//*[@name="idioma_es"][@type="text"]  ${ES}
	
Preencher o campo Titulo Campo em Inglês "${EN}"
	Input Text  xpath=//*[@name="idioma_en"][@type="text"]  ${EN}
	