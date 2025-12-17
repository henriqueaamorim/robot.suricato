*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Integração TOTVS

# SCREEN
Acessar Tela Filtro Integração TOTVS
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Integração TOTVS
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta Integração TOTVS
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  consIntegracaoTotvs

  Mudar Frame Aplicação "iframe_mnu"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Consulta Integração TOTVS
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consIntegracaoTotvs
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Integração TOTVS
    ${ELEMENT}  Set Variable     xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta Integração TOTVS
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.



#VERIFY

Verificar o campo Tabela
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Tabela
 	Element Attribute Value Should Be  ${CAMPO}   name   tabe

Verificar o campo Chave Externa
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Chave Externa
 	Element Attribute Value Should Be  ${CAMPO}   name   chavexte

Verificar o campo Ultima Execução
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Ultima Execução
 	Element Attribute Value Should Be  ${CAMPO}   name   nomeultimeto

Verificar o campo Data Última Execução
	${LABEL}       Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO1}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/span[1]/input
    ${CAMPO2}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/span[2]/input
    ${CAMPO3}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/span[3]/input

  Element Should Contain             ${LABEL}    Data Última Execução
  Element Attribute Value Should Be  ${CAMPO1}   name   dataultimeto_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   dataultimeto_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   dataultimeto_ano

Verificar o campo Chave Interna
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Chave Interna
 	Element Attribute Value Should Be  ${CAMPO}   name   chavinte

Verificar o campo Objeto
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Objeto
 	Element Attribute Value Should Be  ${CAMPO}   name   objeto


#VERIFY LABELS

Verificar a label Tabela
	${LABEL}   Set Variable    xpath=//div[contains(text(),'Tabela')]
	sleep  2s
	Element Should Contain     ${LABEL}   Tabela

Verificar a label Chave Externa
	${LABEL}   Set Variable   xpath=//div[contains(text(),'Chave Externa')]
	sleep  2s
	Element Should Contain    ${LABEL}   Chave Externa 

Verificar a label Chave Interna
	${LABEL}   Set Variable   xpath=//div[contains(text(),'Chave Interna')]
	sleep  2s
	Element Should Contain    ${LABEL}   Chave Interna

Verificar a label Ultima Execução
	${LABEL}   Set Variable   xpath=//div[contains(text(),'Ultima Execução')]
	sleep  2s
	Element Should Contain    ${LABEL}   Ultima Execução

Verificar a label Data Última Execução
	${LABEL}   Set Variable   xpath=//div[contains(text(),'Data Última Execução')]
	sleep  2s
	Element Should Contain    ${LABEL}   Data Última Execução

Verificar a label Objeto
	${LABEL}   Set Variable   xpath=//div[contains(text(),'Objeto')]
	sleep  2s
	Element Should Contain    ${LABEL}   Objeto

            
