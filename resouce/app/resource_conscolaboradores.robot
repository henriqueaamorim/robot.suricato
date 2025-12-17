*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

#EMPREGADO CONSULTA - 246 - 247
Acessar Tela: Empregado (Consulta)
  ${OBJ}      Set Variable  SCN
  ${APPNAME}  Set Variable    conscolaboradores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Empregado
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Colaboradores, Terceiros e Parceiros
    ${ELEMENT}  Set Variable     xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
    ${NOMETEMP}  Set Variable    Consulta de Colaboradores,Terceiros e Parceiros
  END
  Sleep  5s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#EMPREGADO FILTRO - 246 - 249
Acessar Tela: Empregado (Filtro)
  ${OBJ}      Set Variable  SCN
  ${APPNAME}  Set Variable  conscolaboradores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Empregado
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),' Empregado ')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Colaboradores, Terceiros e Parceiros
    ${ELEMENT}  Set Variable     xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
    ${NOMETEMP}  Set Variable    Consulta de Colaboradores,Terceiros e Parceiros
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#TERCEIRO CONSULTA - 246 - 249
Acessar Tela: Terceiro (Consulta)
  ${OBJ}      Set Variable  SCN
  ${APPNAME}  Set Variable    conscolaboradores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Terceiro
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Colaboradores, Terceiros e Parceiros
    ${ELEMENT}  Set Variable     xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
    ${NOMETEMP}  Set Variable    Consulta de Colaboradores,Terceiros e Parceiros
  END
  
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#TERCEIRO FILTRO - 246 - 249
Acessar Tela: Terceiro (Filtro)
  ${OBJ}      Set Variable  SCN
  ${APPNAME}  Set Variable  conscolaboradores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Terceiro
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),' ${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Colaboradores, Terceiros e Parceiros
    ${ELEMENT}  Set Variable     xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
    ${NOMETEMP}  Set Variable    Consulta de Colaboradores,Terceiros e Parceiros
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#PARCEIRO FILTRO - 246 - 249
Acessar Tela: Parceiro (Filtro)
  ${OBJ}      Set Variable  SCN
  ${APPNAME}  Set Variable  conscolaboradores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Parceiro
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Colaboradores, Terceiros e Parceiros
    ${ELEMENT}  Set Variable     xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
    ${NOMETEMP}  Set Variable    Consulta de Colaboradores,Terceiros e Parceiros
  END  
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#PARCEIRO CONSULTA - 246 - 249
Acessar Tela: Parceiro (Consulta)
  ${OBJ}      Set Variable  SCN
  ${APPNAME}  Set Variable  conscolaboradores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Parceiro
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Colaboradores, Terceiros e Parceiros
    ${ELEMENT}  Set Variable     xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
    ${NOMETEMP}  Set Variable    Consulta de Colaboradores,Terceiros e Parceiros
  END    
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#BUTTON
#resource_btn.

#FIELD
Selecionar uma opção no campo Empresa "${EMP}"
  Select from list by label  xpath=//*[@name="tbcolab_codiempr"]  ${EMP}

Selecionar uma opção campo Tipo de Colaborador "${TIPCOL}""
  Select from list by label  xpath=//*[@name="tbcolab_tipocola"]  ${TIPCOL}

Preencher o campo Nome "${NOME}"
  Input Text  xpath=//input[@name="tbpessoa_nomepess"]  ${NOME}

Preencher o campo Apelido "${APL}" 
  Input Text  xpath=//*[@name="tbcolab_apelcola"][@type="text"]  ${APL}

Preencher o campo Matrícula "${MAT}" 
  Input Text  xpath=//*[@name="tbcolab_codimatr"][@type="text"]  ${MAT}

Preencher o campo PIS "${PIS}"
  Input Text  xpath=//*[@name="tbcolab_numepis"][@type="text"]  ${PIS}

Preencher o campo Número do CPF "${CPF}"
  Input Text  xpath=//*[@name="tbcolab_numecpf"][@type="text"]  ${CPF}

Preencher o campo Ramal "${RAMAL}" 
  Input Text  xpath=//*[@name="numeramal"][@type="text"]  ${RAMAL}
  
Preencher o campo External Key "${EXKEY}" 
  Input Text  xpath=//*[@name="external_key"][@type="text"]  ${EXKEY}


#VERIFY LABELS CONSULTA
Verificar a label External Key
	${LABEL}   Set Variable  xpath=//div[contains(text(),'External Key')]

	Element Should Contain  ${LABEL}   External Key

Verificar a label Código do Colaborador
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]

	Element Should Contain  ${LABEL}   Código

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]

	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo de Colaborador
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo de Colaborador')]

	Element Should Contain  ${LABEL}   Tipo de Colaborador

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Matrícula')]

	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]

	Element Should Contain  ${LABEL}   Nome

Verificar a label PIS
	${LABEL}   Set Variable  xpath=//div[contains(text(),'PIS')]

	Element Should Contain  ${LABEL}   PIS

Verificar a label Crachá
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Crachá')]

	Element Should Contain  ${LABEL}   Crachá

Verificar a label 
	${LABEL}   Set Variable  xpath=//div[contains(text(),'')]

	Element Should Contain  ${LABEL}   

Verificar a label Utiliza Controle Biométrico
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Utiliza Controle Biométrico')]

	Element Should Contain  ${LABEL}   Utiliza Controle Biométrico

