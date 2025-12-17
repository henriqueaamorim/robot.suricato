*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Chave | Movimentação de Chave

# SCREEN
Acessar Tela Movimentação de Chave
  ${OBJ}         Set Variable    SCN
  ${APPNAME}     Set Variable    cnsMovimentacaoChaves
  ${SCREENNAME}  Set Variable    Movimentação de chave
  ${ELEMENT}     Set Variable    xpath=(//td[@class='scGridHeaderFont'])[4]
  
  Sleep  2s
  Mudar Frame Aplicação "iframe_mnu"
  Wait Until Element is Visible   ${ELEMENT}
  Element Text Should Be   ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Movimentação de Chave (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsMovimentacaoChaves
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Movimentação de chave
    ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable   Movimentação de Chave
    ${ELEMENT}     Set Variable   xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#VERIFY LABELS

Verificar a label: Chave
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Chave')]
	Element Should Contain  ${LABEL}   Chave

Verificar a label: Data Retirada
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Retirada')]
	Element Should Contain  ${LABEL}  Data Retirada 

Verificar a label: Hora Retirada
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Retirada')]
	Element Should Contain  ${LABEL}   Hora Retirada

Verificar a label: Colaborador
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Colaborador')]
	Element Should Contain  ${LABEL}   Colaborador

Verificar a label: Data Devolução
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Devolução')]
	Element Should Contain  ${LABEL}   Data Devolução

Verificar a label: Hora Devolução
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Devolução')]
	Element Should Contain  ${LABEL}    Hora Devolução

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Chave
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Chave')]
	${CAMPO}      Set Variable  xpath=//input[@name='codichav']
	Element Should Contain             ${LABEL}   Chave
 	Element Attribute Value Should Be  ${CAMPO}   name   codichav

Verificar o campo: Tipo Colaborador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo Colaborador')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Tipo Colaborador	

Verificar o campo Data Retirada	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data Retirada')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datareti_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datareti_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datareti_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datareti_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datareti_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datareti_input_2_ano']

	Element Should Contain             ${LABEL}    Data Retirada	
 	Element Attribute Value Should Be  ${CAMPO1}   name   datareti_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   datareti_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   datareti_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   datareti_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   datareti_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   datareti_input_2_ano

Verificar o campo: Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Empresa

Verificar o campo: Matrícula
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=//input[@name='codimatrreti']
	Element Should Contain             ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   codimatrreti

Verificar o campo: Data Devolução	
	${LABEL}       Set Variable  xpath=//td[contains(text(),'Data Devolução')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datadevo_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datadevo_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datadevo_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datadevo_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datadevo_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datadevo_input_2_ano']

	Element Should Contain             ${LABEL}   Data Devolução
 	Element Attribute Value Should Be  ${CAMPO1}   name   datadevo_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   datadevo_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   datadevo_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   datadevo_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   datadevo_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   datadevo_input_2_ano  



