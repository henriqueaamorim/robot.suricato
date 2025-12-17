*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Integração TOTVS

# SCREEN
Acessar Tela Configurações Integração TOTVS
  ${OBJ}         Set Variable  SCN
  #${SCREENNAME}  Set Variable  Integração TOTVS
  ${APPNAME}  Set Variable  BLANKSETTINGS
  ${ELEMENT}  Set Variable    xpath=//div[@class='collapsible active']

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#VERIFY

Verificar o campo Integração TOTVS
	${LABEL} 		  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Integração TOTVS
 	Element Attribute Value Should Be  ${CHECKBOX}   name   integracaototvs[]

Verificar o campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos)
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[12]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[12]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos)
 	Element Attribute Value Should Be  ${CAMPO}   name   totvs_faixa_inicio_antes

Verificar o campo Tempo de Tolerancia depois do acesso da faixa de entrada (Minutos)
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[13]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[13]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Tempo de Tolerancia depois do acesso da faixa de entrada (Minutos)
 	Element Attribute Value Should Be  ${CAMPO}   name   totvs_faixa_inicio_depois

Verificar o campo Tempo de Tolerancia antes do acesso da faixa de saída (Minutos)
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[14]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[14]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Tempo de Tolerancia antes do acesso da faixa de saída (Minutos)
 	Element Attribute Value Should Be  ${CAMPO}   name   totvs_faixa_fim_antes

Verificar o campo Tempo de Tolerancia depois do acesso da faixa de saída (Minutos)
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[15]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[15]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Tempo de Tolerancia depois do acesso da faixa de saída (Minutos)
 	Element Attribute Value Should Be  ${CAMPO}   name   totvs_faixa_fim_depois

Verificar o campo Tag do Início da Escala
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[29]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[29]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Tag do Início da Escala
 	Element Attribute Value Should Be  ${CAMPO}   name   totvs_inicio_escala



#FIELD
Selecionar a opção Integração TOTVS 
    Sleep  2s
	Scroll Element Into View  xpath=//div[@class="collapsible active"] 
	Click Element  xpath=//div[@class="collapsible active"]    
	Wait Until Element Is Visible     xpath=//div[@class="collapsible active"] 
    Select From List By Label     xpath=//select[@id="TOTVS"]    Sim

Selecionar uma opção no campo Sistema "${SISTEMA}"
	Select From List By Label  xpath=//*[@name="sistema"]  ${SISTEMA}

Preencher o campo Cód. Empresa Padrão "${CÓD._EMPRESA_PADRÃO}"
	Input Text  xpath=//*[@name="empresapadrao"][@type="text"]  ${CÓD._EMPRESA_PADRÃO}

Preencher o campo Cód. Organograma Local "${CÓD._ORGANOGRAMA_LOCAL}"
	Input Text  xpath=//*[@name="codiorgaloca"][@type="text"]  ${CÓD._ORGANOGRAMA_LOCAL}

Preencher o campo Local Organograma "${LOCAL_ORGANOGRAMA}"
	Input Text  xpath=//*[@name="locaorgapai"][@type="text"]  ${LOCAL_ORGANOGRAMA}

Preencher o campo Grupo de Acesso Padrão "${GRUPO_DE_ACESSO_PADRÃO}"
	Input Text  xpath=//*[@name="grupacestotvs"][@type="text"]  ${GRUPO_DE_ACESSO_PADRÃO}

Selecionar uma opção no campo Turno Reduzido "${TURNO_REDUZIDO}"
	Select From List By Label  xpath=//*[@name="turnoredutotvs"]  ${TURNO_REDUZIDO}

Selecionar uma opção no campo Utiliza Tolerância "${UTILIZA_TOLERÂNCIA}"
	Select From List By Label  xpath=//*[@name="utilizatolerancia"]  ${UTILIZA_TOLERÂNCIA}

Selecionar uma opção no campo Tipo de Tolerância "${TIPO_DE_TOLERÂNCIA}"
	Select From List By Label  xpath=//*[@name="tipo_tolerancia"]  ${TIPO_DE_TOLERÂNCIA}

Preencher o campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos) "${TEMPO_DE_TOLERANCIA_ANTES_DO_ACESSO_DA_FAIXA_DE_ENTRADA_(MINUTOS)}"
	Input Text  xpath=//*[@name="totvs_faixa_inicio_antes"][@type="text"]  ${TEMPO_DE_TOLERANCIA_ANTES_DO_ACESSO_DA_FAIXA_DE_ENTRADA_(MINUTOS)}

