*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado
resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Cadastro de Terceiro
resource_mnu.Clicar No Menu Identificação | Colaborador | Parceiro

# SCREEN

# EMPREGADO #
Acessar Tela Cadastro de Empregado
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Empregado
  ${APPNAME}  Set Variable  frmcolaborador
  ${ELEMENT}  Set Variable    xpath=/html/body/form[4]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

Acessar Tela Cadastro de Empregado - Perfil de Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Empregado - Perfil de Acesso
  ${APPNAME}  Set Variable  frmcolaboradoresacesso
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



# TERCEIRO #

Acessar Tela Cadastro de Terceiro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Terceiro
  ${APPNAME}  Set Variable  frmcolaborador
  ${ELEMENT}  Set Variable    xpath=/html/body/form[4]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

Acessar Tela Cadastro de Terceiro - Perfil de Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Terceiro - Perfil de Acesso
  ${APPNAME}  Set Variable  frmcolaboradorcomplementar
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



# PARCEIRO #

Acessar Tela Cadastro de Parceiro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Parceiro
  ${APPNAME}  Set Variable  frmcolaborador
  ${ELEMENT}  Set Variable    xpath=/html/body/form[4]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

Acessar Tela Cadastro de Parceiro - Perfil de Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Parceiro - Perfil de Acesso
  ${APPNAME}  Set Variable  frmcolaboradorcomplementar
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  3s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
Clicar No Botão Buscar Dados Externos Para Número da Linha
  ${ELEMENT}  Set Variable  id=cap_linhonibusuar

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

  
# FIELD EMPREGADO #
Preencher o campo Colaborador Responsável "${COLAB}"
	Input Text  xpath=//*[@name="idcolabresp"][@type="text"]  ${COLAB}
	#Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]

Selecionar a opção Utiliza Matriz de Acesso 
	Click Element  xpath=//*[@name="matraces[]"]
	
Selecionar a opção Controla Anti-Dupla 
	Click Element  xpath=//*[@name="contantidupl[]"]
	
Selecionar a opção Bloqueado por Falta 
	Click Element  xpath=//*[@name="bloqfalt[]"]
	
Selecionar a opção Verificar Falta 
	Click Element  xpath=//*[@name="verifalt[]"]
	
Selecionar a opção Verifica Grupo de Acesso
	Click Element  xpath=//*[@name="veripermaces[]"]
	
Selecionar a opção Verifica Afastamento 
	Click Element  xpath=//*[@name="veriafas[]"]
	
Selecionar uma opção no campo Controla Faixa Horária "${FAIXA}"
	Select From List By Label  xpath=//*[@name="faixhoraaces"]  ${FAIXA}

Selecionar uma opção no campo Crédito Refeitório "${CREDITO}"
	Select From List By Label  xpath=//*[@name="contcredrefe"]  ${CREDITO}

Selecionar uma opção no campo Utiliza Controle Biométrico "${CONTROLE}"
	Select From List By Label  xpath=//*[@name="contbiom"]  ${CONTROLE}

Selecionar a opção Controla Intervalo de Almoço
	Click Element  xpath=//*[@name="intealmo[]"]

Preencher o campo Tempo Mínimo de Almoço (minutos) "${TEMPO}"
	Input Text  xpath=//*[@name="tempminialmo"][@type="text"]  ${TEMPO}

Selecionar a opção Controla Permanência de Acesso
	Click Element  xpath=//*[@name="temppermaces[]"]

Preencher o campo Tempo Mínimo de Permanência "${TEMPO}"
	Input Text  xpath=//*[@name="tempminiperm"][@type="text"]  ${TEMPO}

Preencher o campo Tolerância de Acesso Entrada/Saída "${TOLERANCIA}"
	Input Text  xpath=//*[@name="tolecontperm"][@type="text"]  ${TOLERANCIA}

Selecionar a opção Desbloqueio de Crachás
	Click Element  xpath=//*[@name="autodesbcrac[]"]

Selecionar a opção Registra Ponto
	Click Element  xpath=//*[@name="regiponto[]"]

Preencher o campo Turno "${TURNO}"
	Input Text  xpath=//*[@name="turno"][@type="text"]  ${TURNO}

Selecionar a opção Ponto Móvel 
	Click Element  xpath=//*[@name="pontomovel[]"]

