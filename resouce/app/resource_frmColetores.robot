*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Cadastro de Codin

# SCREEN
Acessar Tela Cadastro de Codins (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable  Codin
      ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[4]
  ELSE
      ${SCREENNAME}  Set Variable  Cadastro de Codins (Inclusão)
      ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmColetores
  

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Cadastro de Codins (Atualização)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Codin
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[4]  
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de Codins (Atualização)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmColetores


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Cadastro de Modelo de Equipamento
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Modelo de Equipamento
  ${APPNAME}  Set Variable  frmColetores
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#ISSUES
Registrar erro
    ${APPNAME}  Set Variable  frmColetores
    ${TAREFA}  Set Variable  12037

    Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "Tarefa_${TAREFA}__${APPNAME}__V1.png"

#BUTTON



Clicar No Botão Buscar Dados Externos Para Código da Planta
  ${ELEMENT}  Set Variable  id=cap_codiplan

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Modelo de Codin
  ${ELEMENT}  Set Variable  id=cap_codimodecole

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Gateway
  ${ELEMENT}  Set Variable  id=cap_codigereaces

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD
Preencher o campo Código da Planta "${COD_PLANTA}"
  Input Text  xpath=//*[@name="codiplan"][@type="text"]  ${COD_PLANTA}

Preencher o campo Código do Codin "${COD_CODIN}"
  Input Text  xpath=//*[@name="codicole"][@type="text"]  ${COD_CODIN}

Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="desccole"][@type="text"]  ${DESCRICAO}

Preencher o campo Modelo do Codin "${CODIN}"
  Input Text  xpath=//*[@name="codimodecole"][@type="text"]  ${CODIN}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="id_label_codimodecole"]

Preencher o campo Código da Portaria "${COD_PORTARIA}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COD_PORTARIA}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="id_label_codimodecole"]

Preencher o campo Gateway "${GATEWAY}"
  Input Text  xpath=//*[@name="codigereaces"][@type="text"]  ${GATEWAY}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[4]/td[1]

Preencher o campo Endereço IP "${IP}"
  Input Text  xpath=//*[@name="numeendecole"][@type="text"]  ${IP}

Selecionar uma opção no campo Tipo de Leitora "${LEITURA}"
  Select from list by label  xpath=//*[@name="tipoleitcole"]  ${LEITURA}

Preencher o campo Grau de Conferência Biométrico "${CONFERENCIA}"
  Input Text  xpath=//*[@name="grauconfbiom"][@type="text"]  ${CONFERENCIA}

Selecionar uma opção no campo Funcionameno do Codin "${FUNCIONAMENTO}"
  Select from list by label  xpath=//*[@name="funccole"]  ${FUNCIONAMENTO}

Preencher o campo Número do Terminal "${TERMINAL}"
  Input Text  xpath=//*[@name="numetermarl"][@type="text"]  ${TERMINAL}

Preencher o campo Nome do Aplicativo "${APLICATIVO}"
  Input Text  xpath=//*[@name="nomearqaplic"][@type="text"]  ${APLICATIVO}

Preencher o campo Nome do Firmware "${FIRMWARE}"
  Input Text  xpath=//*[@name="nomefirmcole"][@type="text"]  ${FIRMWARE}

Selecionar uma opção no campo Controla Interjonada "${INTERJORNADA}"
  Select from list by label  xpath=//*[@name="valid_ret"]  ${INTERJORNADA}

Selecionar uma opção no campo Validação almoço final "${VALIDACAO}"
  Select from list by label  xpath=//*[@name="pos_fimhalm"]  ${VALIDACAO}

Preencher o campo Fuso Horário "${FUSO_HORARIO}"
  Input Text  xpath=//*[@name="difefusobanc"][@type="text"]  ${FUSO_HORARIO}

Preencher o campo Indelével "${INDELEVEL}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${INDELEVEL}

Clicar na opção "Sim" no campo Codin Ativo
  Click Element  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[14]/td[2]/table/tbody/tr/td/input

Clicar na opção "Negativo" no campo Permite Fuso Horário Negativo
  Click Element  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[18]/td[2]/table/tbody/tr/td/input

Selecionar uma opção no campo Localização do Codin "${LOCAL}"
  Select from list by label  xpath=//*[@name="idcolab"]  ${LOCAL}




#VERIFY


E verificar o campo Código da Planta 
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Código da Planta  
	Element Attribute Value Should Be  ${CAMPO}  name  codiplan

E verificar o campo Código do Codin 
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}  Código do Codin 
	Element Attribute Value Should Be  ${CAMPO}  name  codicole

E verificar o campo Descrição 
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}  Descrição 
	Element Attribute Value Should Be  ${CAMPO}  name  desccole

E verificar o campo Modelo do Codin 
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Modelo do Codin  
	Element Attribute Value Should Be  ${CAMPO}  name  codimodecole

E verificar o campo Tipo de Comunicação 
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	
	Element Should Contain  ${LABEL}  Tipo de Comunicação 

E verificar o campo Tipo de Leitora 
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/select
	
	Element Should Contain  ${LABEL}  Tipo de Leitora
	Element Attribute Value Should Be  ${CAMPO}  name  tipoleitcole

E verificar o campo Grau de Conferência Biométrico
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}  Grau de Conferência  Biométrico
	Element Attribute Value Should Be  ${CAMPO}  name  grauconfbiom

E verificar o campo Funcionamento do Codin 
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/select
	
	Element Should Contain  ${LABEL}  Funcionamento do Codin
	Element Attribute Value Should Be  ${CAMPO}  name  funccole

E verificar o campo Gateway 
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Gateway 
	Element Attribute Value Should Be  ${CAMPO}  name  codigereaces

E verificar o campo Número do Terminal
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/input
	
	Element Should Contain  ${LABEL}  Número do Terminal
	Element Attribute Value Should Be  ${CAMPO}  name  numetermarl

E verificar o campo Endereço IP    
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[2]/input
	
	Element Should Contain  ${LABEL}  Endereço IP 
	Element Attribute Value Should Be  ${CAMPO}  name  numeendecole

E verificar o campo Nome do Aplicativo 
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/input
	
	Element Should Contain  ${LABEL}  Nome do Aplicativo
	Element Attribute Value Should Be  ${CAMPO}  name  nomearqaplic

E verificar o campo Nome do Firmware 
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[2]/input
	
	Element Should Contain  ${LABEL}  Nome do Firmware
	Element Attribute Value Should Be  ${CAMPO}  name  nomefirmcole

E verificar o campo Codin Ativo 
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Codin Ativo 
	Element Attribute Value Should Be  ${CAMPO}  name  liceativ[]

E verificar o campo Controla Interjornada 
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[15]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[15]/td[2]/select
	
	Element Should Contain  ${LABEL}  Controla Interjornada  
	Element Attribute Value Should Be  ${CAMPO}  name  valid_ret

E verificar o campo Validação almoço final 
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[16]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[16]/td[2]/select
	
	Element Should Contain  ${LABEL}  Validação almoço final
	Element Attribute Value Should Be  ${CAMPO}  name  pos_fimhalm

E verificar o campo Fuso Horário 
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[17]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[17]/td[2]/input
	
	Element Should Contain  ${LABEL}  Fuso Horário
	Element Attribute Value Should Be  ${CAMPO}  name  difefusobanc

E verificar o campo Permite Fuso Horário Negativo
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[18]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[18]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Permite Fuso Horário Negativo  
	Element Attribute Value Should Be  ${CAMPO}  name  cbfuso[]