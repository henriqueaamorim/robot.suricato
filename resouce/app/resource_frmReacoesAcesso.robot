*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Alarme | Reação de Acesso

# SCREEN
Acessar Tela Reações de Acesso (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Reação de Acesso
  ELSE
    ${SCREENNAME}  Set Variable  Reações de Acesso (Inclusão)
  END
  ${APPNAME}  Set Variable  frmReacoesAcesso
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Reações de Acesso (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Reações de Acesso (Atualização)
  ${APPNAME}  Set Variable  frmReacoesAcesso
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON



Clicar No Botão Buscar Dados Externos Para Codin
  ${ELEMENT}  Set Variable  xpath=//*[@id="cap_codicole"]

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}
  Sleep  1s
  Click Element  ${ELEMENT}

  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Sleep  2s
    Mudar Frame Aplicação "TB_iframeContent"
  ELSE
    Switch Window  locator=NEW
    Maximize Browser Window
  END

Clicar No Botão Buscar Dados Externos Para Tipo do Acesso
  ${ELEMENT}  Set Variable  id=cap_tipoaces

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}
    Sleep  1s
  Click Element  ${ELEMENT}
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Sleep  2s
    Mudar Frame Aplicação "TB_iframeContent"
  ELSE
    Switch Window  locator=NEW
    Maximize Browser Window
  END

#FIELD
Preencher o campo Planta "${PLANTA}"
  Input Text  xpath=//*[@name="codiplan"][@type="text"]  ${PLANTA}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Codin "${CODIN}"
  Input Text  xpath=//*[@name="codicole"][@type="text"]  ${CODIN}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Tipo de Acesso "${ACESSO}"
  Input Text  xpath=//*[@name="tipoaces"][@type="text"]  ${ACESSO}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Reação "${REACAO}"
  Input Text  xpath=//*[@name="codireac"][@type="text"]  ${REACAO}
    #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

#VERIFY

E verificar o campo Planta 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Planta  
	Element Attribute Value Should Be  ${CAMPO}  name  codiplan

E verificar o campo Codin 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Codin  
	Element Attribute Value Should Be  ${CAMPO}  name  codicole

E verificar o campo do Acesso 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Tipo do Acesso  
	Element Attribute Value Should Be  ${CAMPO}  name  tipoaces

E verificar o campo Reação 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Reação 
	Element Attribute Value Should Be  ${CAMPO}  name  codireac