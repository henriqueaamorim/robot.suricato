*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Perfil de Acesso

# SCREEN
Acessar Tela Perfil de Acesso
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  ctrEspelhoAcesso
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Perfil de Acesso 
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Perfil de Acesso 
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.

#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="N_codigoempresa"]  ${EMPRESA}

Selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="N_tipocolaborador"]  ${TIPO_COLABORADOR}

Preencher o campo Matricula "${MATRICULA}"
	Input Text  xpath=//*[@name="N_Matricula"][@type="number"]  ${MATRICULA}

Preencher o campo Crachá "${CRACHÁ}"
	Input Text  xpath=//*[@name="N_Cracha"][@type="number"]  ${CRACHÁ}

#VERIFY CAMPOS

E verificar o campo: Empresa
	${LABEL}  Set Variable  xpath=//td[contains(text(),'Empresa:')]
	${CAMPO}  Set Variable  xpath=//select[@name='N_codigoempresa']
	Element Should Contain  ${LABEL}   Empresa: 
	Element Attribute Value Should Be  ${CAMPO}  name   N_codigoempresa

E verificar o campo Tipo Colaborador
	${CAMPO}  Set Variable  xpath=//select[@name='N_tipocolaborador']
	Element Attribute Value Should Be  ${CAMPO}  name  N_tipocolaborador

E verificar o campo Matrícula
	${CAMPO}  Set Variable  xpath=//input[@name='N_Matricula']
	Element Attribute Value Should Be  ${CAMPO}  name  N_Matricula

E verificar o campo Crachá
	${CAMPO}  Set Variable  xpath=//input[@name='N_Cracha']
	Element Attribute Value Should Be  ${CAMPO}  name  N_Cracha 




