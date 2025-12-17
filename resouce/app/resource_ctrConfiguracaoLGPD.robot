*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | LGPD - Configurações de Dados Sensíveis

# SCREEN
Acessar Tela LGPD - Configurações de Dados Sensíveis
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  LGPD - Configurações de Dados Sensíveis
  ${APPNAME}  Set Variable  ctrConfiguracaoLGPD
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  

#BUTTON
#resource_btn.



#VERIFY

Verificar a label Dados Sensíveis
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//h3[contains(text(),'Dados Sensíveis')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/div[4]/div/h3
	END  
	Element Should Contain  ${LABEL}   Dados Sensíveis

Verificar o campo Pessoa
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}    Set Variable  xpath=//div[contains(text(),'Pessoa')]
	  ${CAMPO1}   Set Variable  xpath=//input[@value='PESSOANOME']
	  ${CAMPO2}   Set Variable  xpath=//input[@value='PESSOAAPELIDO']
	  ${CAMPO3}   Set Variable  xpath=//input[@value='PESSOASEXO']
	  ${CAMPO4}   Set Variable  xpath=//input[@value='PESSOAPAI']
	  ${CAMPO5}   Set Variable  xpath=//input[@value='PESSOAMAE']
	  ${CAMPO6}   Set Variable  xpath=//input[@value='PESSOAPNE']
	  ${CAMPO7}   Set Variable  xpath=//input[@value='PESSOAGRUPOSANGUINEO']
	ELSE
	  ${LABEL}    Set Variable  xpath=/html/body/div[4]/div/div/div[1]
	  ${CAMPO1}   Set Variable  xpath=/html/body/div[4]/div/div/div[2]/input
	  ${CAMPO2}   Set Variable  xpath=/html/body/div[4]/div/div/div[3]/input
	  ${CAMPO3}   Set Variable  xpath=/html/body/div[4]/div/div/div[4]/input
	  ${CAMPO4}   Set Variable  xpath=/html/body/div[4]/div/div/div[5]/input
	  ${CAMPO5}   Set Variable  xpath=/html/body/div[4]/div/div/div[6]/input
	  ${CAMPO6}   Set Variable  xpath=/html/body/div[4]/div/div/div[7]/input
	  ${CAMPO7}   Set Variable  xpath=/html/body/div[4]/div/div/div[8]/input
	END
	Element Should Contain  ${LABEL}   Pessoa
 	Element Attribute Value Should Be  ${CAMPO1}   value   PESSOANOME
	Element Attribute Value Should Be  ${CAMPO2}   value   PESSOAAPELIDO
	Element Attribute Value Should Be  ${CAMPO3}   value   PESSOASEXO
	Element Attribute Value Should Be  ${CAMPO4}   value   PESSOAPAI
	Element Attribute Value Should Be  ${CAMPO5}   value   PESSOAMAE
	Element Attribute Value Should Be  ${CAMPO6}   value   PESSOAPNE
	Element Attribute Value Should Be  ${CAMPO7}   value   PESSOAGRUPOSANGUINEO

Verificar o campo Nascimento
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}    Set Variable  xpath=//div[contains(text(),'Nascimento')]
	  ${CAMPO1}   Set Variable  xpath=//input[@value='NASCIMENTODATA']
	  ${CAMPO2}   Set Variable  xpath=//input[@value='NASCIMENTOCIDADE']
	ELSE
	  ${LABEL}    Set Variable  xpath=/html/body/div[4]/div/div/div[9]
	  ${CAMPO1}   Set Variable  xpath=/html/body/div[4]/div/div/div[10]/input
	  ${CAMPO2}   Set Variable  xpath=/html/body/div[4]/div/div/div[11]/input
    END
	Element Should Contain  ${LABEL}   Nascimento
 	Element Attribute Value Should Be  ${CAMPO1}   value   NASCIMENTODATA
	Element Attribute Value Should Be  ${CAMPO2}   value   NASCIMENTOCIDADE

