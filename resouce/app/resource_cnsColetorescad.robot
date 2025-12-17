*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Cadastro de Codin

# SCREEN
Acessar Tela Consulta de Codins
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
       ${SCREENNAME}  Set Variable  Codin
  ELSE
      ${SCREENNAME}  Set Variable   Consulta de Codins
  END
  ${APPNAME}  Set Variable    cnsColetorescad
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'Codin')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela: Codin (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Codin
  ${APPNAME}     Set Variable  cnsColetorescad
  ${ELEMENT}     Set Variable  xpath=(//td[@class='scFilterHeaderFont'])[4]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.



#FIELD
Selecionar uma opção no campo Planta "${PLANTA}"
  Select From List By Label  xpath=//*[@name="codiplan"]   ${PLANTA}

Preencher o campo Código do Codin "${COD}"
  Input Text  xpath=//*[@name="codicole"][@type="text"]   ${COD}

Preencher o campo Endereço IP "${IP}"
  Input Text  xpath=//*[@name="numeendecole"][@type="text"]   ${IP}

Preencher o campo Identificador "${IDENT}"
  Input Text  xpath=//*[@name="numeidencole"][@type="text"]   ${IDENT}

Preencher o campo INDELEVEL "${INDELEVEL}"
  Input Text  xpath=//*[@name="indelevel"][@type="text"]   ${INDELEVEL}

Selecionar uma opção no campo Localização do Codin "${CODIN}"
  Select From List By Label  xpath=//*[@name="locacole[]"]  ${CODIN}

Preencher o campo Descrição do Codin "${CODIN}"
  Input Text  xpath=//*[@name="desccole"][@type="text"]   ${CODIN}

Selecionar uma opção no campo Equipamento Biométrico "${EQUIP}"
  Input Text  xpath=//*[@name="tipobiom"]   ${EQUIP}

Selecionar uma opção no campo Status do Equipamento "${EQUIP}"
  Input Text  xpath=//*[@name="funccole"]   ${EQUIP}


#VERIFY LABELS

Verificar a label Planta
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Planta')]
	Element Should Contain  ${LABEL}   Planta

Verificar a label Código do Codin
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Codin')]
	Element Should Contain  ${LABEL}   Código do Codin

Verificar a label Descrição do Codin
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição do Codin')]
	Element Should Contain  ${LABEL}   Descrição do Codin

Verificar a label Endereço IP
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Endereço IP')]
	Element Should Contain  ${LABEL}   Endereço IP     

Verificar a label Identificador
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Identificador')]
	Element Should Contain  ${LABEL}   Identificador

Verificar a label INDELEVEL
	${LABEL}   Set Variable  xpath=//div[contains(text(),'INDELEVEL')]
	Element Should Contain  ${LABEL}   INDELEVEL

Verificar a label Localização do Codin
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Localização do Codin')]
	Element Should Contain  ${LABEL}   Localização do Codin

Verificar a label Equipamento Biométrico
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Equipamento Biométrico')]
	Element Should Contain  ${LABEL}   Equipamento Biométrico

Verificar a label Status do Equipamento
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Status do Equipamento')]
	Element Should Contain  ${LABEL}   Status do Equipamento
     

#VERIFY CAMPOS

Verificar o campo Endereço IP	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Endereço IP')]
	${CAMPO}      Set Variable  xpath=//input[@name='numeendecole']

	Element Should Contain             ${LABEL}   Endereço IP	
 	Element Attribute Value Should Be  ${CAMPO}   name    numeendecole

Verificar o campo Identificador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Identificador')]
	${CAMPO}      Set Variable  xpath=//input[@name='numeidencole']

	Element Should Contain             ${LABEL}   Identificador	
 	Element Attribute Value Should Be  ${CAMPO}   name    numeidencole

Verificar o campo INDELEVEL	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'INDELEVEL')]
	${CAMPO}      Set Variable  xpath=//input[@name='indelevel']

	Element Should Contain             ${LABEL}   INDELEVEL	
 	Element Attribute Value Should Be  ${CAMPO}   name    indelevel

Verificar o campo Localização do Codin	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Localização do Codin')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--multiple']

	Element Should Contain             ${LABEL}   Localização do Codin	
 	Element Attribute Value Should Be  ${CAMPO}   class    select2-selection select2-selection--multiple

Verificar o campo Descrição do Codin	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição do Codin')]
	${CAMPO}      Set Variable  xpath=//input[@name='desccole']

	Element Should Contain             ${LABEL}   Descrição do Codin	
 	Element Attribute Value Should Be  ${CAMPO}   name   desccole

Verificar o campo Equipamento Biométrico	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Equipamento Biométrico')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]

	Element Should Contain             ${LABEL}   Equipamento Biométrico	
 	Element Attribute Value Should Be  ${CAMPO}   class    select2-selection select2-selection--single

Verificar o campo Status do Equipamento	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Status do Equipamento')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]

	Element Should Contain             ${LABEL}   Status do Equipamento	
 	Element Attribute Value Should Be  ${CAMPO}   class    select2-selection select2-selection--single

