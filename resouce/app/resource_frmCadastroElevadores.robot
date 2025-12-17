*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Elevadores

#TABS
Clicar na aba Elevador
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaelevador
  ${ELEMENT}  Set Variable  xpath=//*[@id="link_13"]
  ${TABNAME}  Set Variable  Elevador

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
  
  Select Frame  //iframe[@id="nmsc_iframe_liga_frmCadastroElevadores"]

# SCREEN
Acessar Tela Cadastro de Elevadores
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Elevador
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[6]
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de Elevadores
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmCadastroElevadores


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar a aba de Cadastro de Elevadores
  Mudar Frame Aplicação "nmsc_iframe_liga_frmCadastroElevadores"
  # Verifica se está na tela certa
  ${DESCRICAO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[3]
  ${ELEVADOR}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[5]

	Element Should Contain             ${DESCRICAO}   Descrição
 	Element Should Contain             ${ELEVADOR}    Elevador em Manutenção

#BUTTON
#resource_btn.

#FIELD
Preencher o campo Descrição "${DESCRICAO}"
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Input Text  xpath=//input[@name="descelev_1"]  ${DESCRICAO}
  ELSE
    Input Text  xpath=//*[@name="descelev"][@type="text"]  ${DESCRICAO}
  END

Preencher o campo Código "${CODIGO}"
  Input Text  xpath=//*[@name="idtorr"][@type="text"]  ${CODIGO}

Clicar na opção "Sim" no campo Elevador em Manutenção
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element  xpath=//*[@id="id-opt-elevmanu_1-1"]
  ELSE
    Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[4]/td[2]/table/tbody/tr/td/input
  END

#VERIFY

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   descelev

Verificar o campo Código
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Código
 	Element Attribute Value Should Be  ${CAMPO}   name   idtorr

Verificar o campo Elevador em Manutenção
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Elevador em Manutenção
 	Element Attribute Value Should Be  ${CAMPO}   name   elevmanu[]

