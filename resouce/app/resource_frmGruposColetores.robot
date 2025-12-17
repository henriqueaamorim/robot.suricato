*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de Codin

# SCREEN
Acessar Tela Grupo de Codins (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable   Grupo de Codins (Atualização)
  ${APPNAME}  Set Variable   frmGruposColetores
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmGruposColetores_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Grupo de Codins (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"
    ${SCREENNAME}  Set Variable   Grupo de Codins
  ELSE
    ${SCREENNAME}  Set Variable   Grupo de Codins (Inclusão)
  END
  ${APPNAME}  Set Variable   frmGruposColetores
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_ iframe_frmGruposColetores_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME} 

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.



#FIELD 
Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${DESCRICAO}

Preencher o campo Nome do Aplicativo "${APLICATIVO}"
  Input Text  xpath=//*[@name="nomeaplicole"][@type="text"]  ${APLICATIVO}

Selecionar um item no campo Planta "${PLANTA}"
  Mudar Frame Aplicação "nmsc_iframe_liga_B_consplantaxcoletores"
  Select from list by label  xpath=//*[@name="idcolab"]  ${PLANTA}

Selecionar um item no campo Codin "${CODIN}"
  Select from list by label  xpath=//*[@name="idcolab"]  ${CODIN}
  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_consplantaxcoletores_2"


#VERIFY 

E verificar o campo Grupo    
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	
	Element Should Contain  ${LABEL}  Grupo
	

E verificar o campo Descrição               
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}  Descrição 
	Element Attribute Value Should Be  ${CAMPO}  name  descgrupcole

E verificar o Nome do Aplicativo 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}  Nome do Aplicativo 
	Element Attribute Value Should Be  ${CAMPO}  name  nomeaplicole