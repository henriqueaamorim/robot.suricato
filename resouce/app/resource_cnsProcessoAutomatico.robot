*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Processo | Importação
resource_mnu.Clicar No Menu Processo | Exportação
resource_mnu.Clicar No Menu Processo | Email
resource_mnu.Clicar No Menu Processo | OnLine

# SCREEN

# IMPORTAÇÃO CONSULTA #
Acessar Tela Processo de Importação
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsProcessoAutomatico
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
     ${SCREENNAME}  Set Variable  Processo de Importação
     ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
     ${SCREENNAME}  Set Variable  Processo Automático - Importação
     ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
# IMPORTAÇÃO  FILTRO #  
Acessar Tela Processo de Importação (Filtro)
  ${OBJ}         Set Variable   SCN
  ${APPNAME}     Set Variable   cnsProcessoAutomatico
  ${SCREENNAME}  Set Variable   Processo de Importação
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME} ')]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  

# EXPORTAÇÃO #
Acessar Tela Processo de Exportação
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsProcessoAutomatico
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Processo de Exportação
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Processo Automático - Exportação
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Processo de Exportação (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsProcessoAutomatico
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Processo de Exportação
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Processo Automático - Exportação
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  

# EMAIl #
Acessar Tela Processo de Email
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsProcessoAutomatico
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Processo de Email  
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Processo Automático - Email
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Processo de Email (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsProcessoAutomatico
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Processo de Email  
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Processo Automático - Email
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  

# ON-LINE #
Acessar Tela Processo On-Line
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsProcessoAutomatico
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Processo On-Line 
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Processo Automático - On-Line
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Processo On-Line (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsProcessoAutomatico
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Processo On-Line 
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Processo Automático - On-Line
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.


#FIELD

Selecionar uma opção do campo Código "${COD}"
  Select from list by label  xpath=//*[@name="codiprocauto_cond"]  ${COD}

Preencher o campo Código "${COD}"
  Input Text  xpath=//*[@name="codiprocauto"][@type="text"]   ${COD}

Selecionar uma opção do campo Descrição "${DESC}"
  Select from list by label  xpath=//*[@name="descproc_cond"]  ${DESC}

Preencher o campo Descrição "${DESC}" 
  Input Text  xpath=//*[@name="descproc"][@type="text"]  ${DESC}

# VERIFY LABELS IMPORTAÇÃO #

Verificar a label: Código
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]
	Element Should Contain  ${LABEL}   Código

Verificar a label: Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}   Descrição

# VERIFY CAMPOS IMPORTAÇÃO #  

Verificar a label: Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Código
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código')]
	${CAMPO}      Set Variable  xpath=//input[@name='codiprocauto']
	Element Should Contain             ${LABEL}   Código
 	Element Attribute Value Should Be  ${CAMPO}   name  codiprocauto

Verificar o campo: Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='descproc']
	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name    descproc



