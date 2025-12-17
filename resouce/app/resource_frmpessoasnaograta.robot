*** Settings ***
Library         SeleniumLibrary
Library         ../../api/data/client/person.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Pessoa Não Grata | Cadastro de Pessoa Não Grata

# SCREEN
Acessar Tela Cadastro de Pessoas não Gratas (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Pessoas não Gratas (Atualização)
  ${APPNAME}  Set Variable  frmpessoasnaograta
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Cadastro de Pessoas não Gratas (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Pessoas não Gratas (Inclusão)
  ${APPNAME}  Set Variable  frmpessoasnaograta
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Código do Motivo
  ${ELEMENT}  Set Variable  xpath=//*[@id="cap_codimoti"]
  
#Necessario usar o javascript para fazer o scroll da tela !!!
  Execute Javascript  window.scrollTo(0,1500)
  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

# FIELD

Selecionar um item no campo Tipo de Documento "${TIPO_DOC}"
  Select From List by Label   name=tipodocu  ${TIPO_DOC}

Preencher o campo Número do Documento "${NUM}"
  ${ELEMENT}  Set Variable  name=txtcpf

  IF  '${NUM}' == 'API'
    ${NUM}  Run Keyword  CPF  unidecode=True
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${NUM}

Preencher o campo Nome "${NOME}"
  ${ELEMENT}  Set Variable  name=nomepess

  IF  '${NOME}' == 'API'
    ${NOME}  Run Keyword  Nome Completo 
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${NOME}

Preencher o campo Nome do Pai "${NOME_PAI}"
  ${ELEMENT}  Set Variable  name=nomepai

  IF  '${NOME_PAI}' == 'API'
    ${NOME_PAI}  Run Keyword  Nome Do Pai 
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${NOME_PAI}

Preencher o campo Nome da Mãe "${NOME_MAE}"
  ${ELEMENT}  Set Variable  name=nomemae

  IF  '${NOME_MAE}' == 'API'
    ${NOME_MAE}  Run Keyword  Nome Da Mãe 
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${NOME_MAE}

Preencher o campo Data de Nascimento "${DATA}"
  ${ELEMENT}  Set Variable  name=datanasc

  IF  '${DATA}' == 'API'
    ${DATA}  Run Keyword  Data de Nascimento
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${DATA}

Selecionar um item no campo Vinculo "${VINCULO}"
  ${ELEMENT}  Set Variable  name=vinc

  IF  '${VINCULO}' == 'API'
    ${VINCULO}  Run Keyword  Tipo Pessoa 
  END

  Select From List by Label   ${ELEMENT}  ${VINCULO}

Selecionar um item no campo Permite Entrada "${OPCAO}"
  Select From List by Label   name=permentr   ${OPCAO}

Preencher o campo Código do Motivo "${COD_MOTIVO}"
  Input Text  name=codimoti    ${COD_MOTIVO}
  #Necessário clicar fora para validar a inserção
  Click Element   xpath=//*[@id="hidden_bloco_2"]/tbody/tr[8]/td[1]

Preencher o campo Apelido "${APELIDO}"
  ${ELEMENT}  Set Variable  name=apelnaograt

  IF  '${APELIDO}' == 'API'
    ${APELIDO}  Run Keyword  Primeiro Nome
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${APELIDO}

Preencher o campo Segundo Tipo do Documento "${TIPO_DOC}"
  Select From List by Label   name=segutipodocu  ${TIPO_DOC}

Preencher o campo Segundo Número do Documento "${NUM}"
  ${ELEMENT}  Set Variable  name=segudocuvisi

  IF  '${NUM}' == 'API'
    ${NUM}  Run Keyword  CNH
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${NUM}

Preencher o campo Documento de Origem "${DOC}"
  Input Text  name=docuorig   ${DOC}

Clicar na opção "Sim" no campo Bloqueia Homônimo
  Click Element  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[7]/td[2]/table/tbody/tr/td/input

Preencher o campo Motivo "${MOTIVO}"
  Input Text  name=descmoti  ${MOTIVO}

Preencher o campo Procedimento a Realizar "${PROCEDIMENTO}"
  Input Text  name=procpadr  ${PROCEDIMENTO}


#VERIFY 

E verificar o campo Tipo do Documento 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[1]/td[2]/select
	
	Element Should Contain  ${LABEL}  Tipo do Documento  
	Element Attribute Value Should Be  ${CAMPO}  name  tipodocu

E verificar o campo Número do Documento 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}  Número do Documento 
	Element Attribute Value Should Be  ${CAMPO}  name  numedocu

E verificar o campo Nome         
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}  Nome 
	Element Attribute Value Should Be  ${CAMPO}  name  nomepess

E verificar o campo Apelido 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}  Apelido
	Element Attribute Value Should Be  ${CAMPO}  name  apelnaograt

E verificar o campo Segundo Tipo do Documento 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[5]/td[2]/select
	
	Element Should Contain  ${LABEL}  Segundo Tipo do Documento 
	Element Attribute Value Should Be  ${CAMPO}  name  segutipodocu 

E verificar o campo Segundo Número do Documento 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td[1]/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}  Segundo Número do Documento
	Element Attribute Value Should Be  ${CAMPO}  name  segudocuvisi

E verificar o campo Nome do Pai  
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}  Nome do Pai 
	Element Attribute Value Should Be  ${CAMPO}  name  nomepai  

E verificar o campo Nome da Mãe 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}  Nome da Mãe
	Element Attribute Value Should Be  ${CAMPO}  name  nomemae

E verificar o campo Data de Nascimento   
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}    Data de Nascimento 
	Element Attribute Value Should Be  ${CAMPO}  name  datanasc   

E verificar o campo Vínculo 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select
	
	Element Should Contain  ${LABEL}  Vínculo 
	Element Attribute Value Should Be  ${CAMPO}  name  vinc

E verificar o campo Documento de Origem 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input
	
	Element Should Contain  ${LABEL}  Documento de Origem 
	Element Attribute Value Should Be  ${CAMPO}  name  docuorig

E verificar o campo Permite Entrada  
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/select
	
	Element Should Contain  ${LABEL}  Permite Entrada  
	Element Attribute Value Should Be  ${CAMPO}  name  permentr

E verificar o campo Bloqueia Hormônio 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Bloqueia Homônimo
	Element Attribute Value Should Be  ${CAMPO}  name  bloqhomo[] 

E verificar o campo Código do Motivo 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/textarea
	
	Element Should Contain  ${LABEL}  Código do Motivo 
	Element Attribute Value Should Be  ${CAMPO}  name  descmoti

E verificar o campo Motivo 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Código do Motivo 
	Element Attribute Value Should Be  ${CAMPO}  name  codimoti  

E verificar o campo Procedimento a Realizar 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/textarea
	
	Element Should Contain  ${LABEL}  Procedimento a Realizar
	Element Attribute Value Should Be  ${CAMPO}  name  procpadr

E verificar o campo Empresa     
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
		
	Element Should Contain  ${LABEL}  Empresa
  

E verificar o campo Tipo de Pessoa 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	
	Element Should Contain  ${LABEL}  Tipo de Pessoa


E verificar o campo Matrícula 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[1]

	Element Should Contain  ${LABEL}  Matrícula 
