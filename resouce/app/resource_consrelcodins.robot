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
resource_report.Navegar no Relatório: Codins

# SCREEN
Acessar Tela Relatorio de Codins - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatorio de Codins
  ${APPNAME}     Set Variable  consrelcodins
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Relatorio de Codins
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatorio de Codins
  ${APPNAME}     Set Variable  consrelcodins
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Descrição da Planta
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/table/tbody/tr/td[1]/select
	${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/table/tbody/tr/td[3]/select

	Element Should Contain  ${LABEL}   Descrição da Planta
 	Element Attribute Value Should Be  ${CAMPO1}   name   p_descplan_orig
	Element Attribute Value Should Be  ${CAMPO2}   name   p_descplan_dest

Verificar o campo Descrição do Codin
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/table/tbody/tr/td[1]/select
	${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/table/tbody/tr/td[3]/select

	Element Should Contain  ${LABEL}   Descrição do Codin
 	Element Attribute Value Should Be  ${CAMPO1}   name   c_desccole_orig
	Element Attribute Value Should Be  ${CAMPO2}   name   c_desccole_dest

Verificar o campo Modelo do Codin
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/table/tbody/tr/td[1]/select
	${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/table/tbody/tr/td[3]/select
	
	Element Should Contain  ${LABEL}   Modelo do Codin
 	Element Attribute Value Should Be  ${CAMPO1}   name   mc_descmodecole_orig
	Element Attribute Value Should Be  ${CAMPO2}   name   mc_descmodecole_dest

Verificar o campo Funcionamento do Codin
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/table/tbody/tr/td[1]/select
	${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/table/tbody/tr/td[3]/select
	
	Element Should Contain  ${LABEL}   Funcionamento do Codin
 	Element Attribute Value Should Be  ${CAMPO1}   name   fc_descfunccole_orig
	Element Attribute Value Should Be  ${CAMPO2}   name   fc_descfunccole_dest

Verificar o campo Codin Ativo
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/table/tbody/tr/td[1]/select
	${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/table/tbody/tr/td[3]/select
	
	Element Should Contain  ${LABEL}   Codin Ativo
 	Element Attribute Value Should Be  ${CAMPO1}   name   c_liceativ_orig
	Element Attribute Value Should Be  ${CAMPO2}   name   c_liceativ_dest

Verificar o campo Localização do Codin
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/table/tbody/tr/td[1]/select
	${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/table/tbody/tr/td[3]/select
	
	Element Should Contain  ${LABEL}   Localização do Codin
 	Element Attribute Value Should Be  ${CAMPO1}   name   lc_desclocacole_orig
	Element Attribute Value Should Be  ${CAMPO2}   name   lc_desclocacole_dest



#VERIFY

Verificar a label Código da Planta
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font/b
	Element Should Contain  ${LABEL}   Código da Planta

Verificar a label Descrição da Planta
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font/b
	Element Should Contain  ${LABEL}   Descrição da Planta

Verificar a label Código do Codin
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font/b
	Element Should Contain  ${LABEL}   Código do Codin

Verificar a label Descrição do Codin
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font/b
	Element Should Contain  ${LABEL}   Descrição do Codin

Verificar a label Endereço IP
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font/b
	Element Should Contain  ${LABEL}   Endereço IP

Verificar a label Modelo do Codin
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font/b
	Element Should Contain  ${LABEL}   Modelo do Codin

Verificar a label Indelevel
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font/b
	Element Should Contain  ${LABEL}   Indelevel

Verificar a label Funcionamento do Codin
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[8]/font/b
	Element Should Contain  ${LABEL}   Funcionamento do Codin

Verificar a label Codin Ativo
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[9]/font/b
	Element Should Contain  ${LABEL}   Codin Ativo

Verificar a label Localização do Codin
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[10]/font/b
	Element Should Contain  ${LABEL}   Localização do Codin
