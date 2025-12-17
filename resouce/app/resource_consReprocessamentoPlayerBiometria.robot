*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.resource_mnu.Clicar No Menu Controle | Comando | Envio Individual de Comandos Player

# SCREEN
Acessar Tela Envio individual de comandos
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Envio individual de comandos
  ${APPNAME}     Set Variable  consReprocessamentoPlayerBiometria
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]


  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Envio individual de comandos (Resultado)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Envio individual de comandos
  ${APPNAME}     Set Variable  consReprocessamentoPlayerBiometria
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#BUTTON
#resource_btn.


#VERIFY
Verificar o campo Endereço IP
#(246)(249)
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Endereço IP')]
  ${CAMPO}  Set Variable  xpath=//input[@name='end_ip']

  Element Should Contain  ${LABEL}  Endereço IP
  Element Attribute Value Should Be  ${CAMPO}  name  end_ip

Verificar o campo Crachá
#(246)(249)
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Crachá')]
  ${CAMPO}  Set Variable  xpath=//input[@name='ifunc']

  Element Should Contain  ${LABEL}  Crachá
  Element Attribute Value Should Be  ${CAMPO}  name  ifunc

Verificar o campo Numero PIS
#(246)(249)
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Numero PIS')]
  ${CAMPO}  Set Variable  xpath=//input[@name='pis']

  Element Should Contain  ${LABEL}  Numero PIS
  Element Attribute Value Should Be  ${CAMPO}  name  pis

Verificar o campo Nome
#(246)(249)
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Nome')]
  ${CAMPO}  Set Variable  xpath=//input[@name='nome']

  Element Should Contain  ${LABEL}  Nome
  Element Attribute Value Should Be  ${CAMPO}  name  nome


#FIELD
Preencher o campo Endereço IP "${ENDEREÇO_IP}"
	Input Text  xpath=//*[@name="end_ip"][@type="text"]  ${ENDEREÇO_IP}

Preencher o campo Crachá "${CRACHÁ}"
	Input Text  xpath=//*[@name="ifunc"][@type="text"]  ${CRACHÁ}

Preencher o campo Numero PIS "${NUMERO_PIS}"
	Input Text  xpath=//*[@name="pis"][@type="text"]  ${NUMERO_PIS}

Preencher o campo Nome "${NOME}"
	Input Text  xpath=//*[@name="nome"][@type="text"]  ${NOME}

