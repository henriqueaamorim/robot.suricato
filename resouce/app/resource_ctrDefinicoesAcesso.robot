*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Crachá

# SCREEN
Acessar Tela Definições de Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Definições de Acesso
  ${APPNAME}  Set Variable  ctrDefinicoesAcesso
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_ctrDefinicoesAcesso_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#VERIFY

Verificar o campo Obrigatório Autorizador de Desbloqueio
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Obrigatório Autorizador de Desbloqueio
 	Element Attribute Value Should Be  ${CAMPO}   name   newobradb[]

Verificar o campo Qtde. Dias de Falta para Bloquear
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Qtde. Dias de Falta para Bloquear
 	Element Attribute Value Should Be  ${CAMPO}   name   newblodia

Verificar o campo Leitora de Barras Serial
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Leitora de Barras Serial
 	Element Attribute Value Should Be  ${CAMPO}   name  barrasserial[] 

Verificar o campo Bloqueia SmartCard por Serial
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Bloqueia SmartCard por Serial
 	Element Attribute Value Should Be  ${CAMPO}   name   bloqserial[]

Verificar o campo Código Motivo de Bloqueio Padrão
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Código Motivo de Bloqueio Padrão
 	Element Attribute Value Should Be  ${CAMPO}   name   codmotbloq

Verificar o campo Tecnologia SmartCard
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Tecnologia SmartCard
 	Element Attribute Value Should Be  ${CAMPO}   name   tecsmart

Verificar o campo Tecnologia para Foto
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Tecnologia para Foto
 	Element Attribute Value Should Be  ${CAMPO}   name   fotovisitante

Verificar o campo Altura da Foto
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[15]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[15]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Altura da Foto
 	Element Attribute Value Should Be  ${CAMPO}   name  alturafoto 

Verificar o campo Largura da Foto
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[16]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[16]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Largura da Foto
 	Element Attribute Value Should Be  ${CAMPO}   name   largurafoto

Verificar o campo Altura da Foto para Importação
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[17]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[17]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Altura da Foto para Importação
 	Element Attribute Value Should Be  ${CAMPO}   name   alturafotoimp

Verificar o campo Largura da Foto para Importação
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[18]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[18]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Largura da Foto para Importação
 	Element Attribute Value Should Be  ${CAMPO}   name   largurafotoimp

Verificar o campo Captura de Fotos Simultâneas
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[19]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[19]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Captura de Fotos Simultâneas
 	Element Attribute Value Should Be  ${CAMPO}   name   capturafotossimultaneas[]

Verificar o campo Tipo Biometria Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[20]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[20]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Tipo Biometria Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   biocolab

Verificar o campo Utiliza ReP
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[21]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[21]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Utiliza ReP
 	Element Attribute Value Should Be  ${CAMPO}   name   usarep[]

Verificar o campo Envio de Comandos On Line
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[22]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[22]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Envio de Comandos On Line
 	Element Attribute Value Should Be  ${CAMPO}   name   enviocomandoonline[]

Verificar o campo Utiliza Leitura de SmartCard (Somente ActiveX)
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[23]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[23]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Utiliza Leitura de SmartCard (Somente ActiveX)
 	Element Attribute Value Should Be  ${CAMPO}   name   utilizaleiturasmartcard[]

Verificar o campo Quantidade de Processos Simultaneos (GerServ)
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[24]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[24]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Quantidade de Processos Simultaneos (GerServ)
 	Element Attribute Value Should Be  ${CAMPO}   name   cmpqtdecommexec

Verificar o campo Utiliza Leitora HID
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[25]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[25]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Utiliza Leitora HID
 	Element Attribute Value Should Be  ${CAMPO}   name   utilizaleitorahidev[]

Verificar o campo Timeout Sessão (Segundos)
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[26]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[26]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Timeout Sessão (Segundos)
 	Element Attribute Value Should Be  ${CAMPO}   name   timeoutsessao

Verificar o campo Crachás Customizados
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[27]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[27]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Crachás Customizados
 	Element Attribute Value Should Be  ${CAMPO}   name   impressaocrachagerador[]

Verificar a label Controle de Estacionamento
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Controle de Estacionamento

Verificar o campo Estacionamento de Veículo
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Estacionamento de Veículo
 	Element Attribute Value Should Be  ${CAMPO}   name   controletotalveiculo

Verificar a label Biometria
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Biometria

Verificar o campo Utiliza Leitora Codin Vena
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Utiliza Leitora Codin Vena
 	Element Attribute Value Should Be  ${CAMPO}   name   palmvein[]

Verificar o campo Coleta de Templates Codin Vena
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Coleta de Templates Codin Vena
 	Element Attribute Value Should Be  ${CAMPO}   name   tipotemplatepalmvein

Verificar o campo Tipo de Crachá Para Vínculo do Template
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Tipo de Crachá Para Vínculo do Template
 	Element Attribute Value Should Be  ${CAMPO}   name   tipocrachapalmvein

Verificar a label Monitoramento
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Monitoramento

Verificar o campo Intervalo de Processamento
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Intervalo de Processamento
 	Element Attribute Value Should Be  ${CAMPO}   name   intervaloprocessamento

Verificar o campo Tempo Máximo entre Registros
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Tempo Máximo entre Registros
 	Element Attribute Value Should Be  ${CAMPO}   name   timeoutentreregistros

Verificar o campo Timeout Monitoramento
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Timeout Monitoramento
 	Element Attribute Value Should Be  ${CAMPO}   name   timeoutmonitoramento

