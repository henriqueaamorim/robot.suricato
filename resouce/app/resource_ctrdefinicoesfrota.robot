*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Definições

# SCREEN
Acessar Tela Definições de Frota
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Definições Gerais
  ${APPNAME}     Set Variable  ctrdefinicoesfrota
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
   
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.


#VERIFY

Verificar a label Geral
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Geral')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   Geral

Verificar o campo Utilizar Liberação para Carga e Descarga
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}      Set Variable  xpath=//span[contains(text(),'Utilizar Liberação para Carga e Descarga')]
	  ${CHECKBOX}   Set Variable  xpath=//input[@name='libecargdesc[]']
	ELSE
	  ${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	  ${CHECKBOX}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
    END
	Element Should Contain  ${LABEL}   Utilizar Liberação para Carga e Descarga
 	Element Attribute Value Should Be  ${CHECKBOX}   name   libecargdesc[]

Verificar a label Condutores
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Condutores')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   Condutores

Verificar o campo Número Máximo de Pontos Carteira CNH
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}      Set Variable  xpath=//span[contains(text(),'Número Máximo de Pontos Carteira CNH')]
	  ${CAMPO}      Set Variable  xpath=//input[@name='maxipontcart']
	ELSE
	  ${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	  ${CAMPO}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	END
	Element Should Contain  ${LABEL}   Número Máximo de Pontos Carteira CNH
 	Element Attribute Value Should Be  ${CAMPO}   name   maxipontcart

Verificar o campo Utilizar Condutor que Excede o Máximo de Pontos na CNH
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}      Set Variable  xpath=//span[contains(text(),'Utilizar Condutor que Excede o Máximo de Pontos na CNH')]
	  ${CHECKBOX}   Set Variable  xpath=//input[@name='condexcepont[]']
	ELSE
	  ${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	  ${CHECKBOX}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Utilizar Condutor que Excede o Máximo de Pontos na CNH
 	Element Attribute Value Should Be  ${CHECKBOX}   name   condexcepont[]

Verificar a label Frota
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Frota')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   Frota

Verificar o campo Permite Saída de Veículo sem Agendamento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}      Set Variable  xpath=//span[contains(text(),'Permite Saída de Veículo sem Agendamento')]
	  ${CHECKBOX}   Set Variable  xpath=//input[@name='saidveicagen[]']
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
    END
	Element Should Contain  ${LABEL}   Permite Saída de Veículo sem Agendamento
 	Element Attribute Value Should Be  ${CHECKBOX}   name   saidveicagen[]

Verificar o campo Utiliza Autorizador na Movimentação de Veículos
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}      Set Variable  xpath=//span[contains(text(),'Utiliza Autorizador na Movimentação de Veículos')]
	  ${CHECKBOX}   Set Variable  xpath=//input[@name='automoviveic[]']
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
    END
	Element Should Contain  ${LABEL}   Utiliza Autorizador na Movimentação de Veículos
 	Element Attribute Value Should Be  ${CHECKBOX}   name   automoviveic[]

Verificar o campo Autoriza Saída de Veículo sem Seguro ou com Seguro Vencido ?
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}      Set Variable  xpath=//span[contains(text(),'Autoriza Saída de Veículo sem Seguro ou com Seguro Vencido ?')]
	  ${CHECKBOX}   Set Variable  xpath=//input[@name='veiclibersegu[]']
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Autoriza Saída de Veículo sem Seguro ou com Seguro Vencido ?
 	Element Attribute Value Should Be  ${CHECKBOX}   name   veiclibersegu[]

Verificar o campo Autoriza Saída de Veículo com Licenciamento Vencido ?
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}      Set Variable  xpath=//span[contains(text(),'Autoriza Saída de Veículo com Licenciamento Vencido ?')]
	  ${CHECKBOX}   Set Variable  xpath=//input[@name='veicliberlicen[]']
	ELSE
	  ${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	  ${CHECKBOX}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Autoriza Saída de Veículo com Licenciamento Vencido ?
 	Element Attribute Value Should Be  ${CHECKBOX}   name   veicliberlicen[]


#FIELD

Selecionar a opção Utilizar Liberação para Carga e Descarga
	Click Element  xpath=//*[@name="libecargdesc"]

Preencher o campo Número Máximo de Pontos Carteira CNH "10"
	Input Text  xpath=//*[@name="maxipontcart"][@type="text"]

Selecionar a opção Utilizar Condutor que Excede o Máximo de Pontos na CNH
	Click Element  xpath=//*[@name="condexcepont"]

Selecionar a opção Permite Saída de Veículo sem Agendamento
	Click Element  xpath=//*[@name="saidveicagen"]

Selecionar a opção Utiliza Autorizador na Movimentação de Veículos
	Click Element  xpath=//*[@name="automoviveic"]

Selecionar a opção Autoriza Saída de Veículo sem Seguro ou com Seguro Vencido
	Click Element  xpath=//*[@name="veiclibersegu"]

Selecionar a opção Autoriza Saída de Veículo com Licenciamento Vencido
	Click Element  xpath=//*[@name="veicliberlicen"]