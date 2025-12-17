*** Settings ***
Library         SeleniumLibrary
Library         ../../api/data/client/company.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Filial


# SCREEN
Acessar Tela Filiais (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Filial
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[4]
  ELSE
    ${SCREENNAME}  Set Variable  Filiais (Inclusão)
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}     Set Variable  frmFilial

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Filiais (Atualização)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Filiais
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  ELSE
    ${SCREENNAME}  Set Variable  Filiais (Atualização)
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}     Set Variable  frmFilial
  


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"




#BUTTON

#FIELD

Selecionar um item no campo Empresa "${EMPRESA}"
  Select From List By Label    xpath=//*[@name="codiempr"]  ${EMPRESA} 

Preencher o campo Filial "${FILIAL}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="codifili"][@type="text"]

  IF  '${FILIAL}' == 'API'
    ${FILIAL}  Run Keyword   Cidade
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${FILIAL}

Preencher o campo CNPJ "${CNPJ}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="filicnpj"][@type="text"]

  IF  '${CNPJ}' == 'API'
    ${CNPJ}  Run Keyword   Cnpj
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${CNPJ}

Preencher o campo Razão Social "${RAZAO}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="razasoci"][@type="text"]

  IF  '${RAZAO}' == 'API'
    ${RAZAO}  Run Keyword   Nome
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${RAZAO}

Preencher o campo Nome Fantasia "${FANTASIA}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="apelfili"][@type="text"]

  IF  '${FANTASIA}' == 'API'
    ${FANTASIA}  Run Keyword   Marca
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${FANTASIA}

Preencher o campo CEP "${CEP}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="codicep"][@type="text"]

  IF  '${CEP}' == 'API'
    ${CEP}  Run Keyword   CEP
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${CEP}

Preencher o campo Endereço "${ENDEREÇO}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="endefili"][@type="text"]

  IF  '${ENDEREÇO}' == 'API'
    ${ENDEREÇO}  Run Keyword   Endereço
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${ENDEREÇO}

Preencher o campo Número "${NUMERO}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="numeende"][@type="text"]

  IF  '${NUMERO}' == 'API'
    ${NUMERO}  Run Keyword   Número
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${NUMERO}

Preencher o campo Complemento "${COMPLEMENTO}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="compende"][@type="text"]

  IF  '${COMPLEMENTO}' == 'API'
    ${COMPLEMENTO}  Run Keyword   Complemento
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${COMPLEMENTO}

Preencher o campo Bairro "${BAIRRO}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="nomebair"][@type="text"]

  IF  '${BAIRRO}' == 'API'
    ${BAIRRO}  Run Keyword   Bairro
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${BAIRRO}

Preencher o campo Cidade "${CIDADE}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="nomecida"][@type="text"]

  IF  '${CIDADE}' == 'API'
    ${CIDADE}  Run Keyword   Cidade
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${CIDADE}

Preencher o campo Estado "${ESTADO}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="nomeesta"][@type="text"]

  IF  '${ESTADO}' == 'API'
    ${ESTADO}  Run Keyword   Estado
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${ESTADO}

Preencher o campo Telefone "${TELEFONE}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="numetele"][@type="text"]

  IF  '${TELEFONE}' == 'API'
    ${TELEFONE}  Run Keyword   Telefone
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${TELEFONE}

Preencher o campo E-mail "${EMAIL}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="mailfili"][@type="text"]

  IF  '${EMAIL}' == 'API'
    ${EMAIL}  Run Keyword   Email
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${EMAIL}


Preencher o campo Atividade "${ATIVIDADE}"
	Input Text  xpath=//*[@name="ativfili"][@type="text"]  ${ATIVIDADE}

Selecionar um item no campo Tabela de Feriados Diurna "${FERIADO_DIURNO}"
  Select From List By Label    xpath=//*[@name="feridiur"]  ${FERIADO_DIURNO} 

Selecionar um item no campo Tabela de Feriados Noturna "${FERIADO_NOTURNO}"
  Select From List By Label    xpath=//*[@name="ferinotu"]  ${FERIADO_NOTURNO} 



#VERIFY

E verificar o campo Empresa
  
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}  Empresa  
	Element Attribute Value Should Be  ${CAMPO}  name  codiempr 


E verificar o campo Filial

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}  Filial   
	Element Attribute Value Should Be  ${CAMPO}  name  codifili



E verificar o campo CNPJ 

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}  CNPJ 
	Element Attribute Value Should Be  ${CAMPO}  name  filicnpj



E verificar o campo Razão Social

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input
	
	Element Should Contain  ${LABEL}  Razão Social   
	Element Attribute Value Should Be  ${CAMPO}  name  razasoci



E verificar o campo Nome Fantasia   
  
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}  Nome Fantasia 
	Element Attribute Value Should Be  ${CAMPO}  name  apelfili



E verificar o campo CEP       

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}  CEP 
	Element Attribute Value Should Be  ${CAMPO}  name  codicep



E verificar o campo Endereço

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input
	
	Element Should Contain  ${LABEL}  Endereço 
	Element Attribute Value Should Be  ${CAMPO}  name  endefili



E verificar o campo Número

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/input
	
	Element Should Contain  ${LABEL}  Número 
	Element Attribute Value Should Be  ${CAMPO}  name  numeende 



E verificar o campo Complemento 

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/input
	
	Element Should Contain  ${LABEL}  Complemento 
	Element Attribute Value Should Be  ${CAMPO}  name  compende



E verificar o campo Bairro
 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[2]/input
	
	Element Should Contain  ${LABEL}  Bairro 
	Element Attribute Value Should Be  ${CAMPO}  name  nomebair



E verificar o campo Cidade

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/input
	
	Element Should Contain  ${LABEL}  Cidade
	Element Attribute Value Should Be  ${CAMPO}  name  nomecida



E verificar o campo Estado 
 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[2]/input
	
	Element Should Contain  ${LABEL}  Estado 
	Element Attribute Value Should Be  ${CAMPO}  name  nomeesta



E verificar o campo Telefone  

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[2]/input
	
	Element Should Contain  ${LABEL}  Telefone  
	Element Attribute Value Should Be  ${CAMPO}  name  numetele



E verificar o campo E-mail

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[15]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[15]/td[2]/input
	
	Element Should Contain  ${LABEL}  E-mail
	Element Attribute Value Should Be  ${CAMPO}  name  mailfili



E verificar o campo Atividade 

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[16]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[16]/td[2]/input
	
	Element Should Contain  ${LABEL}  Atividade  
	Element Attribute Value Should Be  ${CAMPO}  name  ativfili



E verificar o campo Tabela de Feriados Diurna

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[17]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[17]/td[2]/select
	
	Element Should Contain  ${LABEL}  Tabela de Feriados Diurna
	Element Attribute Value Should Be  ${CAMPO}  name  feridiur



E verificar o campo Tabela de Feriados Noturna 

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[18]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[18]/td[2]/select
	
	Element Should Contain  ${LABEL}  Tabela de Feriados Noturna
	Element Attribute Value Should Be  ${CAMPO}  name  ferinotu