Verificar a label Número do CPF
	${LABEL}   Set Variable  xpath=//div[contains(text(),'CPF')]

	Element Should Contain  ${LABEL}   CPF

Verificar a label Empresa Terceira - Positivo
  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa Terceira')]

  Element Should Contain  ${LABEL}  Empresa Terceira

#Cenários negativos
Verificar a label Empresa Terceira - Negativo
    ${label_visivel}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//div[contains(text(),'Empresa Terceira')]
     #Should Be False    ${campo_visivel}    O campo "Empresa Terceira" não deveria aparecer na grade



#VERIFY CAMPOS FILTRO  
Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]

  sleep  2s
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]
	Element Should Contain             ${LABEL}   Empresa
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single   

Verificar o campo Tipo de Colaborador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo de Colaborador')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]
	Element Should Contain             ${LABEL}   Tipo de Colaborador	
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single
 
Verificar o campo Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomepess']
	Element Should Contain             ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name  nomepess

Verificar o campo Apelido
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Apelido')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbcolab_apelcola']
	Element Should Contain             ${LABEL}   Apelido
 	Element Attribute Value Should Be  ${CAMPO}   name  tbcolab_apelcola

Verificar o campo Matrícula
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=//input[@name='codimatr']
	Element Should Contain             ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name  codimatr

Verificar o campo PIS
	${LABEL}      Set Variable  xpath=//td[contains(text(),'PIS')]
	${CAMPO}      Set Variable  xpath=//input[@name='numepis']
	Element Should Contain             ${LABEL}   PIS
 	Element Attribute Value Should Be  ${CAMPO}   name  numepis

Verificar o campo Número do CPF	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'CPF')]
	${CAMPO}      Set Variable  xpath=//input[@name='numecpf']
	Element Should Contain             ${LABEL}   CPF	
 	Element Attribute Value Should Be  ${CAMPO}   name  numecpf

Verificar o campo Crachá
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Crachá')]
	${CAMPO}      Set Variable  xpath=//input[@name='icard']
	Element Should Contain             ${LABEL}   Crachá
 	Element Attribute Value Should Be  ${CAMPO}   name  icard     

Verificar o campo External Key	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'External Key')]
	${CAMPO}      Set Variable  xpath=//input[@name='external_key']
	Element Should Contain             ${LABEL}   External Key	
 	Element Attribute Value Should Be  ${CAMPO}   name  external_key       

Verificar o campo Empresa Terceira - Positivo
  ${LABEL}    Set Variable  xpath=//td[@id='SC_codiemprcont_label']
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]
	Element Should Contain             ${LABEL}   Empresa Terceira	
 	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single    

Verificar o campo Empresa Terceira - Negativo
  ${LABEL}    Set Variable  xpath=//td[@id='SC_codiemprcont_label']
  ${CAMPO}    Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]

# Verifica que o label NÃO está presente
  Element Should Not Be Visible    ${LABEL}
# Verifica que o campo NÃO está presente
  Element Should Not Be Visible    ${CAMPO}

  # Verifica se o campo não aparece
  ${STATUS}  ${MENSAGEM}    Run Keyword And Ignore Error    Element Should Not Be Visible    ${CAMPO}
  Run Keyword If    '${STATUS}' == 'FAIL'    Fail    O campo 'Empresa Terceira' está visível, mas não deveria.




#VERIFY REGISTRO
Verificar se o registro foi incluido com sucesso
  ${EMPREGADO}   Set Variable  xpath=//*[@id="SC_ancor1"]/td[7]
  Sleep  3s
  
  Element Should Contain   ${EMPREGADO}   Sarah Eliane Silveira	

#Verificar barras padrões do sistema
Verificar barra de navegação padrão  
  ${campoBuscaRapida}    Set Variable    xpath=//input[@placeholder='Busca Rápida']
  Element Attribute Value Should Be    ${campoBuscaRapida}    placeholder    Busca Rápida

  ${botaoOrdenacao}    Set Variable    xpath=//a[@id='ordcmp_top']
  Element Attribute Value Should Be    ${botaoOrdenacao}    id    ordcmp_top     

  ${botaoExportar}    Set Variable    xpath=//a[@id='sc_btgp_btn_group_1_top']
  Element Attribute Value Should Be    ${botaoExportar}    id    sc_btgp_btn_group_1_top
  
  ${botaoRetornarInicio}    Set Variable    xpath=a//[id='first_top']
  Element Attribute Value Should Be    ${botaoRetornarInicio}    id    first_top

  ${botaoRetornarRegistro}    Set Variable    xpath=a//[id='first_top']
  Element Attribute Value Should Be    ${botaoRetornarRegistro}    id    first_top

  ${botaoAvancarRegistro}    Set Variable    xpath=a//[id='forward_top']
  Element Attribute Value Should Be    ${botaoAvancarRegistro}    id    forward_top

  ${botaoAvancarFinal}    Set Variable    xpath=a//[id='last_top']
  Element Attribute Value Should Be    ${botaoAvancarFinal}    id    last_top

  ${botaoPesquisa}    Set Variable    xpath=a//[id='pesq_top']
  Element Attribute Value Should Be    ${botaoPesquisa}    id    pesq_top

  ${botaoNovo}    Set Variable    xpath=a//[id='pesq_top']
  Element Attribute Value Should Be    ${botaoNovo}    id    pesq_top

  
