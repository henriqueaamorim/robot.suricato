*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Autorização | Agendamento

# SCREEN
Acessar Tela Agendamento de Autorização de Entrada (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Agendamento de Autorização de Entrada
  ${APPNAME}  Set Variable   frmagendamentoautorizacaoentrada
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


  
Acessar Tela Agendamento de Autorização de Entrada (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Agendamento de Autorização de Entrada
  ${APPNAME}  Set Variable   frmagendamentoautorizacaoentrada
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
 



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Data da Autorização "${DATA}"
  Input Text  xpath=//*[@name="dataprev"][@type="text"]  ${DATA}

Preencher o campo Hora da Autorização "${HORA}"
  Input Text  xpath=//*[@name="horaprev"][@type="text"]  ${HORA}

Preencher o campo Código do Colaborador "${CODIGO}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${CODIGO}
  Sleep  2s
Preencher o campo Grupo de Acesso "${GRUPO}"
  Click Element  xpath=//*[@id="hidden_bloco_3"]/tbody/tr[2]/td[1]
  Input Text  xpath=//*[@name="codiperm"][@type="text"]  ${GRUPO}
 
Preencher o campo Data de Validade "${DATA}"
  Input Text  xpath=//*[@name="datavali"][@type="text"]  ${DATA}

Preencher o campo Hora da Validade "${HORA}"
  Input Text  xpath=//*[@name="horavaliauto"][@type="text"]  ${HORA}

Preencher o campo Observações "${OBSERVACOES}"
  Input Text  xpath=//*[@name="obseagen"]  ${OBSERVACOES}

Preencher o campo Código do Autorizador "${CODIGO}"
    Input Text  xpath=//*[@name="idcolaautolibe"][@type="text"]  ${CODIGO}
	#Necessário usar o scroll para voltar até o botão de incluir o registro
	Execute Javascript  window.scrollTo(0,0)
	Sleep  1s


#VERIFY

Verificar o campo Data da Autorização
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/span[1]/input

	Element Should Contain  ${LABEL}   Data da Autorização
 	Element Attribute Value Should Be  ${CAMPO}   name   dataprev

Verificar o campo Hora da Autorização *
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Hora da Autorização
 	Element Attribute Value Should Be  ${CAMPO}   name   horaprev

Verificar a label Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Colaborador

Verificar o campo Código do Colaborador *
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Código do Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolab

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span

Verificar a label Tipo do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span
	Element Should Contain  ${LABEL}   Nome

Verificar o campo Grupo de Acesso
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Grupo de Acesso
 	Element Attribute Value Should Be  ${CAMPO}   name   codiperm

Verificar o campo Data da Validade
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span[1]/input

	Element Should Contain  ${LABEL}   Data da Validade
 	Element Attribute Value Should Be  ${CAMPO}   name   datavali

Verificar o campo Hora da Validade
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Hora da Validade
 	Element Attribute Value Should Be  ${CAMPO}   name   horavaliauto

Verificar o campo Observações
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/textarea

	Element Should Contain  ${LABEL}   Observações
 	Element Attribute Value Should Be  ${CAMPO}   name   obseagen

Verificar a label Autorizador
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Autorizador

Verificar o campo Código do Autorizador
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Código do Autorizador
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolaautolibe

Verificar a label Empresa do Autorizador
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	Element Should Contain  ${LABEL}   Empresa do Autorizador

Verificar a label Tipo do Autorizador
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
	Element Should Contain  ${LABEL}   Tipo do Autorizador

Verificar a label Matrícula do Autorizador
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
	Element Should Contain  ${LABEL}   Matrícula do Autorizador

Verificar a label Nome do Autorizador
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span
	Element Should Contain  ${LABEL}   Nome do Autorizador