Verificar o campo Controle de Multi Acesso
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Controle de Multi Acesso
 	Element Attribute Value Should Be  ${CAMPO}   name   monitoramento_multi_acess[]



#FIELD
Preencher o campo Qtde. Dias de Falta para Bloquear Acesso "${QTDE_DIAS_DE_FALTA_PARA_BLOQUEAR_ACESSO}"
	Input Text  xpath=//*[@name="newblodia"][@type="text"]  ${QTDE_DIAS_DE_FALTA_PARA_BLOQUEAR_ACESSO}

Preencher o campo Código Motivo de Bloqueio Padrão "${CÓDIGO_MOTIVO_DE_BLOQUEIO_PADRÃO}"
	Input Text  xpath=//*[@name="codmotbloq"][@type="text"]  ${CÓDIGO_MOTIVO_DE_BLOQUEIO_PADRÃO}

Preencher o campo Altura da Foto "${ALTURA_DA_FOTO}"
	Input Text  xpath=//*[@name="alturafoto"][@type="text"]  ${ALTURA_DA_FOTO}

Preencher o campo Largura da Foto "${LARGURA_DA_FOTO}"
	Input Text  xpath=//*[@name="largurafoto"][@type="text"]  ${LARGURA_DA_FOTO}

Preencher o campo Altura da Foto para Importação "${ALTURA_DA_FOTO_PARA_IMPORTAÇÃO}"
	Input Text  xpath=//*[@name="alturafotoimp"][@type="text"]  ${ALTURA_DA_FOTO_PARA_IMPORTAÇÃO}

Preencher o campo Largura da Foto para Importação "${LARGURA_DA_FOTO_PARA_IMPORTAÇÃO}"
	Input Text  xpath=//*[@name="largurafotoimp"][@type="text"]  ${LARGURA_DA_FOTO_PARA_IMPORTAÇÃO}

Selecionar uma opção no campo Tipo Biometria Colaborador "${TIPO_BIOMETRIA_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="biocolab"]  ${TIPO_BIOMETRIA_COLABORADOR}

Preencher o campo Quantidade de Processos Simultaneos (GerServ) "${QUANTIDADE_DE_PROCESSOS_SIMULTANEOS_(GERSERV)}"
	Input Text  xpath=//*[@name="cmpqtdecommexec"][@type="text"]  ${QUANTIDADE_DE_PROCESSOS_SIMULTANEOS_(GERSERV)}

Preencher o campo Timeout Sessão (Segundos) "${TIMEOUT_SESSÃO_(SEGUNDOS)}"
	Input Text  xpath=//*[@name="timeoutsessao"][@type="text"]  ${TIMEOUT_SESSÃO_(SEGUNDOS)}

Selecionar a opção no campo Estacionamento de Veículo "${ESTACIONAMENTO_DE_VEÍCULO}"
	Select From List By Label  xpath=//*[@name="controletotalveiculo"]  ${ESTACIONAMENTO_DE_VEÍCULO}

Selecionar a opção no campo Coleta de Templates Codin Vena "${COLETA_DE_TEMPLATES_CODIN_VENA}"
	Select From List By Label  xpath=//*[@name="tipotemplatepalmvein"]  ${COLETA_DE_TEMPLATES_CODIN_VENA}

Selecionar a opção no campo Tipo de Crachá Para Vínculo do Template "${TIPO_DE_CRACHÁ_PARA_VÍNCULO_DO_TEMPLATE}"
	Select From List By Label  xpath=//*[@name="tipocrachapalmvein"]  ${TIPO_DE_CRACHÁ_PARA_VÍNCULO_DO_TEMPLATE}

Preencher o campo Intervalo de Processamento "${INTERVALO_DE_PROCESSAMENTO}"
	Input Text  xpath=//*[@name="intervaloprocessamento"][@type="text"]  ${INTERVALO_DE_PROCESSAMENTO}

Preencher o campo Tempo Máximo entre Registros "${TEMPO_MÁXIMO_ENTRE_REGISTROS}"
	Input Text  xpath=//*[@name="timeoutentreregistros"][@type="text"]  ${TEMPO_MÁXIMO_ENTRE_REGISTROS}

Preencher o campo Timeout Monitoramento "${TIMEOUT_MONITORAMENTO}"
	Input Text  xpath=//*[@name="timeoutmonitoramento"][@type="text"]  ${TIMEOUT_MONITORAMENTO}

Selecionar a opção Obrigatório Autorizador de Desbloqueio
	Click Element  xpath=//*[@name="newobradb[]"]

Selecionar a opção Leitora de Barras Serial 
	Click Element  xpath=//*[@name="barrasserial[]"]

Selecionar a opção Bloqueia SmartCard por Serial
	Click Element  xpath=//*[@name="bloqserial[]"]

Selecionar a opção Captura de Fotos Simultâneas
	Click Element  xpath=//*[@name="capturafotossimultaneas[]"]

Selecionar a opção Utiliza ReP
	Click Element  xpath=//*[@name="usarep[]"]

Selecionar a opção Envio de Comandos On Line
	Click Element  xpath=//*[@name="enviocomandoonline[]"]

Selecionar a opção Crachás Customizados
	Click Element  xpath=//*[@name="impressaocrachagerador[]"]

Selecionar a opção Utiliza Biometria sem Validação de Crachá
	Click Element  xpath=//*[@name="utilbiomsemvalidcracha[]"]

Selecionar a opção Utiliza Leitora Codin Vena 
	Click Element  xpath=//*[@name="palmvein[]"]

Selecionar a opção Controle de Multi Acesso
	Click Element  xpath=//*[@name="monitoramento_multi_acess[]"]
