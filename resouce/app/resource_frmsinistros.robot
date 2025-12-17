*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Sinistros

# SCREEN
Acessar Tela Sinistros (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Sinistros (Atualização)
  ${APPNAME}     Set Variable  frmsinistros
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   
  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Sinistros (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Sinistros (Inclusão)
  ${APPNAME}     Set Variable  frmsinistros
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
Preencher o campo Veículo "${VEICULO}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[2]/input[1]    ${VEICULO}
  Sleep  1s
Preencher o campo Data do Sinistro "${DATA}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[2]/input[1]    ${DATA}
  Sleep  1s
Preencher o campo Hora do Sinistro "${HORA}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[3]/td[2]/input   ${HORA}
  Sleep  1s
Preencher o campo CEP "${CEP}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[4]/td[2]/input[1]   ${CEP}
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[12]/td[1]
  Sleep  1s
Preencher o campo Endereço "${ENDERECO}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[5]/td[2]/input   ${ENDERECO}
  Sleep  1s
Preencher o campo Número "${NUMERO}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[6]/td[2]/input   ${NUMERO}
  Sleep  1s
Preencher o campo Bairro "${BAIRRO}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[8]/td[2]/input   ${BAIRRO}
  Sleep  1s
Preencher o campo Cidade "${CIDADE}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[9]/td[2]/input  ${CIDADE}
  Sleep  1s
Preencher o campo Estado "${ESTADO}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[10]/td[2]/input  ${ESTADO}
  Sleep  1s
Preencher o campo Código do Condutor "${CONDUTOR}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[11]/td[2]/input[1]  ${CONDUTOR}
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[12]/td[1]
  Sleep  1s
Preencher o campo Descrição "${DESCRICAO}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[16]/td[2]/textarea  ${DESCRICAO}
  Sleep  1s
Preencher o campo Valor "${VALOR}"
  Input Text    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[17]/td[2]/input  ${VALOR}
  Sleep  1s
Selecionar uma opção no campo Situação do Veículo "${SITUACAO}"
  Select From List By Label    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[18]/td[2]/select   ${SITUACAO}


#VERIFY

Verificar a label Veículo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Veículo *

Verificar a label Data do Sinistro *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}   Data do Sinistro *

Verificar a label Hora do Sinistro *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}   Hora do Sinistro *

Verificar o campo CEP * 
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   CEP * 
 	Element Attribute Value Should Be  ${CAMPO}   name   codicep

Verificar o campo Endereço
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Endereço
 	Element Attribute Value Should Be  ${CAMPO}   name   enderesi

Verificar o campo Número
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Número
 	Element Attribute Value Should Be  ${CAMPO}   name   numeende

Verificar o campo Complemento
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Complemento
 	Element Attribute Value Should Be  ${CAMPO}   name   compende

Verificar o campo Bairro
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Bairro
 	Element Attribute Value Should Be  ${CAMPO}   name   nomebair

Verificar o campo Cidade
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[9]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Cidade
 	Element Attribute Value Should Be  ${CAMPO}   name   nomecida

Verificar o campo Estado
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[10]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Estado
 	Element Attribute Value Should Be  ${CAMPO}   name   nomeesta

Verificar o campo Código do Condutor *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[11]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[11]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Código do Condutor *
 	Element Attribute Value Should Be  ${CAMPO}   name   idcodicond

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[12]/td[1]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo de Pessoa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[13]/td[1]
	Element Should Contain  ${LABEL}   Tipo de Pessoa

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[14]/td[1]
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[15]/td[1]
	Element Should Contain  ${LABEL}   Nome

Verificar o campo Descrição
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[16]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[16]/td[2]/textarea
	
	Element Should Contain  ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   descsinaalar

Verificar o campo Valor
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[17]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[17]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Valor
 	Element Attribute Value Should Be  ${CAMPO}   name   valosiniveic

Verificar o campo Situação do Veículo
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[18]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[18]/td[2]/select
	
	Element Should Contain  ${LABEL}   Situação do Veículo
 	Element Attribute Value Should Be  ${CAMPO}   name   situveic

Verificar o campo Reembolsado
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[19]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[19]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Reembolsado
 	Element Attribute Value Should Be  ${CAMPO}   name   sinireem[]

Verificar o campo Descontado
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[20]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[20]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Descontado
 	Element Attribute Value Should Be  ${CAMPO}   name   sinidesc[]


Verificar o campo Veículo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Veículo *
 	Element Attribute Value Should Be  ${CAMPO}   name   idveic

Verificar o campo Data do Sinistro *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data do Sinistro *
 	Element Attribute Value Should Be  ${CAMPO}   name   datasini

Verificar o campo Hora do Sinistro *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Hora do Sinistro *
 	Element Attribute Value Should Be  ${CAMPO}   name   horasiniveic
