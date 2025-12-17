*** Settings ***
Library         SeleniumLibrary
Library         ../../api/data/client/person.py

Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado
resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Cadastro de Terceiro
resource_mnu.Clicar No Menu Identificação | Colaborador | Parceiro

# SCREEN
# EMPREGADO #
Acessar Tela Cadastro de Empregado - Ficha Complementar
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Empregado - Ficha Complementar
  ${APPNAME}  Set Variable  frmcolaboradorcomplementar
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  

# TERCEIRO #
Acessar Tela Cadastro de Terceiro - Ficha Complementar
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Terceiro - Ficha Complementar
  ${APPNAME}  Set Variable  frmcolaboradorcomplementar
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  3s
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

# PARCEIRO #
Acessar Tela Cadastro de Parceiro - Ficha Complementar
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Parceiro - Ficha Complementar
  ${APPNAME}  Set Variable  frmcolaboradorcomplementar
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



  

#BUTTON
#resource_btn.



# ============================================= FIELD ================================================
Setar Campo CEP ${VALOR}

  ${ELEMENT}  Set Variable  xpath=//*[@name="codicep"][@type="text"]

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  CEP
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}


Setar Campo Endereço ${VALOR}

  ${ELEMENT}  Set Variable  xpath=//*[@name="enderesi"][@type="text"]

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Endereço
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Campo Número do Endereço ${VALOR}

  ${ELEMENT}  Set Variable  xpath=//*[@name="numeende"][@type="text"]

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Número
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Campo Complemento ${VALOR}

  ${ELEMENT}  Set Variable  xpath=//*[@name="compende"][@type="text"]

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Complemento
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Campo Bairro ${VALOR}

  ${ELEMENT}  Set Variable  xpath=//*[@name="nomebair"][@type="text"]

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Bairro
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}


Setar Campo Cidade ${VALOR}

  ${ELEMENT}  Set Variable  xpath=//*[@name="nomecida"][@type="text"]

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Cidade
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Lista Estado ${VALOR}
  
  ${ELEMENT}  Set Variable  xpath=//*[@name="nomeesta"]

  IF  '${VALOR}' == 'API'
          ${VALOR}  Run Keyword  Estado   
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Select From List By Value      ${ELEMENT}  ${VALOR}



Setar Campo Celular ${VALOR}

  ${ELEMENT}  Set Variable  xpath=//*[@name="numetele"][@type="text"]

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Celular
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}


Setar Campo Email Particular ${VALOR}

  ${ELEMENT}  Set Variable  xpath=//*[@name="mailpart"][@type="text"]

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Email Particular
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Campo Email Comercial ${VALOR}

  ${ELEMENT}  Set Variable  xpath=//*[@name="mailcome"][@type="text"]

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Email Profissional
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Campo Número de Identidade ${VALOR}

  ${ELEMENT}  Set Variable  xpath=//*[@name="numecartiden"][@type="text"]

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  RG
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Campo Número da Carteira de Habilitação ${VALOR}

  ${ELEMENT}  Set Variable  xpath=//*[@name="numecarthabi"][@type="text"]

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  CNH
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Campo Nome do Pai ${VALOR}

  ${ELEMENT}  Set Variable  xpath=//*[@name="nomepai"][@type="text"]

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Nome do Pai
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Campo Nome da Mãe ${VALOR}

  ${ELEMENT}  Set Variable  xpath=//*[@name="nomemae"][@type="text"]

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Nome da Mãe
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}



#VERIFY (EMPREGADO)

Verificar a label Endereço
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Endereço

Verificar o campo CEP
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input

	Element Should Contain  ${LABEL}   CEP
 	Element Attribute Value Should Be  ${CHECKBOX}   name   codicep

Verificar o campo Endereço
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[1]/input

	Element Should Contain  ${LABEL}   Endereço
 	Element Attribute Value Should Be  ${CHECKBOX}   name   enderesi

Verificar o campo Número 
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[2]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[2]/input

	Element Should Contain  ${LABEL}   Número 
 	Element Attribute Value Should Be  ${CHECKBOX}   name   numeende

Verificar o campo Complemento
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[3]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[3]/input

	Element Should Contain  ${LABEL}   Complemento
 	Element Attribute Value Should Be  ${CHECKBOX}   name   compende

Verificar o campo Bairro
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr/td[1]/input

	Element Should Contain  ${LABEL}   Bairro
 	Element Attribute Value Should Be  ${CHECKBOX}   name   nomebair

Verificar o campo Cidade
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr/td[2]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr/td[2]/input

	Element Should Contain  ${LABEL}   Cidade
 	Element Attribute Value Should Be  ${CHECKBOX}   name   nomecida

Verificar o campo Estado
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr/td[3]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr/td[3]/select

	Element Should Contain  ${LABEL}   Estado
 	Element Attribute Value Should Be  ${CHECKBOX}   name   nomeesta

Verificar o campo Celular (somente números)
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/input

	Element Should Contain  ${LABEL}   Celular (somente números)
 	Element Attribute Value Should Be  ${CHECKBOX}   name   numetele

Verificar o campo Ramal X
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input

	Element Should Contain  ${LABEL}   Ramal X
 	Element Attribute Value Should Be  ${CHECKBOX}   name   numerama

Verificar o campo Celular
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td[3]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td[3]/input

	Element Should Contain  ${LABEL}   Celular
 	Element Attribute Value Should Be  ${CHECKBOX}   name   numecelu

Verificar o campo Cód. Tipo de Usuário
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/select

	Element Should Contain  ${LABEL}   Cód. Tipo de Usuário
 	Element Attribute Value Should Be  ${CHECKBOX}   name   idtipousuar

Verificar a label Email
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Email