Selecionar uma opção no campo Estacionamento com Vaga Fixa "${ESTACIONAMENTO}"
	Select From List By Label  xpath=//*[@name="estacodi"]  ${ESTACIONAMENTO}

Selecionar a opção Registra Ponto no Celular 
	Click Element  xpath=//*[@name="pontomobile[]"]

Selecionar a opção Valida acesso via REP 
	Click Element  xpath=//*[@name="valiacesrep[]"]

Selecionar a opção Acesso VIP ao refeitório 
	Click Element  xpath=//*[@name="refevip[]"]

Preencher o campo Validade Atestado de Saúde Ocupacional "${VALIDADE}"
	Input Text  xpath=//*[@name="datavaliaso"][@type="text"]  ${VALIDADE}

Preencher o campo Validade Treinamento de Segurança "${VALIDADE}"
	Input Text  xpath=//*[@name="datatreisegu"][@type="text"]  ${VALIDADE}

Preencher o campo Validade Equipamento de Protecao Individual "${VALIDADE}"
	Input Text  xpath=//*[@name="datavaliepi"][@type="text"]  ${VALIDADE}

Preencher o campo Validade Historico Integracao "${VALIDADE}"
	Input Text  xpath=//*[@name="dataintelocal"][@type="text"]  ${VALIDADE}

Preencher o campo Validade Carteira de Trabalho da Previdencia Social "${VALIDADE}"
	Input Text  xpath=//*[@name="datavalictps"][@type="text"]  ${VALIDADE}

Selecionar a opção Autorizar Agendamento de Visita 
	Click Element  xpath=//*[@name="autoagenvisi[]"]

Selecionar a opção Pode Receber visita 
	Click Element  xpath=//*[@name="colarecevisi[]"]
  
Preencher o campo Quantidade de Visitas Simultâneas "${QUANT}"
	Input Text  xpath=//*[@name="quantvisisimul"][@type="text"]  ${QUANT}

Preencher o campo Colaborador Substituto "${COLAB}"
	Input Text  xpath=//*[@name="idcolabsubs"][@type="text"]  ${COLAB}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[5]/td[1]

Selecionar a opção Verificar Retorno 
	Click Element  xpath=//*[@name="ver_ret[]"]

Preencher o campo Tempo de Retorno (Horas) "${TEMPO}"
	Input Text  xpath=//*[@name="tempo_ret"][@type="text"]  ${TEMPO}

Preencher o campo Tolerancia de Retorno (Minutos) "${TOLERANCIA}"
	Input Text  xpath=//*[@name="toler_ret"][@type="text"]  ${TOLERANCIA}

Preencher o campo Grupo de Acesso do Visitante "${ACESSO}"
  Input Text  xpath=//*[@name="permacesvisi"][@type="text"]  ${ACESSO} 
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_6"]/tbody/tr[3]/td[1]

Preencher o campo Grupo de Acesso em Dias Normais "${ACESSO}"
  Input Text  xpath=//*[@name="codiperm"][@type="text"]  ${ACESSO}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_6"]/tbody/tr[3]/td[1]

Preencher o campo Grupo de Acesso em Feriados "${ACESSO}"
  Input Text  xpath=//*[@name="permacesferi"][@type="text"]  ${ACESSO}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_6"]/tbody/tr[3]/td[1]

Preencher o campo Grupo de Acesso em Sábados "${ACESSO}"
  Input Text  xpath=//*[@name="permacessaba"][@type="text"]  ${ACESSO}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_6"]/tbody/tr[3]/td[1]

Preencher o campo Grupo de Acesso em Domingos "${ACESSO}"
  Input Text  xpath=//*[@name="permacesdomi"][@type="text"]  ${ACESSO}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_6"]/tbody/tr[3]/td[1]

Preencher o campo Usuário "${USUARIO}"
	Input Text  xpath=//*[@name="usuarede"][@type="text"]  ${USUARIO}

Selecionar uma opção no campo Colab. Utiliza Transp. Empresa "${COLAB}"
	Select From List By Label  xpath=//*[@name="permiusaronib"]  ${COLAB}

Preencher o campo Número da Linha "${NUM}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${NUM}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_6"]/tbody/tr[3]/td[1]

Preencher o campo Andar de Acesso do Colaborador "${ANDAR}"
	Input Text  xpath=//*[@name="andarcolab"][@type="text"]  ${ANDAR}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_6"]/tbody/tr[3]/td[1]