Verificar o campo Endereço
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}    Set Variable  xpath=//div[contains(text(),'Endereço')]
      ${CAMPO1}   Set Variable  xpath=//input[@value='ENDERECOCEP']
	  ${CAMPO2}   Set Variable  xpath=//input[@value='ENDERECONOME']
	  ${CAMPO3}   Set Variable  xpath=//input[@value='ENDERECONUMERO']
	  ${CAMPO4}   Set Variable  xpath=//input[@value='ENDERECOCOMPLEMENTO']
	  ${CAMPO5}   Set Variable  xpath=//input[@value='ENDERECOBAIRRO']
	  ${CAMPO6}   Set Variable  xpath=//input[@value='ENDERECOCIDADE']
	  ${CAMPO7}   Set Variable  xpath=//input[@value='ENDERECOESTADO']
	ELSE
	  ${LABEL}    Set Variable  xpath=/html/body/div[4]/div/div/div[12]
	  ${CAMPO1}   Set Variable  xpath=/html/body/div[4]/div/div/div[13]/input
	  ${CAMPO2}   Set Variable  xpath=/html/body/div[4]/div/div/div[14]/input
	  ${CAMPO3}   Set Variable  xpath=/html/body/div[4]/div/div/div[15]/input
	  ${CAMPO4}   Set Variable  xpath=/html/body/div[4]/div/div/div[16]/input
	  ${CAMPO5}   Set Variable  xpath=/html/body/div[4]/div/div/div[17]/input
	  ${CAMPO6}   Set Variable  xpath=/html/body/div[4]/div/div/div[18]/input
	  ${CAMPO7}   Set Variable  xpath=/html/body/div[4]/div/div/div[19]/input
	END
	Element Should Contain  ${LABEL}   Endereço
 	Element Attribute Value Should Be  ${CAMPO1}   value   ENDERECOCEP
	Element Attribute Value Should Be  ${CAMPO2}   value   ENDERECONOME
	Element Attribute Value Should Be  ${CAMPO3}   value   ENDERECONUMERO
	Element Attribute Value Should Be  ${CAMPO4}   value   ENDERECOCOMPLEMENTO
	Element Attribute Value Should Be  ${CAMPO5}   value   ENDERECOBAIRRO
	Element Attribute Value Should Be  ${CAMPO6}   value   ENDERECOCIDADE
	Element Attribute Value Should Be  ${CAMPO7}   value   ENDERECOESTADO

Verificar o campo Telefone
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}    Set Variable  xpath=//div[contains(text(),'Telefone')]
	  ${CAMPO1}   Set Variable  xpath=//input[@value='TELEFONEFIXO']
	  ${CAMPO2}   Set Variable  xpath=//input[@value='TELEFONERAMAL']
	  ${CAMPO3}   Set Variable  xpath=//input[@value='TELEFONECELULAR']
	ELSE
	${LABEL}    Set Variable  xpath=/html/body/div[4]/div/div/div[20]
	${CAMPO1}   Set Variable  xpath=/html/body/div[4]/div/div/div[21]/input
	${CAMPO2}   Set Variable  xpath=/html/body/div[4]/div/div/div[22]/input
	${CAMPO3}   Set Variable  xpath=/html/body/div[4]/div/div/div[23]/input
	END
	Element Should Contain  ${LABEL}   Telefone
 	Element Attribute Value Should Be  ${CAMPO1}   value   TELEFONEFIXO
	Element Attribute Value Should Be  ${CAMPO2}   value   TELEFONERAMAL
	Element Attribute Value Should Be  ${CAMPO3}   value   TELEFONECELULAR

Verificar o campo Email
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}    Set Variable  xpath=//div[contains(text(),'Email')]
	  ${CAMPO1}   Set Variable  xpath=//input[@value='EMAILCOMERCIAL']
	  ${CAMPO2}   Set Variable  xpath=//input[@value='EMAILPARTICULAR']
	ELSE  
	  ${LABEL}    Set Variable  xpath=/html/body/div[4]/div/div/div[24]
	  ${CAMPO1}   Set Variable  xpath=/html/body/div[4]/div/div/div[25]/input
	  ${CAMPO2}   Set Variable  xpath=/html/body/div[4]/div/div/div[26]/input
	END
	Element Should Contain  ${LABEL}   Email
 	Element Attribute Value Should Be  ${CAMPO1}   value   EMAILCOMERCIAL
	Element Attribute Value Should Be  ${CAMPO2}   value   EMAILPARTICULAR

Verificar o campo CPF
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}    Set Variable  xpath=//div[contains(text(),'CPF')]
	  ${CAMPO}   Set Variable  xpath=//input[@Value='CPFNUMERO']
	ELSE  
	  ${LABEL}   Set Variable  xpath=/html/body/div[4]/div/div/div[27]
	  ${CAMPO}   Set Variable  xpath=/html/body/div[4]/div/div/div[28]/input
	END
	Element Should Contain  ${LABEL}   CPF
 	Element Attribute Value Should Be  ${CAMPO}   value   CPFNUMERO

