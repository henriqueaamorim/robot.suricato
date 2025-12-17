*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cadastro

# SCREEN
Acessar Tela Seguros de Veículos - Atualização
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Seguros de Veículos - Atualização
  ${APPNAME}     Set Variable  frmseguroveiculo
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   
  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmseguroveiculo_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Seguros de Veículos - Inclusão
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Seguros de Veículos - Inclusão
  ${APPNAME}     Set Variable  frmseguroveiculo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
	ELSE
  	${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
	Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmseguroveiculo_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Corretor
  ${ELEMENT}  Set Variable  id=cap_idcorr

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD
Preencher o campo Veículo "${VEICULO}"
  Input Text  xpath=//*[@name="idveic"][@type="text"]  ${VEICULO}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Corretor "${CORRETOR}"
  Input Text  xpath=//*[@name="idcorr"][@type="text"]  ${CORRETOR}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]
  
Preencher o campo Data Início Vigência "${VIGENCIA}"
  Input Text  xpath=//*[@name="datainic"][@type="text"]  ${VIGENCIA}

Preencher o campo Data Validade "${VALIDADE}"
  Input Text  xpath=//*[@name="datavali"][@type="text"]  ${VALIDADE}

Preencher o campo Número Apólice "${APOLICE}"
  Input Text  xpath=//*[@name="numeaplosegu"][@type="text"]  ${APOLICE}

Selecionar uma opção no campo Tipo Cobertura "${COBERTURA}"
  Select from list by label  xpath=//*[@name="tipocobe"]  ${COBERTURA}

Preencher o campo Valor Segurado "${VALOR}"
  Input Text  xpath=//*[@name="valosegu"][@type="text"]  ${VALOR}

Preencher o campo Descrição Franquia "${DESCRICAO}"
  Input Text  xpath=//*[@name="descfuncrest"][@type="text"]  ${DESCRICAO}

Preencher o campo Observação Seguro "${OBSERVACAO}"
  Input Text  xpath=//*[@name="obseseguveic"][@type="text"]  ${OBSERVACAO}



#VERIFY

Verificar a label Veículo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Veículo *

Verificar a label Corretor *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}   Corretor *

Verificar a label Data Início Vigência *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}   Data Início Vigência *

Verificar a label Data Validade *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	Element Should Contain  ${LABEL}   Data Validade *

Verificar o campo Número Apólice *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input
	
	Element Should Contain  ${LABEL}   Número Apólice *
 	Element Attribute Value Should Be  ${CAMPO}   name   numeaplosegu

Verificar o campo Tipo Cobertura *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/select
	
	Element Should Contain  ${LABEL}   Tipo Cobertura *
 	Element Attribute Value Should Be  ${CAMPO}   name   tipocobe

Verificar o campo Valor Segurado *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}   Valor Segurado *
 	Element Attribute Value Should Be  ${CAMPO}   name   valosegu

Verificar o campo Descrição Franquia
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[2]/textarea
	
	Element Should Contain  ${LABEL}   Descrição Franquia
 	Element Attribute Value Should Be  ${CAMPO}   name   descfuncrest

Verificar o campo Observação Seguro
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[9]/td[2]/textarea
	
	Element Should Contain  ${LABEL}   Observação Seguro
 	Element Attribute Value Should Be  ${CAMPO}   name   obseseguveic


Verificar o campo Veículo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}   Veículo *
 	Element Attribute Value Should Be  ${CAMPO}   name   idveic

Verificar o campo Corretor *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}   Corretor *
 	Element Attribute Value Should Be  ${CAMPO}   name   idcorr

Verificar o campo Data Início Vigência *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}   Início Vigência *
 	Element Attribute Value Should Be  ${CAMPO}   name   datainic

Verificar o campo Data Validade *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}   Data Validade *
 	Element Attribute Value Should Be  ${CAMPO}   name   datavali
