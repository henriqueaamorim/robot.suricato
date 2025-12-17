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
Acessar Tela Cadastro de Situações (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Situação Trabalhista
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de Situações (Inclusão)
  END
  ${APPNAME}  Set Variable  frmSituacoes
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Cadastro de Situações (Atualização)
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${OBJ}         Set Variable  SCN
    ${SCREENNAME}  Set Variable  Situação 
    ${APPNAME}  Set Variable  frmSituacoes
    ${ELEMENT}  Set Variable    xpath=//td[@class="scFormHeaderFont"][4]
  ELSE
    ${OBJ}         Set Variable  SCN
    ${SCREENNAME}  Set Variable  Cadastro de Situações (Atualização)
    ${APPNAME}  Set Variable  frmSituacoes
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON
#resource_btn.


#FIELD
Preencher o campo Descrição da Situação "${DESCRICAO}"
  Input Text  xpath=//*[@name="descsitu"][@type="text"]  ${DESCRICAO}

Selecionar uma opção no campo Tipo da Situação "${FALTAS}"
  Select from list by label  xpath=//*[@name="tipositu"]  ${FALTAS}

Clicar na opção "Sim" no campo Bloquear Acesso
  Click Element  xpath=//*[@name="bloqaces[]"]

Clicar na opção "Sim" no campo Bloquear Benefício
  Click Element  xpath=//*[@name="bloqbene[]"]

Clicar na opção "Sim" no campo Gera Benefícios Afastados
  Click Element  xpath=//*[@name="beneafas[]"]



#VERIFY

Verificar o campo Descrição da Situação
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Descrição da Situação
 	Element Attribute Value Should Be  ${CAMPO}   name   descsitu

Verificar o campo Tipo da Situação
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span[1]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain             ${LABEL}   Tipo da Situação
 	Element Attribute Value Should Be  ${CAMPO}   name   tipositu

Verificar o campo Bloquear Acesso
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Bloquear Acesso
 	Element Attribute Value Should Be  ${CAMPO}   name   bloqaces[]

Verificar o campo Bloquear Beneficio
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Bloquear Beneficio
 	Element Attribute Value Should Be  ${CAMPO}   name   bloqbene[]

Verificar o campo Gera Benefícios Afastados
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Gera Benefícios Afastados
 	Element Attribute Value Should Be  ${CAMPO}   name   beneafas[]
