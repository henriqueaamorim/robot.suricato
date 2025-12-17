*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Organograma

# SCREEN
Acessar Tela Consulta de Estrutura de Organograma
  ${OBJ}         Set Variable  Scn
  ${APPNAME}     Set Variable  consestruturaorganograma
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Estrutura de Organograma
    ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Estrutura de Organograma
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


Acessar Tela Consulta de Estrutura de Organograma (Filtro)
  ${OBJ}         Set Variable  Scn
  ${APPNAME}     Set Variable  consestruturaorganograma
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Estrutura de Organograma
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Estrutura de Organograma (Filtro)
  END
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')][1]
  
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Sleep  5s
    Mudar Frame Aplicação "TB_iframeContent"
  END
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON


#FIELD
Selecionar uma opção no campo Código "${COD}"
  Select from list by label  xpath=//*[@name="codiorgaloca_cond"]  ${COD}

Selecionar uma opção no campo Descrição "${DESC}"
  Select from list by label  xpath=//*[@name="nomeorga_cond"]  ${DESC}

# Field (Filtro)
Preencher o campo Código "${COD}"
  Input Text  xpath=//*[@name="codiorgaloca"][@type="text"]  ${COD}

Preencher o campo Descrição "${DESC}"
  Input Text  xpath=//*[@name="nomeorga"][@type="text"]  ${DESC}


#VERIFY

Verificar a label Código
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_codiorgaloca_label']
	Element Should Contain  ${LABEL}   Código

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_nomeorga_label']
	Element Should Contain  ${LABEL}   Descrição



#VERIFY (FILTRO)

Verificar a label Pesquisa 
	${LABEL}   Set Variable  xpath=//td[@class='scFilterBlockBack']
	Element Should Contain  ${LABEL}   Pesquisa 

Verificar o campo Código
	${LABEL}      Set Variable  xpath=//td[@id='SC_codiorgaloca_label']
	${CHECKBOX}   Set Variable  xpath=//input[@id='SC_codiorgaloca']

	Element Should Contain  ${LABEL}   Código
 	Element Attribute Value Should Be  ${CHECKBOX}   name   codiorgaloca

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=//td[@id='SC_nomeorga_label']
	${CHECKBOX}   Set Variable  xpath=//input[@id='SC_nomeorga']

	Element Should Contain  ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CHECKBOX}   name   nomeorga


clicar nos 3 pontinhos
    click element  xpath=//*[@class="node-menu"]


clicar na opção Editar
    click element  xpath=//*[@id="link_0"]
