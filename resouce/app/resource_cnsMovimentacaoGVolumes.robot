*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Movimentação de Guarda-Volumes

# SCREEN
Acessar Tela Utilização de Guarda-Volumes (Consulta)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Utilização de Guarda-Volumes
  ${APPNAME}  Set Variable  cnsMovimentacaoGVolumes
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Utilização de Guarda-Volumes (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Utilização de Guarda-Volumes - Filtro
  ${APPNAME}  Set Variable  cnsMovimentacaoGVolumes
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#VERIFY LABELS

Verificar a label: Guarda-Volumes
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Guarda-Volumes')]
	Element Should Contain  ${LABEL}  Guarda-Volumes

Verificar a label: Tipo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo')]
	Element Should Contain  ${LABEL}  Tipo

Verificar a label: Colaborador/Visitante
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Colaborador/Visitante')]
	Element Should Contain  ${LABEL}  Colaborador/Visitante

Verificar a label: Data Utilização
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Utilização')]
	Element Should Contain  ${LABEL}  Data Utilização

Verificar a label: Hora Utilização
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Utilização')]
	Element Should Contain  ${LABEL}  Hora Utilização

Verificar a label: Data Liberação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Liberação')]
	Element Should Contain  ${LABEL}  Data Liberação

Verificar a label: Hora Liberação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Liberação')]
	Element Should Contain  ${LABEL}   Hora Liberação


#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Guarda-Volumes	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Guarda-Volumes')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Guarda-Volumes	
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo: Tipo
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Tipo
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo: Data Utilização	
	${LABEL}       Set Variable  xpath=//td[contains(text(),'Data Utilização')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datauso_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datauso_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datauso_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datauso_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datauso_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datauso_input_2_ano']
	Element Should Contain             ${LABEL}    Data Utilização
 	Element Attribute Value Should Be  ${CAMPO1}   name   datauso_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   datauso_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   datauso_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   datauso_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   datauso_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   datauso_input_2_ano

Verificar o campo: Hora Utilização	
	${LABEL}       Set Variable  xpath=//td[contains(text(),'Hora Utilização')]
	${CAMPO1}      Set Variable  xpath=//input[@name='horauso_hor']
  ${CAMPO2}      Set Variable  xpath=//input[@name='horauso_min']
  ${CAMPO3}      Set Variable  xpath=//input[@name='horauso_input_2_hor']
  ${CAMPO4}      Set Variable  xpath=//input[@name='horauso_input_2_min']
  Element Should Contain             ${LABEL}    Hora Utilização	
 	Element Attribute Value Should Be  ${CAMPO1}   name   horauso_hor
  Element Attribute Value Should Be  ${CAMPO2}   name   horauso_min
  Element Attribute Value Should Be  ${CAMPO3}   name   horauso_input_2_hor
  Element Attribute Value Should Be  ${CAMPO4}   name   horauso_input_2_min

Verificar o campo: Data Liberação		
	${LABEL}       Set Variable  xpath=//td[contains(text(),'Data Liberação')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datareti_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datareti_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datareti_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datareti_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datareti_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datareti_input_2_ano']
	Element Should Contain             ${LABEL}    Data Liberação	
 	Element Attribute Value Should Be  ${CAMPO1}   name   datareti_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   datareti_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   datareti_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   datareti_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   datareti_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   datareti_input_2_ano

Verificar o campo: Hora Liberação	
	${LABEL}       Set Variable  xpath=//td[contains(text(),'Hora Liberação')]
	${CAMPO1}      Set Variable  xpath=//input[@name='horareti_hor']
  ${CAMPO2}      Set Variable  xpath=//input[@name='horareti_min']
  ${CAMPO3}      Set Variable  xpath=//input[@name='horareti_input_2_hor']
  ${CAMPO4}      Set Variable  xpath=//input[@name='horareti_input_2_min']
  Element Should Contain             ${LABEL}    Hora Liberação	
 	Element Attribute Value Should Be  ${CAMPO1}   name   horareti_hor
  Element Attribute Value Should Be  ${CAMPO2}   name   horareti_min
  Element Attribute Value Should Be  ${CAMPO3}   name   horareti_input_2_hor
  Element Attribute Value Should Be  ${CAMPO4}   name   horareti_input_2_min

