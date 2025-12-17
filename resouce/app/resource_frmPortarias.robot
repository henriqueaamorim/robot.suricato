*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Portaria e Recepção

# SCREEN
Acessar Tela Portarias (Atualização)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Portaria  
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[5]
  ELSE  
    ${SCREENNAME}  Set Variable  Portarias (Atualização)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable    frmPortarias
  

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Portarias (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Portaria  
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[5]
  ELSE  
    ${SCREENNAME}  Set Variable  Portarias (Inclusão)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmPortarias

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#FIELD
Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="descport"][@type="text"]  ${DESCRICAO}

Selecionar uma opção no campo Planta "${PLANTA}"
  Select from list by label  xpath=//*[@name="codiplan"]  ${PLANTA}

Preencher o campo Termo de Consentimento "${TERMO}"
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Mudar Frame Aplicação "//*[@id="termo_ifr"]" 
    Input Text  xpath=//*[@id="tinymce"]  ${TERMO}
  ELSE
    Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${TERMO}
  END

Clicar na opção "Permite Baixar Crachá na Entrada da Visita"
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element  xpath=//input[@name="permbaixcrac[]"]
  ELSE
    Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[2]/table/tbody/tr/td/input
  END

#VERIFY

Verificar a label Portaria
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[1]/table/tbody/tr/td[1]/span/span
	Element Should Contain  ${LABEL}   Portaria

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[1]/span[1]
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[3]/input

	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   descport

Verificar o campo Planta
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[3]/table/tbody/tr/td[1]/span[1]
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[3]/table/tbody/tr/td[1]/span[3]/span/select

	Element Should Contain             ${LABEL}   Planta
 	Element Attribute Value Should Be  ${CAMPO}   name   codiplan

Verificar o campo Permite Baixar Crachá na Entrada da Visita
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[4]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[4]/table/tbody/tr/td[1]/span[3]/div/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Permite Baixar Crachá na Entrada da Visita
 	Element Attribute Value Should Be  ${CAMPO}   name   permbaixcrac[]

Verificar o campo Termo de Consentimento
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[1]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[1]/table/tbody/tr/td[1]/span[3]/textarea

	Element Should Contain             ${LABEL}   Termo de consentimento
 	Element Attribute Value Should Be  ${CAMPO}   id   termo
