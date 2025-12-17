*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.resource_mnu.Clicar No Menu Relatórios | Consulta Impressa
# REPORT
resource_report.Navegar no Relatório: Marcação de Ponto Codin Mobile

# SCREEN
Acessar Tela Marcação de Ponto Codin Mobile (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Marcação de Ponto Codin Mobile
  ${APPNAME}     Set Variable  consMarcacaoMobile
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Marcação de Ponto Codin Mobile
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Marcação de Ponto Codin Mobile
  ${APPNAME}     Set Variable  consMarcacaoMobile
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Data/Hora Inicio "${DIA}/${MES}/${ANO} | ${HORA}:${MIN}"
  Input Text  name=datahora_dia   ${DIA}
  Input Text  name=datahora_mes   ${MES}
  Input Text  name=datahora_ano   ${ANO}

  Input Text  name=datahora_hor  ${HORA}
  Input Text  name=datahora_min  ${MIN}

Preencher o campo Data/Hora Fim "${DIA}/${MES}/${ANO} | ${HORA}:${MIN}"
  Input Text  name=datahora_input_2_dia   ${DIA}
  Input Text  name=datahora_input_2_mes   ${MES}
  Input Text  name=datahora_input_2_ano   ${ANO}

  Input Text  name=datahora_input_2_hor  ${HORA}
  Input Text  name=datahora_input_2_min  ${MIN}


#VERIFY (Filtro)

Verificar o campo Empresa
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   codiempr

Verificar o campo Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   nomepess

Verificar o campo Matricula
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Matricula
 	Element Attribute Value Should Be  ${CAMPO}   name   codimatr

Verificar o campo Mac Address
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Mac Address
 	Element Attribute Value Should Be  ${CAMPO}   name   macaddress

Verificar o campo Data
	${LABEL}     Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO1}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[1]
	${CAMPO2}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[2]
	${CAMPO3}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[3]
	${CAMPO4}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[4]
	${CAMPO5}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[5]
	${CAMPO6}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[1]
	${CAMPO7}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[2]
	${CAMPO8}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[3]
	${CAMPO9}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[4]
	${CAMPO10}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[5]
	
	Element Should Contain  ${LABEL}   Data
 	Element Attribute Value Should Be  ${CAMPO1}    name   datahora_dia
	Element Attribute Value Should Be  ${CAMPO2}    name   datahora_mes
	Element Attribute Value Should Be  ${CAMPO3}    name   datahora_ano
	Element Attribute Value Should Be  ${CAMPO4}    name   datahora_hor
	Element Attribute Value Should Be  ${CAMPO5}    name   datahora_min
	Element Attribute Value Should Be  ${CAMPO6}    name   datahora_input_2_dia
	Element Attribute Value Should Be  ${CAMPO7}    name   datahora_input_2_mes
	Element Attribute Value Should Be  ${CAMPO8}    name   datahora_input_2_ano
	Element Attribute Value Should Be  ${CAMPO9}    name   datahora_input_2_hor
	Element Attribute Value Should Be  ${CAMPO10}   name   datahora_input_2_min

Verificar o campo Fake GPS
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Fake GPS
 	Element Attribute Value Should Be  ${CAMPO}   name   fake_gps



#VERIFY

Verificar a label Matricula
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font/b
	Element Should Contain  ${LABEL}   Matricula

Verificar a label Tipo
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font/b
	Element Should Contain  ${LABEL}   Tipo

Verificar a label Colaborador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font/b
	Element Should Contain  ${LABEL}   Colaborador

Verificar a label Data
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font/b
	Element Should Contain  ${LABEL}   Data

Verificar a label Fuso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font/b
	Element Should Contain  ${LABEL}   Fuso

Verificar a label Latitude
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font/b
	Element Should Contain  ${LABEL}   Latitude

Verificar a label Longitude
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[8]/font/b
	Element Should Contain  ${LABEL}   Longitude

Verificar a label Mac Address
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[9]/font/b
	Element Should Contain  ${LABEL}   Mac Address

Verificar a label Versão do Sistema
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[10]/font/b
	Element Should Contain  ${LABEL}   Versão do Sistema

Verificar a label Localização
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[11]/font/b
	Element Should Contain  ${LABEL}   Localização

Verificar a label MNC
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[12]/font/b
	Element Should Contain  ${LABEL}   MNC

Verificar a label MCC
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[13]/font/b
	Element Should Contain  ${LABEL}   MCC

Verificar a label CID
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[14]/font/b
	Element Should Contain  ${LABEL}   CID

Verificar a label LAC
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[15]/font/b
	Element Should Contain  ${LABEL}   LAC

Verificar a label Fake GPS
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[16]/font/b
	Element Should Contain  ${LABEL}   Fake GPS

Verificar a label Fake Latitude
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[17]/font/b
	Element Should Contain  ${LABEL}   Fake Latitude

Verificar a label Fake Longitude
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[18]/font/b
	Element Should Contain  ${LABEL}   Fake Longitude

Verificar a label Ver Mapa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[19]/font/b
	Element Should Contain  ${LABEL}   Ver Mapa

Verificar a label Foto
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[20]/font/b
	Element Should Contain  ${LABEL}   Foto
