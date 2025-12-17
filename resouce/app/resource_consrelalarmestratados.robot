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
resource_report.Navegar no Relatório: Alarmes Tratados

# SCREEN
Acessar Tela Valores de Entrada do Modelo
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Valores de Entrada do Modelo
  ${APPNAME}     Set Variable  consrelalarmestratados
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Alarmes Tratados
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Alarmes Tratados
  ${APPNAME}     Set Variable  consrelalarmestratados
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Exibir Usuário:
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Exibir Usuário:
 	Element Attribute Value Should Be  ${CAMPO}   name   filtroexibeusuario

Verificar o campo Data Alarme
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/input[1]
  ${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/input[2]
  ${CAMPO3}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/input[3]
  ${CAMPO4}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/input[1]
  ${CAMPO5}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/input[2]
  ${CAMPO6}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/input[3]
	
	Element Should Contain  ${LABEL}   Data Alarme
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbalarmtrata_dataalar_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   tbalarmtrata_dataalar_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   tbalarmtrata_dataalar_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   tbalarmtrata_dataalar_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   tbalarmtrata_dataalar_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   tbalarmtrata_dataalar_input_2_ano

Verificar o campo Hora Alarme
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td/input[1]
  ${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td/input[2]
  ${CAMPO3}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td/input[3]
  ${CAMPO4}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr[2]/td/input[1]
  ${CAMPO5}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr[2]/td/input[2]
  ${CAMPO6}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr[2]/td/input[3]
	
	Element Should Contain  ${LABEL}   Hora Alarme
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbalarmtrata_horaalar_hor
  Element Attribute Value Should Be  ${CAMPO2}   name   tbalarmtrata_horaalar_min
  Element Attribute Value Should Be  ${CAMPO3}   name   tbalarmtrata_horaalar_seg
  Element Attribute Value Should Be  ${CAMPO4}   name   tbalarmtrata_horaalar_input_2_hor
  Element Attribute Value Should Be  ${CAMPO5}   name   tbalarmtrata_horaalar_input_2_min
  Element Attribute Value Should Be  ${CAMPO6}   name   tbalarmtrata_horaalar_input_2_seg



#VERIFY

Verificar a label Data Alarme
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font/b/a/font
	Element Should Contain  ${LABEL}   Data Alarme

Verificar a label Hora Alarme
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font/b/a/font
	Element Should Contain  ${LABEL}   Hora Alarme

Verificar a label Planta
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font/b/a/font
	Element Should Contain  ${LABEL}   Planta

Verificar a label Codin
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font/b/a/font
	Element Should Contain  ${LABEL}   Codin

Verificar a label Cod. Sinal
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font/b/a/font
	Element Should Contain  ${LABEL}   Cod. Sinal

Verificar a label Tipo Alarme
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font/b/a/font
	Element Should Contain  ${LABEL}   Tipo Alarme

Verificar a label Data / Hora Alarme Tratado
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font
	Element Should Contain  ${LABEL}   Data / Hora 
  Element Should Contain  ${LABEL}   Alarme Tratado
