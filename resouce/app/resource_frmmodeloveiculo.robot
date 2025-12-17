*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Cadastro | Modelos

# SCREEN
Acessar Tela Modelos de Veículos (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Modelos de Veículos (Atualização)
  ${APPNAME}     Set Variable  frmmodeloveiculo
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Modelos de Veículos (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Modelos de Veículos (Inclusão)
  ${APPNAME}     Set Variable  frmmodeloveiculo
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
Selecionar uma opção no campo Marca "${MARCA}"
  ${ELEMENT}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[2]/select
  
  IF  '${MARCA}' == 'API'
    ${MARCA}  Run Keyword  Marca
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Select From List By Label      ${ELEMENT}  ${MARCA}

Preencher o campo Modelo "${MODELO}"
  ${ELEMENT}  Set Variable  name=apelmodeveic
  
  IF  '${MODELO}' == 'API'
    ${MODELO}  Run Keyword  Modelo
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${MODELO}

Preencher o campo Quantidade Passageiros "${PASSAGEIRO}"
  ${ELEMENT}  Set Variable  name=quanpermpass
  
  IF  '${PASSAGEIRO}' == 'API'
    ${PASSAGEIRO}  Run Keyword  Capacidade Pessoas
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${PASSAGEIRO}

Selecionar uma opção no campo Tipo de Veículo "${VEICULO}"
  ${ELEMENT}  Set Variable  name=tipoveic
  
  IF  '${VEICULO}' == 'API'
    ${VEICULO}  Run Keyword  Tipo Veiculo
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Select From List By Label      ${ELEMENT}  ${VEICULO}

Preencher o campo Capacidade Tanque(I) "${TANQUE}"
  ${ELEMENT}  Set Variable  name=capatanq
  
  IF  '${TANQUE}' == 'API'
    ${TANQUE}  Run Keyword  Capacidade Tanque
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${TANQUE}

Preencher o campo Potênciancia(CV) "${POTENCIA}"
  ${ELEMENT}  Set Variable  name=pote
  
  IF  '${POTENCIA}' == 'API'
    ${POTENCIA}  Run Keyword  Potencia
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${POTENCIA}

Preencher o campo Custo KM/Rodado "${CUSTO}"
  ${ELEMENT}  Set Variable  name=valoquilroda
  
  IF  '${CUSTO}' == 'API'
    ${CUSTO}  Run Keyword  Custo Km Rodado
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${CUSTO}



#VERIFY

Verificar a label Marca *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Marca *

Verificar a label Código
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}   Código

Verificar o campo Modelo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}   Modelo *
 	Element Attribute Value Should Be  ${CAMPO}   name   apelmodeveic

Verificar o campo Quantidade Passageiros
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}   Quantidade Passageiros
 	Element Attribute Value Should Be  ${CAMPO}   name   quanpermpass

Verificar o campo Tipo de Veículo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/select
	
	Element Should Contain  ${LABEL}   Tipo de Veículo *
 	Element Attribute Value Should Be  ${CAMPO}   name   tipoveic

Verificar o campo Capacidade Tanque(l)
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}   Capacidade Tanque(l)
 	Element Attribute Value Should Be  ${CAMPO}   name   capatanq

Verificar o campo Potência(CV)
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}   Potênciancia(CV)
 	Element Attribute Value Should Be  ${CAMPO}   name   pote

Verificar o campo Custo KM/Rodado
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input
	
	Element Should Contain  ${LABEL}   Custo KM/Rodado
 	Element Attribute Value Should Be  ${CAMPO}   name   valoquilroda



#VERIFY (Inclusão)

Verificar o campo Marca * (Inclusão)
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/select
	
	Element Should Contain  ${LABEL}   Marca *
 	Element Attribute Value Should Be  ${CAMPO}   name   idmarcveic

Verificar o campo Modelo * (Inclusão)
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}   Modelo *
 	Element Attribute Value Should Be  ${CAMPO}   name   apelmodeveic

Verificar o campo Quantidade Passageiros (Inclusão)
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}   Quantidade Passageiros
 	Element Attribute Value Should Be  ${CAMPO}   name   quanpermpass

Verificar o campo Tipo de Veículo * (Inclusão)
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select
	
	Element Should Contain  ${LABEL}   Tipo de Veículo *
 	Element Attribute Value Should Be  ${CAMPO}   name   tipoveic

Verificar o campo Capacidade Tanque(l) (Inclusão)
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input
	
	Element Should Contain  ${LABEL}   Capacidade Tanque(l)
 	Element Attribute Value Should Be  ${CAMPO}   name   capatanq

Verificar o campo Potência(CV) (Inclusão)
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}   Potênciancia(CV)
 	Element Attribute Value Should Be  ${CAMPO}   name   pote

Verificar o campo Custo KM/Rodado (Inclusão)
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}   Custo KM/Rodado
 	Element Attribute Value Should Be  ${CAMPO}   name   valoquilroda
