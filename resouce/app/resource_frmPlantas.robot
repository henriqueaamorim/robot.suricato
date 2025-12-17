*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Planta

# SCREEN
Acessar Tela Plantas (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Planta  
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[6]
  ELSE  
    ${SCREENNAME}  Set Variable  Plantas (Inclusão)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmPlantas


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Plantas (Atualização)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Planta  
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[6]
  ELSE  
    ${SCREENNAME}  Set Variable  Plantas (Atualização)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmPlantas

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Código da Empresa
  ${ELEMENT}  Set Variable  id=cap_codiempr

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Sleep  2s
    Mudar Frame Aplicação "TB_iframeContent"
  ELSE
    Switch Window  locator=NEW
    Maximize Browser Window
  END

#FIELD
Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="descplan"][@type="text"]  ${DESCRICAO}

Preencher o campo Código da Empresa "${COD}"
  Input Text  xpath=//*[@name="codiempr"][@type="text"]  ${COD}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Código da Filial "${COD}"
  Input Text  xpath=//*[@name="codifili"][@type="text"]  ${COD}

Preencher o campo Diferença Fuso Horário "${FUSO}"
  Input Text  xpath=//*[@name="difefusobanc"][@type="text"]  ${FUSO}

Marcar a opção "Negativo"
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element  xpath=//input[@class="sc-ui-checkbox-cbfuso sc-ui-checkbox-cbfuso"]
  ELSE
    Click Element  xpath=//*[@id="hidden_bloco_1"]/tbody/tr[1]/td/input[2]
  END


#VERIFY

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   descplan

Verificar o campo Código da Empresa
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Código da Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   codiempr

Verificar o campo Código da Filial
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Código da Filial
 	Element Attribute Value Should Be  ${CAMPO}   name   codifili

Verificar o campo Diferença Fuso Horário
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span[1]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Diferença Fuso Horário
 	Element Attribute Value Should Be  ${CAMPO}   name   difefusobanc
