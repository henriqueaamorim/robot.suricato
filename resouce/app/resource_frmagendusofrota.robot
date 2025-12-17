*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota

# SCREEN
Acessar Tela Agendamento do Uso da Frota (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Agendamento do Uso da Frota (Atualização)
  ${APPNAME}     Set Variable  frmagendusofrota
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   
  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmagendusofrota_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Agendamento do Uso da Frota (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Agendamento do Uso da Frota (Inclusão)
  ${APPNAME}     Set Variable  frmagendusofrota
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   
  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmagendusofrota_1"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"






#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Motivo do Uso
  ${ELEMENT}  Set Variable  id=cap_motiusoveic

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Veículo
  ${ELEMENT}  Set Variable  id=cap_idveic

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD
Preencher o campo Data Prevista do Retorno "${DATA}"
  Input Text  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]/input[1]   ${DATA}
  #Necessário CLicar fora para salvar o registro
  Click Element  xpath=//*[@id="hidden_bloco_1"]/tbody/tr[2]/td[1]

Preencher o campo Hora Prevista do Retorno "${HORA}"
  Input Text  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[2]/input   ${HORA}
  #Necessário CLicar fora para salvar o registro
  Click Element  xpath=//*[@id="hidden_bloco_1"]/tbody/tr[2]/td[1]
  
Preencher o campo Veículo "${VEICULO}"
  Input Text  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[3]/td[1]/input[1]   ${VEICULO}
  Sleep  1s

Preencher o campo Motivo do Uso "${MOTIVO}"
  Input Text  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[3]/td[2]/input[1]   ${MOTIVO}
  Sleep  1s

Preencher o campo Quantidade de Passageiros "${PASSAGEIROS}"
  Input Text  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[4]/td[1]/input   ${PASSAGEIROS}
  Sleep  1s

Preencher o campo Quantidade Transportar KG "${KG}"
  Input Text  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[4]/td[2]/input   ${KG}
  Sleep  1s
	
Preencher o campo Destino "${DESTINO}"
  Input Text  xpath=//*[@id="hidden_bloco_1"]/tbody/tr[1]/td[2]/input   ${DESTINO}
  Sleep  1s

Preencher o campo Observação "${OBSERVACAO}"
  Input Text  xpath=//*[@id="hidden_bloco_1"]/tbody/tr[2]/td[2]/textarea   ${OBSERVACAO}
  Sleep  1s

Preencher o campo Código na área Solicitante "${CODIGO}"
  Input Text  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[2]/td[1]/input[1]   ${CODIGO}
  #Necessário CLicar fora para salvar o registro
  Click Element  xpath=//*[@id="hidden_bloco_1"]/tbody/tr[2]/td[1]
  Sleep  1s

Preencher o campo Código na área Código "${CODIGO}"
  Input Text  xpath=//*[@id="hidden_bloco_3"]/tbody/tr[2]/td[1]/input[1]   ${CODIGO}
  #Necessário CLicar fora para salvar o registro
  Click Element  xpath=//*[@id="hidden_bloco_1"]/tbody/tr[2]/td[1]



#VERIFY

Verificar a label Data de Saída
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span
	Element Should Contain  ${LABEL}   Data de Saída

Verificar a label Hora de Saída
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/span
	Element Should Contain  ${LABEL}   Hora de Saída

Verificar o campo Data Prevista do Retorno*
	${LABEL}    Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}    Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input[1]

	
	Element Should Contain  ${LABEL}   Data Prevista do Retorno*
 	Element Attribute Value Should Be  ${CAMPO}   name   datareti


Verificar o campo Hora Prevista do Retorno*
	${LABEL}    Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/span
	${CAMPO}    Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input

	Element Should Contain  ${LABEL}   Hora Prevista do Retorno*
 	Element Attribute Value Should Be  ${CAMPO}   name   horaretiguar


Verificar a label Veículo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Veículo *

Verificar o campo Motivo do Uso
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/span[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Motivo do Uso
 	Element Attribute Value Should Be  ${CAMPO}   name   motiusoveic

Verificar o campo Quantidade de Passageiros
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/input
	
	Element Should Contain  ${LABEL}   Quantidade de Passageiros
 	Element Attribute Value Should Be  ${CAMPO}   name   quanpermpass

Verificar o campo Quantidade Transportar KG
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}   Quantidade Transportar KG
 	Element Attribute Value Should Be  ${CAMPO}   name   quankilotran

Verificar o campo Destino
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}   Destino
 	Element Attribute Value Should Be  ${CAMPO}   name   destveic

Verificar o campo Observação
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/textarea
	
	Element Should Contain  ${LABEL}   Observação
 	Element Attribute Value Should Be  ${CAMPO}   name   obseagen

Verificar a label Solicitante
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Solicitante

Verificar o campo Código 
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input[1]
	
	Element Should Contain  ${LABEL}   Código 
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolabsol

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/span
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/span[1]
	Element Should Contain  ${LABEL}   Tipo

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/span
	Element Should Contain  ${LABEL}   Matricula

Verificar a label Nome do Solicitante
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[5]/span
	Element Should Contain  ${LABEL}   Nome do Solicitante

Verificar a label Condutor
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Condutor

Verificar o segundo campo Código 
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input[1]
	
	Element Should Contain  ${LABEL}   Código 
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolabcon

Verificar a segunda label Empresa 
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/span
	Element Should Contain  ${LABEL}   Empresa 

Verificar a segunda label Tipo 
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/span[1]
	Element Should Contain  ${LABEL}   Tipo 

Verificar a segunda label Matrícula 
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/span
	Element Should Contain  ${LABEL}   Matricula 

Verificar a label Nome do Condutor
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[5]/span
	Element Should Contain  ${LABEL}   Nome do Condutor
