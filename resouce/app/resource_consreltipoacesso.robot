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
resource_report.Navegar no Relatório: Tipo de Acesso

# SCREEN
Acessar Tela Valores de Entrada do Modelo
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Valores de Entrada do Modelo
  ${APPNAME}     Set Variable  consreltipoacesso
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Tipo de Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Tipo de Acesso
  ${APPNAME}     Set Variable  consreltipoacesso
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
   

  #ait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Sleep  5s
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Código do Tipo de Acesso
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Código do Tipo de Acesso
 	Element Attribute Value Should Be  ${CAMPO}   name   tipoaces[]

Verificar o campo Exibir Usuário:
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Exibir Usuário:
 	Element Attribute Value Should Be  ${CAMPO}   name   filtroexibeusuario




#VERIFY

Verificar a label Código do Tipo de Acesso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr[1]/td[1]/font
	Element Should Contain  ${LABEL}   Código do Tipo de Acesso

Verificar a label Descrição do Tipo de Acesso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr[2]/td[1]/font
	Element Should Contain  ${LABEL}   Descrição do Tipo de Acesso

Verificar a label Título Reduzido Tipo de Acesso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr[3]/td[1]/font
	Element Should Contain  ${LABEL}   Título Reduzido Tipo de Acesso

Verificar a label Ação do Tipo de Acesso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr[4]/td[1]/font
	Element Should Contain  ${LABEL}   Ação do Tipo de Acesso

Verificar a label Cons.Tp.Acesso Apuração Ponto
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr[5]/td[1]/font
	Element Should Contain  ${LABEL}   Cons.Tp.Acesso Apuração Ponto

Verificar a label Cod.Função Gerada no Acesso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr[6]/td[1]/font
	Element Should Contain  ${LABEL}   Cod.Função Gerada no Acesso

Verificar a label Exibir Tipo de Acesso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td/table/tbody/tr/td/table[1]/tbody/tr/td/table/tbody/tr[7]/td[1]/font
	Element Should Contain  ${LABEL}   Exibir Tipo de Acesso



#FIELD
Selecionar uma opção no campo Código do Tipo de Acesso "${CÓDIGO_DO_TIPO_DE_ACESSO}"
	Select From List By Label  xpath=//*[@name="tipoaces[]"]  ${CÓDIGO_DO_TIPO_DE_ACESSO}

Selecionar uma opção no campo Exibir Usuário "${EXIBIR_USUÁRIO}"
	Select From List By Label  xpath=//*[@name="filtroexibeusuario"]  ${EXIBIR_USUÁRIO}