Preencher o campo Tempo de Tolerancia depois do acesso da faixa de entrada (Minutos) "${TEMPO_DE_TOLERANCIA_DEPOIS_DO_ACESSO_DA_FAIXA_DE_ENTRADA_(MINUTOS)}"
	Input Text  xpath=//*[@name="totvs_faixa_inicio_depois"][@type="text"]  ${TEMPO_DE_TOLERANCIA_DEPOIS_DO_ACESSO_DA_FAIXA_DE_ENTRADA_(MINUTOS)}

Preencher o campo Tempo de Tolerancia antes do acesso da faixa de saída (Minutos) "${TEMPO_DE_TOLERANCIA_ANTES_DO_ACESSO_DA_FAIXA_DE_SAÍDA_(MINUTOS)}"
	Input Text  xpath=//*[@name="totvs_faixa_fim_antes"][@type="text"]  ${TEMPO_DE_TOLERANCIA_ANTES_DO_ACESSO_DA_FAIXA_DE_SAÍDA_(MINUTOS)}

Preencher o campo Tempo de Tolerancia depois do acesso da faixa de saída (Minutos) "${TEMPO_DE_TOLERANCIA_DEPOIS_DO_ACESSO_DA_FAIXA_DE_SAÍDA_(MINUTOS)}"
	Input Text  xpath=//*[@name="totvs_faixa_fim_depois"][@type="text"]  ${TEMPO_DE_TOLERANCIA_DEPOIS_DO_ACESSO_DA_FAIXA_DE_SAÍDA_(MINUTOS)}

Selecionar uma opção no campo Tipo de Controle de Refeição "${TIPO_DE_CONTROLE_DE_REFEIÇÃO}"
	Select From List By Label  xpath=//*[@name="controle_refeicao"]  ${TIPO_DE_CONTROLE_DE_REFEIÇÃO}

Selecionar uma opção no campo Tolerância Refeição (Saida) "${TOLERÂNCIA_REFEIÇÃO_(SAIDA)}"
	Select From List By Label  xpath=//*[@name="toleranciareferenciaentrada"]  ${TOLERÂNCIA_REFEIÇÃO_(SAIDA)}

Preencher o campo Tolerância Refeição (Valor) "${TOLERÂNCIA_REFEIÇÃO_(VALOR)}"
	Input Text  xpath=//*[@name="toleranciareferenciaentradavalor"][@type="text"]  ${TOLERÂNCIA_REFEIÇÃO_(VALOR)}

Selecionar uma opção no campo Faixa de Acesso Refeitório Mandatorio "${FAIXA_DE_ACESSO_REFEITÓRIO_MANDATORIO}"
	Select From List By Label  xpath=//*[@name="faixahorariomandatorio"]  ${FAIXA_DE_ACESSO_REFEITÓRIO_MANDATORIO}

Selecionar uma opção no campo Chave Externa "${CHAVE_EXTERNA}"
	Select From List By Label  xpath=//*[@name="external_key_pesq"]  ${CHAVE_EXTERNA}

Selecionar uma opção no campo Controlar Chave Externa Refeitório "${CONTROLAR_CHAVE_EXTERNA_REFEITÓRIO}"
	Select From List By Label  xpath=//*[@name="external_keyfilial"]  ${CONTROLAR_CHAVE_EXTERNA_REFEITÓRIO}

Preencher o campo Tipo de Situação Trabalhista Padrão "${TIPO_DE_SITUAÇÃO_TRABALHISTA_PADRÃO}"
	Input Text  xpath=//*[@name="tipo_situacao_padrao"][@type="text"]  ${TIPO_DE_SITUAÇÃO_TRABALHISTA_PADRÃO}

Selecionar uma opção no campo Faixa de Acesso Mandatório "${FAIXA_DE_ACESSO_MANDATÓRIO}"
	Select From List By Label  xpath=//*[@name="totvs_horario_acesso"]  ${FAIXA_DE_ACESSO_MANDATÓRIO}

Selecionar uma opção no campo Configuração Padrão de Acesso Refeição e Biometria "${CONFIGURAÇÃO_PADRÃO_DE_ACESSO_REFEIÇÃO_E_BIOMETRIA}"
	Select From List By Label  xpath=//*[@name="parampadraoacessos"]  ${CONFIGURAÇÃO_PADRÃO_DE_ACESSO_REFEIÇÃO_E_BIOMETRIA}

Selecionar uma opção no campo Tag do Início da Escala "${TAG_DO_INÍCIO_DA_ESCALA}"
	Select From List By Label  xpath=//*[@name="totvs_inicio_escala"]  ${TAG_DO_INÍCIO_DA_ESCALA}

