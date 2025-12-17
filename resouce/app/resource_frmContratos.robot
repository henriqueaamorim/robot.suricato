*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Contratos

# SCREEN
Acessar Tela Contratos (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Contrato
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[5]
  ELSE
    ${SCREENNAME}  Set Variable  Contratos (Inclusão)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmContratos

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Contratos (Atualização)
 	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	 ${OBJ}         Set Variable  SCN	
  	 ${SCREENNAME}  Set Variable  Contrato 
  	 ${APPNAME}  Set Variable  frmContratos
  	 ${ELEMENT}  Set Variable    xpath=//td[@class="scFormHeaderFont"][4]
	ELSE
 	 ${OBJ}         Set Variable  SCN
  	 ${SCREENNAME}  Set Variable  Contratos (Atualização)
  	 ${APPNAME}  Set Variable  frmContratos
  	 ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
	END	

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Local
  ${ELEMENT}  Set Variable  id=cap_locaorga

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Mudar Frame Aplicação "TB_iframeContent"
  ELSE
    Switch Window  locator=NEW
    Maximize Browser Window
  END

#FIELD
Preencher o campo Empresa Terceirizada "${EMPRESA}"
  Input Text  xpath=//*[@name="codiemprcont"][@type="text"]  ${EMPRESA}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]
 
Preencher o campo Número do Contrato "${NUM}"
  Input Text  xpath=//*[@name="numecont"][@type="text"]  ${NUM}

Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="desccont"][@type="text"]  ${DESCRICAO}

Preencher o campo Data Início "${DATA}"
  Input Text  xpath=//*[@name="datainic"][@type="text"]  ${DATA}

Preencher o campo Data Final "${DATA}"
  Input Text  xpath=//*[@name="datafina"][@type="text"]  ${DATA}

Selecionar uma opção no campo Tabela Organograma "${ORGANOGRAMA}"
  Select from list by label  xpath=//*[@name="codiorgaloca"]  ${ORGANOGRAMA}

Prencher o campo Local "${LOCAL}"
  Input Text  xpath=//*[@name="locaorga"][@type="text"]  ${LOCAL}

Preencher o campo Valor "${VALOR}"
  Input Text  xpath=//*[@name="valomenscont"][@type="text"]  ${VALOR}

Preencher o campo Código do Responsável "${COD}"
  Input Text  xpath=//*[@name="idcolaresp"][@type="text"]  ${COD}

Preencher o campo Observação "${OBSERVACAO}"
  Input Text  xpath=//*[@name="obsecont"]  ${OBSERVACAO}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]
  Sleep  2s


#VERIFY

Verificar o campo Empresa Terceirizada
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Empresa Terceirizada
 	Element Attribute Value Should Be  ${CAMPO}   name   codiemprcont

Verificar o campo Número do Contrato
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Número do Contrato
 	Element Attribute Value Should Be  ${CAMPO}   name   numecont

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   desccont

Verificar o campo Data Início
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/span[1]/input

	Element Should Contain             ${LABEL}   Data Início
 	Element Attribute Value Should Be  ${CAMPO}   name   datainic

Verificar o campo Data Final
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/span[1]/input

	Element Should Contain             ${LABEL}   Data Final
 	Element Attribute Value Should Be  ${CAMPO}   name   datafina

Verificar o campo Tabela Organograma
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain             ${LABEL}   Tabela Organograma
 	Element Attribute Value Should Be  ${CAMPO}   name   codiorgaloca

Verificar o campo Local
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Local
 	Element Attribute Value Should Be  ${CAMPO}   name   locaorga

Verificar o campo Valor
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Valor
 	Element Attribute Value Should Be  ${CAMPO}   name   valomenscont

Verificar a label Responsável
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Responsável

Verificar o campo Código do Responsável
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Código do Responsável
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolaresp

Verificar a label Empresa do Responsável
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	Element Should Contain  ${LABEL}   Empresa do Responsável

Verificar a label Tipo do Responsável
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
	Element Should Contain  ${LABEL}   Tipo do Responsável

Verificar a label Matrícula do Responsável
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
	Element Should Contain  ${LABEL}   Matrícula do Responsável

Verificar a label Nome do Responsável
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span
	Element Should Contain  ${LABEL}   Nome do Responsável

Verificar o campo Observação
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[7]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/textarea

	Element Should Contain             ${LABEL}   Observação
 	Element Attribute Value Should Be  ${CAMPO}   name   obsecont
