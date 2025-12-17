*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | CFTV

# SCREEN
Acessar Tela Servidor CFTV (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Servidor CFTV (Atualização)
  ${APPNAME}  Set Variable  frmservicftv
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmservicftv_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Servidor CFTV (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Servidor CFTV
  ELSE
    ${SCREENNAME}  Set Variable  Servidor CFTV (Inclusão)
  END
  ${APPNAME}  Set Variable  frmservicftv
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  IF  "${SERVER}" == "172.16.14.248" or "${SERVER}" == "172.16.14.249"
    Mudar Frame Aplicação "mnu_iframe"
    Mudar Frame Aplicação "nmsc_iframe_frmservicftv_1"
  END

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON


#FIELD
Preencher o campo Código "${CODIGO}"
  Input Text  xpath=//*[@name="codiservcftv"][@type="text"]  ${CODIGO}

Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="nomeserv"][@type="text"]  ${NOME}

Preencher o campo Endereço IP "${IP}"
  Input Text  xpath=//*[@name="endeip"][@type="text"]  ${IP}

Preencher o campo Porta "${PORTA}"  
  Input Text  xpath=//*[@name="portcomu"][@type="text"]  ${PORTA}

Preencher o campo Usuário "${USUARIO}"
  Input Text  xpath=//*[@name="usuacftv"][@type="text"]  ${USUARIO}

Preencher o campo Senha "${SENHA}"
  Input Text  xpath=//*[@name="senhcftv"][@type="text"]  ${SENHA}

Selecionar uma opção no campo Fabricante "${FABRICANTE}"
  Select from list by label  xpath=//*[@name="tipocftv"]  ${FABRICANTE}

Preencher o campo URL "${URL}"
  Input Text  xpath=//*[@name="weblink"][@type="text"]  ${URL}


#VERIFY

E verificar o campo Código 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}  Código 
	Element Attribute Value Should Be  ${CAMPO}  name  codiservcftv

E verificar o campo Nome                                              
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}  Nome 
	Element Attribute Value Should Be  ${CAMPO}  name  nomeserv

E verificar o campo Endereço IP   
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}  Endereço IP
	Element Attribute Value Should Be  ${CAMPO}  name  endeip

E verificar o campo Porta 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}  Porta
	Element Attribute Value Should Be  ${CAMPO}  name  portcomu

E verificar o campo Usuário 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input
	
	Element Should Contain  ${LABEL}  Usuário
	Element Attribute Value Should Be  ${CAMPO}  name  usuacftv

E verificar o campo Senha 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}  Senha
	Element Attribute Value Should Be  ${CAMPO}  name  senhcftv

E verificar o campo Fabricante  
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input
	
	Element Should Contain  ${LABEL}  Fabricante
	Element Attribute Value Should Be  ${CAMPO}  name  weblink

E verificar o campo URL
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/select
	
	Element Should Contain  ${LABEL}  URL
	Element Attribute Value Should Be  ${CAMPO}  name  tipocftv
