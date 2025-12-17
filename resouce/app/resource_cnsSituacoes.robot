*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Situação Trabalhista

# SCREEN
Acessar Tela Consulta de Situações
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsSituacoes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Situação
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE  
    ${SCREENNAME}  Set Variable  Consulta de Situações
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Consulta de Situações (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Situação
  ${APPNAME}  Set Variable  cnsSituacoes
  ${ELEMENT}  Set Variable    xpath=(//td[contains(text(),'Situação ')])[1]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

Preencher o campo Descrição da Situação "${DESCRICAO}"
  Input Text  name=descsitu  ${DESCRICAO}


#VERIFY

Verificar a label Chave Externa
	${LABEL}      Set Variable   xpath=//td[@class='scGridLabelFont css_external_key_label']
	${CAMPO}      Set Variable   xpath=//div[contains(text(),'Chave Externa')]
	Element Should Contain             ${LABEL}   Chave Externa

Verificar a label Código da Situação
	${LABEL}   Set Variable   xpath=//td[@class='scGridLabelFont css_codisitu_label']
  ${CAMPO}   Set Variable   xpath=//div[contains(text(),'Código da Situação')]
	Element Should Contain  ${LABEL}   Código da Situação

Verificar a label Descrição da Situação
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_descsitu_label']
  ${CAMPO}   Set Variable  xpath=//div[contains(text(),'Descrição da Situação')]
	Element Should Contain  ${LABEL}   Descrição da Situação
 



#VERIFY

Verificar o campo Descrição da Situação 
	${LABEL}   Set Variable   xpath=//td[@id='SC_descsitu_label']
  ${INPUT}   Set Variable   xpath=//input[@id='SC_descsitu']
	Element Should Contain  ${LABEL}   Descrição da Situação

Verificar o campo Chave Externa 
	${LABEL}      Set Variable     xpath=//td[@id='SC_external_key_label']
  ${INPUT}      Set Variable     xpath=//input[@id='SC_external_key']
  Element Should Contain         ${LABEL}   Chave Externa




