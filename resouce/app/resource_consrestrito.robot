*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Área Restrita | Consultar Acesso

# SCREEN
Acessar Tela: Acesso as Áreas Restritas (Filtro)
    ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consrestrito
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Acesso as Áreas Restritas	
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Acesso as Áreas Restritas
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "iframe_mnu"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela: Acesso as Áreas Restritas (Consulta)
    ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consrestrito
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Acesso as Áreas Restritas	
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Acesso as Áreas Restritas
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Filtro para consrestrito
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consrestrito
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Acesso as Áreas Restritas	
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}' )]
  ELSE
  ${SCREENNAME}  Set Variable  Filtro para consrestrito 
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
#resource_btn.

#VERIFY

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Grupo de Acesso	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Grupo de Acesso')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Grupo de Acesso	
 	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single  

Verificar a label: Tipo de Pessoa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo de Pessoa')]
  Sleep  2s
	Element Should Contain  ${LABEL}   Tipo de Pessoa

Verificar a label: Grupo de Acesso
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Grupo de Acesso')]
	Element Should Contain  ${LABEL}   Grupo de Acesso

Verificar a label: Detalhe Titular
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Detalhe Titular')]
	Element Should Contain  ${LABEL}   Detalhe Titular

Verificar a label: Detalhe Acesso
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Detalhe Acesso')]
	Element Should Contain  ${LABEL}  Detalhe Acesso        

E verificar o campo Tipo do Colaborador  
	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}  Tipo do Colaborador
	Element Attribute Value Should Be  ${CAMPO}  name  tipocola
	

E verificar o campo Código        
	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Código
	Element Attribute Value Should Be  ${CAMPO}  name  idcolab
	      

E verificar o campo Nome       
	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Nome
	Element Attribute Value Should Be  ${CAMPO}  name  nomepess
	     

E verificar o campo Grupo de Acesso         
	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}  Grupo de Acesso
	Element Attribute Value Should Be  ${CAMPO}  name  codiperm
	



#FIELD
Selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="tipocola"]  ${TIPO_DO_COLABORADOR}

Preencher o campo Código "${CÓDIGO}"
	Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${CÓDIGO}

Preencher o campo Nome "${NOME}"
	Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME}

Selecionar uma opção no campo Grupo de Acesso "${GRUPO_DE_ACESSO}"
	Select From List By Label  xpath=//*[@name="codiperm"]  ${GRUPO_DE_ACESSO}