Verificar o campo PIS
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}    Set Variable  xpath=//div[contains(text(),'PIS')]
	  ${CAMPO}   Set Variable  xpath=//input[@value='PISNUMERO']
	ELSE 
	  ${LABEL}   Set Variable  xpath=/html/body/div[4]/div/div/div[29]
	  ${CAMPO}   Set Variable  xpath=/html/body/div[4]/div/div/div[30]/input
	END
	Element Should Contain  ${LABEL}   PIS
 	Element Attribute Value Should Be  ${CAMPO}   value   PISNUMERO

Verificar o campo Carteira de Habilitação
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}    Set Variable  xpath=//div[contains(text(),'Carteira de Habilitação')]
	  ${CAMPO1}   Set Variable  xpath=//input[@value='CNHNUMERO']
	  ${CAMPO2}   Set Variable  xpath=//input[@value='CNHCATEGORIA']
	  ${CAMPO3}   Set Variable  xpath=//input[@value='CNHDATAEMISSAO']
	  ${CAMPO4}   Set Variable  xpath=//input[@value='CNHDATAVENCIMENTO']
	ELSE  
	  ${LABEL}    Set Variable  xpath=/html/body/div[4]/div/div/div[31]
	  ${CAMPO1}   Set Variable  xpath=/html/body/div[4]/div/div/div[32]/input
	  ${CAMPO2}   Set Variable  xpath=/html/body/div[4]/div/div/div[33]/input
	  ${CAMPO3}   Set Variable  xpath=/html/body/div[4]/div/div/div[34]/input
	  ${CAMPO4}   Set Variable  xpath=/html/body/div[4]/div/div/div[35]/input
	END
	Element Should Contain  ${LABEL}   Carteira de Habilitação
 	Element Attribute Value Should Be  ${CAMPO1}   value   CNHNUMERO
	Element Attribute Value Should Be  ${CAMPO2}   value   CNHCATEGORIA
	Element Attribute Value Should Be  ${CAMPO3}   value   CNHDATAEMISSAO
	Element Attribute Value Should Be  ${CAMPO4}   value   CNHDATAVENCIMENTO

Verificar o campo Carteira de Identidade
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}    Set Variable  xpath=//div[contains(text(),'Carteira de Identidade')]
	  ${CAMPO1}   Set Variable  xpath=//input[@value='RGNUMERO']
	  ${CAMPO2}   Set Variable  xpath=//input[@value='RGORGAOEMISSOR']
	  ${CAMPO3}   Set Variable  xpath=//input[@value='RGESTADOEMISSOR']
	  ${CAMPO4}   Set Variable  xpath=//input[@value='RGDATAEMISSAO']
	ELSE  
	  ${LABEL}    Set Variable  xpath=/html/body/div[4]/div/div/div[36]
	  ${CAMPO1}   Set Variable  xpath=/html/body/div[4]/div/div/div[37]/input
	  ${CAMPO2}   Set Variable  xpath=/html/body/div[4]/div/div/div[38]/input
	  ${CAMPO3}   Set Variable  xpath=/html/body/div[4]/div/div/div[39]/input
	  ${CAMPO4}   Set Variable  xpath=/html/body/div[4]/div/div/div[40]/input
	END
	Element Should Contain  ${LABEL}   Carteira de Identidade
 	Element Attribute Value Should Be  ${CAMPO1}   value   RGNUMERO
	Element Attribute Value Should Be  ${CAMPO2}   value   RGORGAOEMISSOR
	Element Attribute Value Should Be  ${CAMPO3}   value   RGESTADOEMISSOR
	Element Attribute Value Should Be  ${CAMPO4}   value   RGDATAEMISSAO

Verificar o campo Carteira de Trabalho
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}    Set Variable  xpath=//div[contains(text(),'Carteira de Trabalho')]
	  ${CAMPO}   Set Variable  xpath=//input[@value='CTPSSERIE']
	ELSE  
	  ${LABEL}   Set Variable  xpath=/html/body/div[4]/div/div/div[41]
	  ${CAMPO}   Set Variable  xpath=/html/body/div[4]/div/div/div[42]/input
	END
	Element Should Contain  ${LABEL}   Carteira de Trabalho
 	Element Attribute Value Should Be  ${CAMPO}   value   CTPSSERIE

Verificar o campo OAB
 	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}    Set Variable  xpath=//div[contains(text(),'OAB')]
	  ${CAMPO}   Set Variable  xpath=//input[@value='OAB']
	ELSE  
	  ${LABEL}   Set Variable  xpath=/html/body/div[4]/div/div/div[43]
	  ${CAMPO}   Set Variable  xpath=/html/body/div[4]/div/div/div[44]/input
	END
	Element Should Contain  ${LABEL}   OAB
 	Element Attribute Value Should Be  ${CAMPO}   value   OAB