Verificar o campo Email Particular
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input

	Element Should Contain  ${LABEL}   Email Particular
 	Element Attribute Value Should Be  ${CHECKBOX}   name   mailpart

Verificar o campo Email Comercial
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input

	Element Should Contain  ${LABEL}   Email Comercial
 	Element Attribute Value Should Be  ${CHECKBOX}   name   mailcome

Verificar a label Carteira de Identidade
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Carteira de Identidade

Verificar o segundo campo Número
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input

	Element Should Contain  ${LABEL}   Número
 	Element Attribute Value Should Be  ${CHECKBOX}   name   numecartiden

Verificar o campo Órgão Emissor
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input

	Element Should Contain  ${LABEL}   Órgão Emissor
 	Element Attribute Value Should Be  ${CHECKBOX}   name   orgaemiscart

Verificar o campo UF do Órgão Emissor
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/select

	Element Should Contain  ${LABEL}   UF do Órgão Emissor
 	Element Attribute Value Should Be  ${CHECKBOX}   name   estaemiscart

Verificar o campo Data da Expedição
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/input[1]

	Element Should Contain  ${LABEL}   Data da Expedição
 	Element Attribute Value Should Be  ${CHECKBOX}   name   dataexpeiden

Verificar a label Carteira de Habilitação
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[7]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Carteira de Habilitação

Verificar o terceiro campo Número
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[7]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[7]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input

	Element Should Contain  ${LABEL}   Número
 	Element Attribute Value Should Be  ${CHECKBOX}   name   numecarthabi

Verificar o campo Categoria
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[7]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[7]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input

	Element Should Contain  ${LABEL}   Categoria
 	Element Attribute Value Should Be  ${CHECKBOX}   name   catecarthabi

Verificar o campo Primeira Habilitação
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[7]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[7]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/input[1]

	Element Should Contain  ${LABEL}   Primeira Habilitação
 	Element Attribute Value Should Be  ${CHECKBOX}   name   datacarthabi

Verificar o campo Vencimento
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[7]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[7]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/input[1]

	Element Should Contain  ${LABEL}   Vencimento
 	Element Attribute Value Should Be  ${CHECKBOX}   name   venccarthabi

Verificar a label Outras Informações
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Outras Informações

Verificar o campo Número da Carteira de Trabalho
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input

	Element Should Contain  ${LABEL}   Número da Carteira de Trabalho
 	Element Attribute Value Should Be  ${CHECKBOX}   name   ctpsnume

Verificar o campo Série da Carteira de Trabalho
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input

	Element Should Contain  ${LABEL}   Série da Carteira de Trabalho
 	Element Attribute Value Should Be  ${CHECKBOX}   name   ctpsseri

Verificar o campo Nome do Pai
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/input

	Element Should Contain  ${LABEL}   Nome do Pai
 	Element Attribute Value Should Be  ${CHECKBOX}   name   nomepai

Verificar o campo Nome da Mãe
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input

	Element Should Contain  ${LABEL}   Nome da Mãe
 	Element Attribute Value Should Be  ${CHECKBOX}   name   nomemae

Verificar o campo Cidade de Nascimento
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/input

	Element Should Contain  ${LABEL}   Cidade de Nascimento
 	Element Attribute Value Should Be  ${CHECKBOX}   name   cidanasc

Verificar o campo Portador de Necessidades Especiais - PNE? 
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select

	Element Should Contain  ${LABEL}   Portador de Necessidades Especiais - PNE? 
 	Element Attribute Value Should Be  ${CHECKBOX}   name   portnessespe

Verificar o campo Grupo Sanguíneo
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/select

	Element Should Contain  ${LABEL}   Grupo Sanguíneo
 	Element Attribute Value Should Be  ${CHECKBOX}   name   grupsang

Verificar o campo Observações
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input

	Element Should Contain  ${LABEL}   Observações
 	Element Attribute Value Should Be  ${CHECKBOX}   name   obsecola

Verificar o campo Vínculo
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/input

	Element Should Contain  ${LABEL}   Vínculo
 	Element Attribute Value Should Be  ${CHECKBOX}   name   vinculo

Verificar o campo Periculosidade
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input

	Element Should Contain  ${LABEL}   Periculosidade
 	Element Attribute Value Should Be  ${CHECKBOX}   name   pericu

Verificar o campo LISTAB
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[7]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[7]/td[1]/input

	Element Should Contain  ${LABEL}   LISTAB
 	Element Attribute Value Should Be  ${CHECKBOX}   name   listab

Verificar o campo Órgão
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input

	Element Should Contain  ${LABEL}   Órgão
 	Element Attribute Value Should Be  ${CHECKBOX}   name   orgcra

Verificar o campo Telefone
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[8]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[8]/td[1]/input

	Element Should Contain  ${LABEL}   Telefone
 	Element Attribute Value Should Be  ${CHECKBOX}   name   numtel

Verificar o campo Ramal
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input

	Element Should Contain  ${LABEL}   Ramal
 	Element Attribute Value Should Be  ${CHECKBOX}   name   numram

Verificar o campo Prédio
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[9]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[9]/td[1]/input

	Element Should Contain  ${LABEL}   Prédio
 	Element Attribute Value Should Be  ${CHECKBOX}   name   pretrb

Verificar o campo Andar
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/input

	Element Should Contain  ${LABEL}   Andar
 	Element Attribute Value Should Be  ${CHECKBOX}   name   andtrb

Verificar o campo Cargo
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[10]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[10]/td[1]/input

	Element Should Contain  ${LABEL}   Cargo
 	Element Attribute Value Should Be  ${CHECKBOX}   name   titcar

Verificar o campo Local
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[8]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/input

	Element Should Contain  ${LABEL}   Local
 	Element Attribute Value Should Be  ${CHECKBOX}   name   nomloc
