*** Settings ***
Library         SeleniumLibrary
Library         ../../api/data/client/company.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Cadastro de Empresa Terceira

# SCREEN
Acessar Tela Cadastro de Empresas Terceiras (Atualização)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Empresa Terceira
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[4]
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de Empresas Terceiras (Atualização)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmoutrasempresas

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Cadastro de Empresas Terceiras (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Empresa Terceira
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[4]
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de Empresas Terceiras (Inclusão)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmoutrasempresas

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

# FIELD
Preencher o campo Nome da Empresa Terceira "${NOME}"
  ${ELEMENT}  Set Variable  name=nomeemprcont

  IF  '${NOME}' == 'API'
    ${NOME}  Run Keyword  Nome  
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${NOME}

Preencher o campo Nome Fantasia da Empresa Terceira "${NOME_FANTASIA}"
  ${ELEMENT}  Set Variable  name=apelemprcont

  IF  '${NOME_FANTASIA}' == 'API'
    ${NOME_FANTASIA}  Run Keyword  Marca 
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${NOME_FANTASIA}

Preencher o campo Código do CEP "${CEP}"
  ${ELEMENT}  Set Variable  name=codicep

  IF  '${CEP}' == 'API'
    ${CEP}  Run Keyword  CEP 
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${CEP}

Preencher o campo Endereço "${ENDERECO}"
  ${ELEMENT}  Set Variable  name=endremprcont

  IF  '${ENDERECO}' == 'API'
    ${ENDERECO}  Run Keyword  Endereço 
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${ENDERECO}

Preencher o campo Número "${NUMERO}"
  ${ELEMENT}  Set Variable  name=numeende

  IF  '${NUMERO}' == 'API'
    ${NUMERO}  Run Keyword  Número 
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${NUMERO}

Preencher o campo Complemento "${COMPLEMENTO}"
  ${ELEMENT}  Set Variable  name=compende

  IF  '${COMPLEMENTO}' == 'API'
    ${COMPLEMENTO}  Run Keyword  Complemento
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${COMPLEMENTO}

Preencher o campo Bairro "${BAIRRO}"
  ${ELEMENT}  Set Variable  name=nomebair

  IF  '${BAIRRO}' == 'API'
    ${BAIRRO}  Run Keyword  Bairro 
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${BAIRRO}

Preencher o campo Cidade "${CIDADE}"
  ${ELEMENT}  Set Variable  name=nomecida

  IF  '${CIDADE}' == 'API'
    ${CIDADE}  Run Keyword  Cidade 
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${CIDADE}

Preencher o campo Estado "${ESTADO}"
  ${ELEMENT}  Set Variable  name=nomeesta

  IF  '${ESTADO}' == 'API'
    ${ESTADO}  Run Keyword  Estado 
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${ESTADO}

Preencher o campo Número do Telefone "${TELEFONE}"
  ${ELEMENT}  Set Variable  name=numetele

  IF  '${TELEFONE}' == 'API'
    ${TELEFONE}  Run Keyword  Telefone   unidecode=True
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${TELEFONE}

Preencher o campo Email da Empresa "${EMAIL}"
  ${ELEMENT}  Set Variable  name=mailcont

  IF  '${EMAIL}' == 'API'
    ${EMAIL}  Run Keyword  Email 
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${EMAIL}

Selecionar um item no campo Tipo da Inscrição "${OPCAO}"
  Select from List by Label  name=tipoinsc   ${OPCAO}

Preencher o campo Número do Documento "${DOCUMENTO}"
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${ELEMENT}  Set Variable  xpath=//*[@name="numedocu"]
  ELSE
    ${ELEMENT}  Set Variable  xpath=//*[@name="txtcnpj"]
  END

  IF  '${DOCUMENTO}' == 'API'
    ${DOCUMENTO}  Run Keyword  Cnpj  
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${DOCUMENTO}

Preencher o campo Número do fax "${NUM}"
  Input Text  name=numefax  ${NUM}

Preencher o campo Home Page "${HOME}"
  Input Text  name=homepage  ${HOME}

Preencher o campo Pessoa de Contato "${PESSOA}"
  Input Text  name=contempr  ${PESSOA}

Preencher o campo Observação "${OBSERVACAO}"
  Input Text  name=obseempr  ${OBSERVACAO}

#VERIFY

Verificar o campo Nome da Empresa Terceira
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Nome da Empresa Terceira
 	Element Attribute Value Should Be  ${CAMPO}   name   nomeemprcont

Verificar o campo Nome Fantasia da Empresa Terceira
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Nome Fantasia da Empresa Terceira
 	Element Attribute Value Should Be  ${CAMPO}   name   apelemprcont

Verificar o campo Código do CEP
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Código do CEP
 	Element Attribute Value Should Be  ${CAMPO}   name   codicep

Verificar o campo Endereço
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Endereço
 	Element Attribute Value Should Be  ${CAMPO}   name   endremprcont

Verificar o campo Número
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Número
 	Element Attribute Value Should Be  ${CAMPO}   name   numeende

Verificar o campo Complemento
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Complemento
 	Element Attribute Value Should Be  ${CAMPO}   name   compende

Verificar o campo Bairro
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Bairro
 	Element Attribute Value Should Be  ${CAMPO}   name   nomebair

Verificar o campo Cidade
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Cidade
 	Element Attribute Value Should Be  ${CAMPO}   name   nomecida

Verificar o campo Estado
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Estado
 	Element Attribute Value Should Be  ${CAMPO}   name   nomeesta

Verificar o campo Número do Telefone
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Número do Telefone
 	Element Attribute Value Should Be  ${CAMPO}   name   numetele

Verificar o campo Número do fax
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Número do fax
 	Element Attribute Value Should Be  ${CAMPO}   name   numefax

Verificar o campo Home Page
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Home Page
 	Element Attribute Value Should Be  ${CAMPO}   name   homepage

Verificar o campo Email da Empresa
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Email da Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   mailcont

Verificar o campo Tipo da Inscrição
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[2]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain             ${LABEL}   Tipo da Inscrição
 	Element Attribute Value Should Be  ${CAMPO}   name   tipoinsc

Verificar o campo Número do Documento
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[17]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[17]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Número do Documento
 	Element Attribute Value Should Be  ${CAMPO}   name   numedocu

Verificar o campo Pessoa de Contato
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[18]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[18]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Pessoa de Contato
 	Element Attribute Value Should Be  ${CAMPO}   name   contempr

Verificar o campo Observação
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[19]/td[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[19]/td[2]/table/tbody/tr/td[1]/span[2]/textarea

	Element Should Contain             ${LABEL}   Observação
 	Element Attribute Value Should Be  ${CAMPO}   name   obseempr
