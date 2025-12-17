*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Local

# SCREEN
Acessar Tela Consulta de Locais
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsLocais
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Local
    ${ELEMENT}     Set Variable  xpath=//*[@id="sc_grid_head"]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]
  ELSE    
    ${SCREENNAME}  Set Variable  Consulta de Locais
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END  
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

Acessar Tela Local (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsLocais
  ${SCREENNAME}  Set Variable  Local
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'Local (Filtro)')]
   
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
#resource_btn.



#FIELD
Preencher o campo Organograma "${ORGANOGRAMA}"
	Input Text  xpath=//*[@name="codiorgaloca"][@type="text"]  ${ORGANOGRAMA}

Preencher o campo Local do Organograma "${LOCAL_DO_ORGANOGRAMA}"
	Input Text  xpath=//input[@id='SC_nomeloca']   ${LOCAL_DO_ORGANOGRAMA}

Preencher o campo Descrição "${DESCRIÇÃO}"
	Input Text  xpath=//*[@name="nomeloca"][@type="text"]  ${DESCRIÇÃO}

