*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Cadastro

# SCREEN
Acessar Tela Infrações (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Infrações (Atualização)
  ${APPNAME}     Set Variable  frminfracoesfrota
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frminfracoesfrota_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




Acessar Tela Infrações (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Infrações (Inclusão)
  ${APPNAME}     Set Variable  frminfracoesfrota
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

#FIELD
Preencher o campo Data Infrações "${DATA}"
  Input Text  xpath=//*[@name="datainfr"][@type="text"]  ${DATA}

Preencher o campo Hora Infrações "${HORA}"
  Input Text  xpath=//*[@name="horainfr"][@type="text"]  ${HORA}

Preencher o campo Veículo "${VEICULO}"
  Input Text  xpath=//*[@name="idveic"][@type="text"]  ${VEICULO}

Preencher o campo Condutor "${CONDUTOR}"
  Input Text  xpath=//*[@name="idcodicond"][@type="text"]  ${CONDUTOR}
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[9]/td[1]

Preencher o campo CEP "${CEP}"
  Input Text  xpath=//*[@name="codicep"][@type="text"]  ${CEP}

Preencher o campo Endereço/Número "${ENDERECO}"
  Input Text  xpath=//*[@name="enderua"][@type="text"]  ${ENDERECO}

Preencher o campo Data Pagamento "${DATA}"
  Input Text  xpath=//*[@name="datapagainfr"][@type="text"]  ${DATA}

Preencher o campo Valor Pagamento "${PAGAMENTO}"
  Input Text  xpath=//*[@name="valopagoinfr"][@type="text"]  ${PAGAMENTO}

Preencher o campo Data Reembolso "${DATA}"
  Input Text  xpath=//*[@name="datareeminfr"][@type="text"]  ${DATA}

Preencher o campo Valor Reembolso "${REEMBOLSO}"
  Input Text  xpath=//*[@name="valopagoinfr"][@type="text"]  ${REEMBOLSO}

Preencher o campo Data Desconto "${DATA}"
  Input Text  xpath=//*[@name="datadescinfr"][@type="text"]  ${DATA}

Preencher o campo Quantidade "${QUANT}"
  Input Text  xpath=//*[@name="quandescinfr"][@type="text"]  ${QUANT}

Preencher o campo Valor desconto "${DESC}"
  Input Text  xpath=//*[@name="valodescinfr"][@type="text"]  ${DESC}

Preencher o campo Número AIT "${AIT}"
  Input Text  xpath=//*[@name="numeautoinfr"][@type="text"]  ${AIT}

Preencher o campo Data Limite Indicação "${DATA}"
  Input Text  xpath=//*[@name="datalimi"][@type="text"]  ${DATA}

Preencher o campo Nome Indicação "${NOME}"
  Input Text  xpath=//*[@name="nomeinfrcome"][@type="text"]  ${NOME}



#VERIFY

Verificar a label Data Infrações *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Data Infrações *

Verificar a label Hora Infrações *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}   Hora Infrações *

Verificar a label Veículo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}   Veículo *

Verificar o campo Condutor *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Condutor *
 	Element Attribute Value Should Be  ${CAMPO}   name   idcodicond

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	Element Should Contain  ${LABEL}   Tipo

Verificar a label Matricula
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	Element Should Contain  ${LABEL}   Matricula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	Element Should Contain  ${LABEL}   Nome

Verificar o campo CEP
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[9]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   CEP
 	Element Attribute Value Should Be  ${CAMPO}   name   codicep

Verificar o campo Endereço/Número
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[10]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Endereço/Número
 	Element Attribute Value Should Be  ${CAMPO}   name   enderua

Verificar o campo Data Pagamento
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[11]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[11]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data Pagamento
 	Element Attribute Value Should Be  ${CAMPO}   name   datapagainfr

Verificar o campo Valor Pagamento
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[12]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[12]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Valor Pagamento
 	Element Attribute Value Should Be  ${CAMPO}   name   valopagoinfr

Verificar o campo Data Reembolso
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[13]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[13]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data Reembolso
 	Element Attribute Value Should Be  ${CAMPO}   name   datareeminfr

Verificar o campo Valor Reembolso
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[14]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[14]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Valor Reembolso
 	Element Attribute Value Should Be  ${CAMPO}   name   valoreeminfr

Verificar o campo Data Desconto
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[15]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[15]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data Desconto
 	Element Attribute Value Should Be  ${CAMPO}   name   datadescinfr

Verificar o campo Quantidade
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[16]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[16]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Quantidade
 	Element Attribute Value Should Be  ${CAMPO}   name   quandescinfr

Verificar o campo Valor desconto
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[17]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[17]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Valor desconto
 	Element Attribute Value Should Be  ${CAMPO}   name   valodescinfr

Verificar o campo Número do AIT
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[18]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[18]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Número do AIT
 	Element Attribute Value Should Be  ${CAMPO}   name   numeautoinfr

Verificar o campo Data Limite Indicação
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[19]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[19]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data Limite Indicação
 	Element Attribute Value Should Be  ${CAMPO}   name   datalimi

Verificar o campo Nome Indicação
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[20]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[20]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Nome Indicação
 	Element Attribute Value Should Be  ${CAMPO}   name   nomeinfrcome


Verificar o campo Data Infrações *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data Infrações *
 	Element Attribute Value Should Be  ${CAMPO}   name   datainfr

Verificar o campo Hora Infrações *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Hora Infrações *
 	Element Attribute Value Should Be  ${CAMPO}   name   horainfr

Verificar o campo Veículo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Veículo *
 	Element Attribute Value Should Be  ${CAMPO}   name   idveic