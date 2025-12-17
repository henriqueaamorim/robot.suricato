*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Multas

# SCREEN
Acessar Tela Multas (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Multas (Atualização)
  ${APPNAME}     Set Variable  frmmultas
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   
  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Multas (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Multas (Inclusão)
  ${APPNAME}     Set Variable  frmmultas
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  	${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  ELSE
 		${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
	END
	
  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código da Infrações "${CODIGO}"
  Input Text  xpath=//*[@name="codiinfrtran"][@type="text"]  ${CODIGO}
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]
Preencher o campo Descrição da Infrações "${DESCRICAO}"
  Input Text  xpath=//*[@name="descinfrtran"][@type="text"]  ${DESCRICAO}

Preencher o campo Enquadramento CTB "${CTB}"
  Input Text  xpath=//*[@name="enqucoditran"][@type="text"]  ${CTB}

Selecionar uma opção no campo Gravidade "${GRAVIDADE}"
  Select from list by label  xpath=//*[@name="gravinfr"]  ${GRAVIDADE}

Preencher o campo Responsabilidade "${RESPONSABILIDADE}"
  Input Text  xpath=//*[@name="respinfr"][@type="text"]  ${RESPONSABILIDADE}

Preencher o campo Competência "${COMPETENCIA}"
  Input Text  xpath=//*[@name="compinfr"][@type="text"]  ${COMPETENCIA}

Preencher o campo Quantidadede de Pontos "${PONTOS}"
  Input Text  xpath=//*[@name="quanpont"][@type="text"]  ${PONTOS}

Preencher o campo Valor da Infrações "${VALOR}"
  Input Text  xpath=//*[@name="valoinfr"][@type="text"]  ${VALOR}



#VERIFY

Verificar a label Código da Infração *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Código da Infrações *

Verificar o campo Descrição da Infração *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/textarea
	
	Element Should Contain  ${LABEL}   Descrição da Infrações *
 	Element Attribute Value Should Be  ${CAMPO}   name   descinfrtran

Verificar o campo Enquadramento CTB
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Enquadramento CTB
 	Element Attribute Value Should Be  ${CAMPO}   name   enqucoditran

Verificar o campo Gravidade
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select
	
	Element Should Contain  ${LABEL}   Gravidade
 	Element Attribute Value Should Be  ${CAMPO}   name   gravinfr

Verificar o campo Responsabilidade 
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Responsabilidade 
 	Element Attribute Value Should Be  ${CAMPO}   name   respinfr

Verificar o campo Competência
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Competência
 	Element Attribute Value Should Be  ${CAMPO}   name   compinfr

Verificar o campo Quantidade de Pontos
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Quantidade de Pontos
 	Element Attribute Value Should Be  ${CAMPO}   name   quanpont

Verificar o campo Valor da Infração
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Valor da Infrações
 	Element Attribute Value Should Be  ${CAMPO}   name   valoinfr


Verificar o campo Código da Infração *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Código da Infrações *
 	Element Attribute Value Should Be  ${CAMPO}   name   codiinfrtran