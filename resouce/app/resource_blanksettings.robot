*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configuração | Sistema


# SCREEN
Acessar Tela Configurações do sistema
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  BLANKSETTINGS
  ${SCREENNAME}  Set Variable  Configurações do sistema
  #${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


# Necessário alterar a dimensão da janela do navegador para que o robot consiga interagir com os campos
  #Set Window Size    1366    1000
  Sleep  2s

# FIELD

Clicar no botão para abrir todos os parâmetros
    Click Element  xpath=//button[@id="expandir"]
    Sleep  2s

Verificar a label: Geral
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Geral')]
    Sleep  2s
	Element Should Contain   ${LABEL}   Geral

Verificar O Valor Do Campo Nome Do Cliente
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Nome do Cliente')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'CLIENTE')]
	  ${CAMPO}      Set Variable  xpath=//input[@name='param_CLIENTE']
	Element Should Contain             ${LABEL1}   Nome do Cliente
    Element Should Contain             ${LABEL2}   CLIENTE
 	Element Attribute Value Should Be  ${CAMPO}    name   param_CLIENTE
    ELSE
    ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Nome do Cliente')]
    ${CAMPO}      Set Variable  xpath=//input[@id="CLIENTE"]
    Element Should Contain    Nome do Cliente
    Element Attribute Value Should Be  value   TELEMÁTICA
    END

Verificar o valor do campo Idioma Padrão do Sistema
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Idioma padrão do sistema')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'IDIOMA')]
	  ${CAMPO}      Set Variable  xpath=//input[@name='param_IDIOMA']
	Element Should Contain             ${LABEL1}   Idioma padrão do sistema
    Element Should Contain             ${LABEL2}   IDIOMA
 	Element Attribute Value Should Be  ${CAMPO}    name   param_IDIOMA
    ELSE
    Element Attribute Value Should Be  xpath=//input[@id="displayIDIOMA"]  value  3
    END

Verificar o valor do campo Debug
   IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Debug')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'DEBUG')]
	  ${CAMPO}      Set Variable  xpath=//select[@name='param_DEBUG']
	Element Should Contain             ${LABEL1}   Debug
    Element Should Contain             ${LABEL2}   DEBUG
 	Element Attribute Value Should Be  ${CAMPO}    name   param_DEBUG
    ELSE
    Sleep  3s
    Element Should Contain  xpath=//select[@id="DEBUG"]/option[1]  Não
    END

Verificar o valor do campo Utiliza Matriz de Acesso
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Utiliza Matriz de Acesso')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'MATRIZ_ACESSO')]
	  ${CAMPO}      Set Variable  xpath=//select[@name='param_MATRIZ_ACESSO']
	Element Should Contain             ${LABEL1}   Utiliza Matriz de Acesso
    Element Should Contain             ${LABEL2}   MATRIZ_ACESSO
 	Element Attribute Value Should Be  ${CAMPO}    name   param_MATRIZ_ACESSO
    ELSE
    Element Should Contain  xpath=//select[@id="MATRIZ_ACESSO"]/option[1]  Não
    END

Verificar o valor do campo Crachá Lógico/Físico
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Crachá Lógico/Físico')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'CRACHA_LOGICO_FISICO')]
	  ${CAMPO}      Set Variable  xpath=//select[@name='param_CRACHA_LOGICO_FISICO']
	Element Should Contain             ${LABEL1}   Crachá Lógico/Físico
    Element Should Contain             ${LABEL2}   CRACHA_LOGICO_FISICO
 	Element Attribute Value Should Be  ${CAMPO}    name   param_CRACHA_LOGICO_FISICO
    ELSE
# Não existe um crachá para ser selecionado, quando houver, trocar o xpath para: //select[@id="CRACHA_LOGICO_FISICO"]/option[1]
    Element Attribute Value Should Be  xpath=//select[@id="CRACHA_LOGICO_FISICO"]  id  CRACHA_LOGICO_FISICO
    END

Verificar o valor do campo Tipo Biometria Colaborador
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Tipo Biometria Colaborador')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'BIOMETRIA_COLABORADOR')]
	  ${CAMPO}      Set Variable  xpath=//select[@name='param_BIOMETRIA_COLABORADOR']
	Element Should Contain             ${LABEL1}   Tipo Biometria Colaborador
    Element Should Contain             ${LABEL2}   BIOMETRIA_COLABORADOR
 	Element Attribute Value Should Be  ${CAMPO}    name   param_BIOMETRIA_COLABORADOR
    ELSE
    Element Attribute Value Should Be  xpath=//select[@id="BIOMETRIA_COLABORADOR"]  value  1:N
    END

Verificar o valor do campo Timeout Sessão (Segundos)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Timeout Sessão (Segundos)')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'CNTRLTMPSESSAO')]
	  ${CAMPO}      Set Variable  xpath=//select[@name='param_ENVIACOMANDOONLINE']
	Element Should Contain             ${LABEL1}   Timeout Sessão (Segundos) 
    Element Should Contain             ${LABEL2}   CNTRLTMPSESSAO
 	Element Attribute Value Should Be  ${CAMPO}    name   param_ENVIACOMANDOONLINE
    ELSE
    Element Attribute Value Should Be  xpath=//input[@id="CNTRLTMPSESSAO"]  value  6000000
    END

Verificar o valor do campo Envio de Comandos On-line
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Envio de Comandos On Line')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'ENVIACOMANDOONLINE')]
	  ${CAMPO}      Set Variable  xpath=//select[@name='param_ENVIACOMANDOONLINE']
	Element Should Contain             ${LABEL1}   Envio de Comandos On Line
    Element Should Contain             ${LABEL2}   ENVIACOMANDOONLINE
 	Element Attribute Value Should Be  ${CAMPO}    name   param_ENVIACOMANDOONLINE
    ELSE
    Element Attribute Value Should Be  xpath=//select[@id="ENVIACOMANDOONLINE"]  value  N
    END

Verificar o valor do campo Quantidade de Processos Simultaneos (GerServ)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Quantidade de Processos Simultaneos (GerServ)')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'NUMERO_COMANDOS_EXECUCAO')]
	  ${CAMPO}      Set Variable  xpath=//input[@name='param_NUMERO_COMANDOS_EXECUCAO']
	Element Should Contain             ${LABEL1}   Quantidade de Processos Simultaneos (GerServ) 
    Element Should Contain             ${LABEL2}   NUMERO_COMANDOS_EXECUCAO
 	Element Attribute Value Should Be  ${CAMPO}    name   param_NUMERO_COMANDOS_EXECUCAO
    ELSE
    Element Attribute Value Should Be  xpath=//input[@id="NUMERO_COMANDOS_EXECUCAO"]  value  0
    END

Verificar o valor do campo É obrigatório informar o colaborador que está autorizando o desbloqueio do crachá?
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'É obrigatório informar o colaborador que está autorizando o desbloqueio do crachá?')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'OBRIGATORIO_AUTORIZADOR_DESBLOQUEIO_CRACHA')]
	  ${CAMPO}      Set Variable  xpath=//select[@name='param_OBRIGATORIO_AUTORIZADOR_DESBLOQUEIO_CRACHA']
	Element Should Contain             ${LABEL1}   É obrigatório informar o colaborador que está autorizando o desbloqueio do crachá?
    Element Should Contain             ${LABEL2}   OBRIGATORIO_AUTORIZADOR_DESBLOQUEIO_CRACHA
 	Element Attribute Value Should Be  ${CAMPO}    name   param_OBRIGATORIO_AUTORIZADOR_DESBLOQUEIO_CRACHA
    ELSE
    Element Should Contain  xpath=//select[@id="OBRIGATORIO_AUTORIZADOR_DESBLOQUEIO_CRACHA"]/option[1]  Não
    END

Verificar o valor do campo Tempo de Validade da Senha
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Tempo de Validade da Senha')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'PARAMTEMPOVALIDADESENHACODIN')]
	  ${CAMPO}      Set Variable  xpath=//input[@name='param_PARAMTEMPOVALIDADESENHACODIN']
	Element Should Contain             ${LABEL1}   Tempo de Validade da Senha
    Element Should Contain             ${LABEL2}   PARAMTEMPOVALIDADESENHACODIN
 	Element Attribute Value Should Be  ${CAMPO}    name   param_PARAMTEMPOVALIDADESENHACODIN
    ELSE
    Element Attribute Value Should Be  xpath=//input[@id="PARAMTEMPOVALIDADESENHACODIN"]  value  0
    END

Verificar o valor do campo Permitir Cargo Auto-Incremento
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Permitir Cargo Auto-Incremento')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'TIPOCODIGOCARGO')]
	  ${CAMPO}      Set Variable  xpath=//select[@name='param_TIPOCODIGOCARGO']
	Element Should Contain             ${LABEL1}   Permitir Cargo Auto-Incremento
    Element Should Contain             ${LABEL2}   TIPOCODIGOCARGO
 	Element Attribute Value Should Be  ${CAMPO}    name   param_TIPOCODIGOCARGO
    ELSE
    Element Should Contain  xpath=//select[@id="TIPOCODIGOCARGO"]/option[1]  Não
    END

Verificar o valor do campo Remover Acentuação
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Remover Acentuação')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'TRATARCARACTERESESPECIAIS')]
	  ${CAMPO}      Set Variable  xpath=//select[@name='param_TRATARCARACTERESESPECIAIS']
	Element Should Contain             ${LABEL1}   Remover Acentuação
    Element Should Contain             ${LABEL2}   TRATARCARACTERESESPECIAIS
 	Element Attribute Value Should Be  ${CAMPO}    name   param_TRATARCARACTERESESPECIAIS
    ELSE
    Element Should Contain  xpath=//select[@id="TRATARCARACTERESESPECIAIS"]/option[1]  Não
    END

Verificar o valor do campo Motivo Bloqueio de Documentos
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Motivo Bloqueio de Documentos')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'MOTIVO_BLOQUEIO_DOCUMENTO')]
	  ${CAMPO}      Set Variable  xpath=//select[@name='param_MOTIVO_BLOQUEIO_DOCUMENTO']
	Element Should Contain             ${LABEL1}   Motivo Bloqueio de Documentos 
    Element Should Contain             ${LABEL2}   MOTIVO_BLOQUEIO_DOCUMENTO
 	Element Attribute Value Should Be  ${CAMPO}    name   param_MOTIVO_BLOQUEIO_DOCUMENTO
    ELSE
    Element Should Contain  xpath=//select[@id="MOTIVO_BLOQUEIO_DOCUMENTO"]/option[1]  BAIXA DE CRACHÁS - N/A
    END

Verificar o valor do campo Valida Dupla Verificação de Veículos
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Valida Dupla Verificação de Veículos')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'CONTROLADUPLAENTRADAVEICULO')]
	  ${CAMPO}      Set Variable  xpath=//select[@name='param_CONTROLADUPLAENTRADAVEICULO']
	Element Should Contain             ${LABEL1}   Valida Dupla Verificação de Veículos
    Element Should Contain             ${LABEL2}   CONTROLADUPLAENTRADAVEICULO
 	Element Attribute Value Should Be  ${CAMPO}    name   param_CONTROLADUPLAENTRADAVEICULO
    ELSE
    Element Should Contain  xpath=//select[@id="CONTROLADUPLAENTRADAVEICULO"]/option[1]  Não
    END

Verificar o valor do campo Manter log de (dias)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Manter log de (dias)')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'MANUTENCAO_LOG')]
	  ${CAMPO}      Set Variable  xpath=//input[@name='param_MANUTENCAO_LOG']
	Element Should Contain             ${LABEL1}   Manter log de (dias) 
    Element Should Contain             ${LABEL2}   MANUTENCAO_LOG
 	Element Attribute Value Should Be  ${CAMPO}    name   param_MANUTENCAO_LOG
    ELSE
    Element Attribute Value Should Be  xpath=//input[@id="MANUTENCAO_LOG"]  value  MANUTENCAO_LOG
    END

Verificar o valor do campo Tipo de Geração de Listas
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Tipo de Geração de Listas')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'GERACAOLISTADOSISTEMA')]
	  ${CAMPO}      Set Variable  xpath=//select[@name='param_GERACAOLISTADOSISTEMA']
	Element Should Contain             ${LABEL1}   Tipo de Geração de Listas
    Element Should Contain             ${LABEL2}   GERACAOLISTADOSISTEMA
 	Element Attribute Value Should Be  ${CAMPO}    name   param_GERACAOLISTADOSISTEMA
    ELSE
    Element Should Contain  xpath=//select[@id="GERACAOLISTADOSISTEMA"]/option[1]  Arquivo
    END

Verificar o valor do campo 6 Credenciais
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'6 Credenciais')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'6CREDENCIAIS')]
	  ${CAMPO}      Set Variable  xpath=//select[@name='param_6CREDENCIAIS']
	Element Should Contain             ${LABEL1}   6 Credenciais
    Element Should Contain             ${LABEL2}   6CREDENCIAIS
 	Element Attribute Value Should Be  ${CAMPO}    name   param_6CREDENCIAIS
    ELSE
    Element Should Contain  xpath=//select[@id="6CREDENCIAIS"]/option[1]  Não
    END

Verificar o valor do campo Obrigatório Autorizador de Desbloqueio
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Obrigatório Autorizador de Desbloqueio')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'AUTODESBCRAC')]
	  ${CAMPO}      Set Variable  xpath=//select[@name='param_AUTODESBCRAC']
	Element Should Contain             ${LABEL1}   Obrigatório Autorizador de Desbloqueio
    Element Should Contain             ${LABEL2}   AUTODESBCRAC
 	Element Attribute Value Should Be  ${CAMPO}    name   param_AUTODESBCRAC
    ELSE
    Element Should Contain  xpath=//select[@id="AUTODESBCRAC"]/option[1]  Não
    END

Verificar o valor do campo Qtde. Dias de Falta para Bloquear Acesso
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Qtde. Dias de Falta para Bloquear Acesso')]
      ${LABEL2}     Set Variable  xpath=//span[contains(text(),'BLOQDIAS')]
	  ${CAMPO}      Set Variable  xpath=//input[@name='param_BLOQDIAS']
	Element Should Contain             ${LABEL1}   Qtde. Dias de Falta para Bloquear Acesso 
    Element Should Contain             ${LABEL2}   BLOQDIAS
 	Element Attribute Value Should Be  ${CAMPO}    name   param_BLOQDIAS
    ELSE
    Element Attribute Value Should Be  xpath=//input[@id="BLOQDIAS"]  value  0
    END

Verificar a label: Suricato Client
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Suricato Client')]
	Element Should Contain  ${LABEL}   Suricato Client
    

Verificar as opções marcadas no campo Biometria
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Biometria : ')]
      ${LABEL2}      Set Variable  xpath=(//span[contains(text(),'SURICATO_CLIENT')])[1]
	  ${CAMPO1}      Set Variable  xpath=//input[@name='SURICATO_CLIENT_biometria_0 ']
      ${CAMPO2}      Set Variable  xpath=//input[@name='SURICATO_CLIENT_biometria_1 ']
      ${CAMPO3}      Set Variable  xpath=//input[@name='SURICATO_CLIENT_biometria_2 ']
	Element Should Contain             ${LABEL1}   Biometria : 
    Element Should Contain             ${LABEL2}   SURICATO_CLIENT
 	Element Attribute Value Should Be  ${CAMPO1}    value   OP
    Element Attribute Value Should Be  ${CAMPO2}    value   OP1_OP4
    Element Attribute Value Should Be  ${CAMPO3}    value   VENA
    ELSE
    Element Should Be Enabled  xpath=//input[@value="OP"]
    Element Should Be Enabled  xpath=//input[@value="OP1_OP4"]
    Element Should Be Enabled  xpath=//input[@value="VENA"]
    END

Verificar as opções marcadas no campo Smartcard
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}     Set Variable  xpath=//label[contains(text(),'Smartcard : ')]
      ${LABEL2}     Set Variable  xpath=(//span[contains(text(),'SURICATO_CLIENT')])[2]
	  ${CAMPO1}      Set Variable  xpath=//input[@name='SURICATO_CLIENT_smartcard_0 ']
      ${CAMPO2}      Set Variable  xpath=//input[@name='SURICATO_CLIENT_smartcard_1 ']
	  Element Should Contain             ${LABEL1}   Smartcard :  
      Element Should Contain             ${LABEL2}   SURICATO_CLIENT
 	  Element Attribute Value Should Be  ${CAMPO1}    value    GRAVAR 
      Element Attribute Value Should Be  ${CAMPO2}    value    LER 
    ELSE
      Element Should Be Enabled  xpath=//input[@value="GRAVAR"]
      lement Should Be Enabled  xpath=//input[@value="LER"]
    END

Verificar as opções marcadas no campo Foto
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Foto : ')]
      ${LABEL2}      Set Variable  xpath=(//span[contains(text(),'SURICATO_CLIENT')])[3]
	  ${CAMPO1}      Set Variable  xpath=//input[@name='SURICATO_CLIENT_foto_0 ']
      ${CAMPO2}      Set Variable  xpath=//input[@name='SURICATO_CLIENT_foto_1 ']
      ${CAMPO3}      Set Variable  xpath=//input[@name='SURICATO_CLIENT_foto_2 ']
      ${CAMPO4}      Set Variable  xpath=//input[@name='SURICATO_CLIENT_foto_3 ']

	  Element Should Contain             ${LABEL1}   Foto : 
      Element Should Contain             ${LABEL2}   SURICATO_CLIENT
 	  Element Attribute Value Should Be  ${CAMPO1}    value   3EM1
      Element Attribute Value Should Be  ${CAMPO2}    value   FACE
      Element Attribute Value Should Be  ${CAMPO3}    value   FRENTE
      Element Attribute Value Should Be   ${CAMPO4}    value   VERSO
    ELSE
      Element Should Be Enabled  xpath=//input[@value="3EM1"]
      Element Should Be Enabled  xpath=//input[@value="FACE"][1]
      Element Should Be Enabled  xpath=//input[@value="FACE"][1]
      Element Should Be Enabled  xpath=//input[@value="FACE"][1]
    END

Verificar as opções marcadas no campo Upload
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Upload : ')]
      ${LABEL2}      Set Variable  xpath=(//span[contains(text(),'SURICATO_CLIENT')])[4]
	  ${CAMPO1}      Set Variable  xpath=//input[@name='SURICATO_CLIENT_upload_0 ']
      ${CAMPO2}      Set Variable  xpath=//input[@name='SURICATO_CLIENT_upload_1 ']
      ${CAMPO3}      Set Variable  xpath=//input[@name='SURICATO_CLIENT_upload_2 ']
	  Element Should Contain             ${LABEL1}    Upload : 
      Element Should Contain             ${LABEL2}    SURICATO_CLIENT
 	  Element Attribute Value Should Be  ${CAMPO1}    value   FACE
      Element Attribute Value Should Be  ${CAMPO2}    value   FRENTE
      Element Attribute Value Should Be  ${CAMPO3}    value   VERSO
    ELSE
      Element Should Be Enabled  xpath=//input[@value="FACE"][2]
      Element Should Be Enabled  xpath=//input[@value="FACE"][2]
      Element Should Be Enabled  xpath=//input[@value="VERSO"][2]
    END  

Verificar as opções marcadas no campo Scanner
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Scanner : ')]
      ${LABEL2}      Set Variable  xpath=(//span[contains(text(),'SURICATO_CLIENT')])[5]
	  ${CAMPO1}      Set Variable  xpath=//input[@name='SURICATO_CLIENT_scanner_0 ']
      ${CAMPO2}      Set Variable  xpath=//input[@name='SURICATO_CLIENT_scanner_1 ']
      Element Should Contain             ${LABEL1}    Scanner :  
      Element Should Contain             ${LABEL2}    SURICATO_CLIENT
 	  Element Attribute Value Should Be  ${CAMPO1}    value   FRENTE_S
      Element Attribute Value Should Be  ${CAMPO2}    value   VERSO_S  
    ELSE
      Element Should Be Enabled  xpath=//input[@value="FRENTE_S"]
      Element Should Be Enabled  xpath=//input[@value="VERSO_S"]
    END

Verificar o valor do campo Pad
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Pad : ')]
      ${LABEL2}      Set Variable  xpath=(//span[contains(text(),'SURICATO_CLIENT')])[6]
	  ${CAMPO1}      Set Variable  xpath=//select[@name='SURICATO_CLIENT_pad']
      Element Should Contain             ${LABEL1}    Pad : 
      Element Should Contain             ${LABEL2}    SURICATO_CLIENT
 	  Element Attribute Value Should Be  ${CAMPO1}    name   SURICATO_CLIENT_pad  
    ELSE
      Element Should Contain  xpath=//select[@name="SURICATO_CLIENT_pad"]/option[1]  Nao
    END

Verificar o valor do campo Porta
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Porta : ')]
      ${LABEL2}      Set Variable  xpath=(//span[contains(text(),'SURICATO_CLIENT')])[7]
	  ${CAMPO1}      Set Variable  xpath=//input[@name='SURICATO_CLIENT_porta']
      Element Should Contain             ${LABEL1}    Porta : 
      Element Should Contain             ${LABEL2}    SURICATO_CLIENT
 	  Element Attribute Value Should Be  ${CAMPO1}    value   9000
    ELSE
      Element Attribute Value Should Be  xpath=//input[@name="SURICATO_CLIENT_porta"]  value  9000
    END

Verificar o valor do campo SmartcardLF
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'SmartcardLF : ')]
      ${LABEL2}      Set Variable  xpath=(//span[contains(text(),'SURICATO_CLIENT')])[8]
	  ${CAMPO1}      Set Variable  xpath=//select[@name='SURICATO_CLIENT_smartcardLF']
      Element Should Contain             ${LABEL1}    SmartcardLF : 
      Element Should Contain             ${LABEL2}    SURICATO_CLIENT
 	  Element Attribute Value Should Be  ${CAMPO1}    name   SURICATO_CLIENT_smartcardLF  
    ELSE
      Element Should Contain  xpath=//select[@name="SURICATO_CLIENT_smartcardLF"]/option[1]  Lógico
    END


Verificar o valor do campo Facial
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Facial : ')]
      ${LABEL2}      Set Variable  xpath=(//span[contains(text(),'SURICATO_CLIENT')])[9]
	  ${CAMPO1}      Set Variable  xpath=//input[@name='SURICATO_CLIENT_facial_0 ']
      Element Should Contain             ${LABEL1}    Facial : 
      Element Should Contain             ${LABEL2}    SURICATO_CLIENT
 	  Element Attribute Value Should Be  ${CAMPO1}    value   FACE
    ELSE
      Element Should Be Enabled  xpath=//input[@value="FACE"][@name="SURICATO_CLIENT_facial_0 "]
    END

Verificar a label: Campo Customizado
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Campo Customizado')]
	Element Should Contain  ${LABEL}   Campo Customizado


Verificar o valor do campo Utilizar Campos Customizados
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Utilizar Campos Customizados')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'PARAMUTILIZACAMPOSCUSTOMIZADOS')]
	  ${CAMPO1}      Set Variable  xpath=//select[@name='param_PARAMUTILIZACAMPOSCUSTOMIZADOS']
      Element Should Contain             ${LABEL1}    Utilizar Campos Customizados
      Element Should Contain             ${LABEL2}    PARAMUTILIZACAMPOSCUSTOMIZADOS
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_PARAMUTILIZACAMPOSCUSTOMIZADOS
    ELSE
      ${VAR}  Set Variable  
      Element Attribute Value Should Be  xpath=//select[@id="PARAMUTILIZACAMPOSCUSTOMIZADOS"]  value  ${VAR}
    END

Verificar o valor do campo Cor para Destaque
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Cor para Destaque')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'CUSTOMFIELDS_CORDESTAQUE')]
	  ${CAMPO1}      Set Variable  xpath=//input[@name='param_CUSTOMFIELDS_CORDESTAQUE']
      Element Should Contain             ${LABEL1}    Cor para Destaque
      Element Should Contain             ${LABEL2}    CUSTOMFIELDS_CORDESTAQUE
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_CUSTOMFIELDS_CORDESTAQUE
    ELSE
      Element Attribute Value Should Be  xpath=//input[@name="param_CUSTOMFIELDS_CORDESTAQUE"]  value  \#000000
    END  

Verificar a label: Histórico de Colaborador
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Cor para Destaque')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'CUSTOMFIELDS_CORDESTAQUE')]
	  ${CAMPO1}      Set Variable  xpath=//input[@name='param_CUSTOMFIELDS_CORDESTAQUE']
      Element Should Contain             ${LABEL1}    Cor para Destaque
      Element Should Contain             ${LABEL2}    CUSTOMFIELDS_CORDESTAQUE
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_CUSTOMFIELDS_CORDESTAQUE
    ELSE
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Histórico de Colaborador')]
	  Element Should Contain  ${LABEL}     Histórico de Colaborador
    END  

Verificar o valor do campo Histórico de Cargos
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Histórico de Cargos')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'HABILITA_HISTORICO_CARGO')]
	  ${CAMPO1}      Set Variable  xpath=//select[@name='param_HABILITA_HISTORICO_CARGO']
      Element Should Contain             ${LABEL1}    Histórico de Cargos
      Element Should Contain             ${LABEL2}    HABILITA_HISTORICO_CARGO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_HABILITA_HISTORICO_CARGO
    ELSE
      Element Should Contain  xpath=//select[@id="HABILITA_HISTORICO_CARGO"]/option[1]  Não
    END  

Verificar o valor do campo Histórico de Centro de Custos
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Histórico de Centro de Custos')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'HABILITA_HISTORICO_CENTRO_CUSTO')]
	  ${CAMPO1}      Set Variable  xpath=//select[@name='param_HABILITA_HISTORICO_CENTRO_CUSTO']
      Element Should Contain             ${LABEL1}    Histórico de Centro de Custos
      Element Should Contain             ${LABEL2}    HABILITA_HISTORICO_CENTRO_CUSTO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_HABILITA_HISTORICO_CENTRO_CUSTO
    ELSE
      Element Should Contain  xpath=//select[@id="HABILITA_HISTORICO_CENTRO_CUSTO"]/option[1]  Não
    END  

Verificar o valor do campo Histórico de Crachás
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Histórico de Crachás')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'HABILITA_HISTORICO_CRACHA')]
	  ${CAMPO1}      Set Variable  xpath=//select[@name='param_HABILITA_HISTORICO_CRACHA']
      Element Should Contain             ${LABEL1}    Histórico de Crachás
      Element Should Contain             ${LABEL2}    HABILITA_HISTORICO_CRACHA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_HABILITA_HISTORICO_CRACHA
    ELSE
      Element Should Contain  xpath=//select[@id="HABILITA_HISTORICO_CRACHA"]/option[1]  Não
    END  

Verificar o valor do campo Histórico de Escalas
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Histórico de Escalas')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'HABILITA_HISTORICO_ESCALA')]
	  ${CAMPO1}      Set Variable  xpath=//select[@name='param_HABILITA_HISTORICO_ESCALA']
      Element Should Contain             ${LABEL1}    Histórico de Escalas
      Element Should Contain             ${LABEL2}    HABILITA_HISTORICO_ESCALA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_HABILITA_HISTORICO_ESCALA
    ELSE
      Element Should Contain  xpath=//select[@id="HABILITA_HISTORICO_ESCALA"]/option[1]  Não
    END  

Verificar o valor do campo Histórico de Filial
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Histórico de Filial')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'HABILITA_HISTORICO_FILIAL')]
	  ${CAMPO1}      Set Variable  xpath=//select[@name='param_HABILITA_HISTORICO_FILIAL']
      Element Should Contain             ${LABEL1}    Histórico de Filial
      Element Should Contain             ${LABEL2}    HABILITA_HISTORICO_FILIAL
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_HABILITA_HISTORICO_FILIAL
    ELSE
      Element Should Contain  xpath=//select[@id="HABILITA_HISTORICO_FILIAL"]/option[1]  Não
    END  

Verificar o valor do campo Histórico de Organograma
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Histórico de Organograma')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'HABILITA_HISTORICO_LOCAL_ORGANOGRAMA')]
	  ${CAMPO1}      Set Variable  xpath=//select[@name='param_HABILITA_HISTORICO_LOCAL_ORGANOGRAMA']
      Element Should Contain             ${LABEL1}    Histórico de Organograma
      Element Should Contain             ${LABEL2}    HABILITA_HISTORICO_LOCAL_ORGANOGRAMA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_HABILITA_HISTORICO_LOCAL_ORGANOGRAMA
    ELSE
      Element Should Contain  xpath=//select[@id="HABILITA_HISTORICO_LOCAL_ORGANOGRAMA"]/option[1]  Não
    END  

Então devo verificär a label: Notificação
  	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Notificação')]
	Element Should Contain  ${LABEL}   Notificação

Verificar o valor do campo E-mail Envio de Notificação de Val. do ASO
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'E-mail Envio de Notificação de Val. do ASO ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'EMAIL_VALIDADE_ASO')]
	  ${CAMPO1}      Set Variable  xpath=//input[@name='param_EMAIL_VALIDADE_ASO']
      Element Should Contain             ${LABEL1}    E-mail Envio de Notificação de Val. do ASO 
      Element Should Contain             ${LABEL2}    EMAIL_VALIDADE_ASO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_EMAIL_VALIDADE_ASO
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="EMAIL_VALIDADE_ASO"]  value  S
    END  

Verificar o valor do campo Qtde Dias Para Notificação ASO
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Qtde Dias Para Notificação ASO ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'NOTIFICARVENCIMENTOASO')]
	  ${CAMPO1}      Set Variable  xpath=//input[@name='param_NOTIFICARVENCIMENTOASO']
      Element Should Contain             ${LABEL1}    Qtde Dias Para Notificação ASO 
      Element Should Contain             ${LABEL2}    NOTIFICARVENCIMENTOASO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_NOTIFICARVENCIMENTOASO
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="NOTIFICARVENCIMENTOASO"]  value  15
    END  

Verificar o valor do campo E-mail Envio de Notificação de Val. do Treinamento de Segurança
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'E-mail Envio de Notificação de Val. do Treinamento de Segurança ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'EMAIL_VALIDADE_TREINAMENTO_SEGURANCA')]
	  ${CAMPO1}      Set Variable  xpath=//input[@name='param_EMAIL_VALIDADE_TREINAMENTO_SEGURANCA']
      Element Should Contain             ${LABEL1}    E-mail Envio de Notificação de Val. do Treinamento de Segurança 
      Element Should Contain             ${LABEL2}    EMAIL_VALIDADE_TREINAMENTO_SEGURANCA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_EMAIL_VALIDADE_TREINAMENTO_SEGURANCA
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="EMAIL_VALIDADE_TREINAMENTO_SEGURANCA"]  value  N
    END  

Verificar o valor do campo Qtde Dias Para Notificação de Venc. Treinamento
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Qtde Dias Para Notificação de Venc. Treinamento ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'NOTIFICARVENCTREINAMENTOSEGURANCA')]
	  ${CAMPO1}      Set Variable  xpath=//input[@name='param_NOTIFICARVENCTREINAMENTOSEGURANCA']
      Element Should Contain             ${LABEL1}    Qtde Dias Para Notificação de Venc. Treinamento 
      Element Should Contain             ${LABEL2}    NOTIFICARVENCTREINAMENTOSEGURANCA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_NOTIFICARVENCTREINAMENTOSEGURANCA
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="NOTIFICARVENCTREINAMENTOSEGURANCA"]  value  15
    END  

Verificar o valor do campo Atualiza Dados Tb. Acesso Colaborador
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Qtde Dias Para Notificação de Venc. Treinamento ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'NOTIFICARVENCTREINAMENTOSEGURANCA')]
	  ${CAMPO1}      Set Variable  xpath=//input[@name='param_NOTIFICARVENCTREINAMENTOSEGURANCA']
      Element Should Contain             ${LABEL1}    Qtde Dias Para Notificação de Venc. Treinamento 
      Element Should Contain             ${LABEL2}    NOTIFICARVENCTREINAMENTOSEGURANCA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_NOTIFICARVENCTREINAMENTOSEGURANCA
    ELSE
      Element Should Contain  xpath=//select[@id="HABILITA_HISTORICO_LOCAL_ORGANOGRAMA"]/option[1]  Não
    END  

#Processo Automático
Verificar a label: Processo Automático
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Processo Automático')]
	Element Should Contain  ${LABEL}       Processo Automático

Verificar o campo: Atualiza Dados Tb. Acesso Colaborador
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Atualiza Dados Tb. Acesso Colaborador')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'ATUALIZADADOSTBCOLAB')]
	  ${CAMPO1}      Set Variable  xpath=//select[@name='param_ATUALIZADADOSTBCOLAB']
      Element Should Contain             ${LABEL1}    Atualiza Dados Tb. Acesso Colaborador
      Element Should Contain             ${LABEL2}    ATUALIZADADOSTBCOLAB
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_ATUALIZADADOSTBCOLAB    

#Aba Autenticação
Verificar a label: Método de Autenticação
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Método de Autenticação')]
	Element Should Contain  ${LABEL}   Método de Autenticação

Verificar o valor do campo Método de Autenticação
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Método de Autenticação')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'AUTENTICACAO_METODO')]
	  ${CAMPO1}      Set Variable  xpath=//select[@name='param_AUTENTICACAO_METODO']
      Element Should Contain             ${LABEL1}    Método de Autenticação
      Element Should Contain             ${LABEL2}    AUTENTICACAO_METODO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_AUTENTICACAO_METODO
    ELSE
      Element Should Contain  xpath=//select[@id="AUTENTICACAO_METODO"]/option[1]  LDAP
    END  

#Label: LDPA
Verificar a label: LDAP
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'LDAP')]
	Element Should Contain  ${LABEL}       LDAP  

Verificar o valor do campo Endereço IP do Servidor LDPA
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Endereço IP do Servidor LDAP')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'LOGON_LDAP_IP')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_LOGON_LDAP_IP']
      Element Should Contain             ${LABEL1}    Endereço IP do Servidor LDAP 
      Element Should Contain             ${LABEL2}    LOGON_LDAP_IP
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_LOGON_LDAP_IP
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="LOGON_LDAP_IP"]  value  N
    END  

Verificar o valor do campo Porta do Servidor LDPA
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Porta do Servidor LDAP ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'LOGON_LDAP_PORTA')]
	  ${CAMPO1}      Set Variable  xpath=//input[@name='param_LOGON_LDAP_PORTA']
      Element Should Contain             ${LABEL1}    Porta do Servidor LDAP 
      Element Should Contain             ${LABEL2}    LOGON_LDAP_PORTA
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_LOGON_LDAP_PORTA
    ELSE
    ${VAR}  Set Variable  
      Element Attribute Value Should Be  xpath=//input[@id="LOGON_LDAP_PORTA"]  value  ${VAR}
    END  

Verificar o valor do campo Login Administrador
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Password Administrator ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'LOGON_LDAP_PASSWORD')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_cripto_LOGON_LDAP_PASSWORD']
      Element Should Contain             ${LABEL1}    Password Administrator 
      Element Should Contain             ${LABEL2}    LOGON_LDAP_PASSWORD
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_cripto_LOGON_LDAP_PASSWORD
    ELSE
    ${VAR}  Set Variable  
      Element Attribute Value Should Be  xpath=//input[@id="LOGON_LDAP_USERNAME"]  value  ${VAR}
    END  

Verificar o valor do campo Password Administrador
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Password Administrator ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'LOGON_LDAP_PASSWORD')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_cripto_LOGON_LDAP_PASSWORD']
      Element Should Contain             ${LABEL1}    Password Administrator 
      Element Should Contain             ${LABEL2}    LOGON_LDAP_PASSWORD
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_cripto_LOGON_LDAP_PASSWORD
    ELSE
      ${VAR}  Set Variable  
      Element Attribute Value Should Be  xpath=//input[@id="LOGON_LDAP_USERNAME"]  value  ${VAR}
      ${VAR}  Set Variable  
      Element Attribute Value Should Be  xpath=//input[@id="LOGON_LDAP_PASSWORD"]  value  ${VAR}
    END

Verificar o valor do campo LDPA Base de Pesquisa DN
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'LDAP Base de Pesquisa DN ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'LOGON_LDAP_SEARCH_BASEDN')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_LOGON_LDAP_SEARCH_BASEDN']
      Element Should Contain             ${LABEL1}    LDAP Base de Pesquisa DN 
      Element Should Contain             ${LABEL2}    LOGON_LDAP_SEARCH_BASEDN
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_LOGON_LDAP_SEARCH_BASEDN
    ELSE
      ${VAR}  Set Variable   
      Element Attribute Value Should Be  xpath=//input[@id="LOGON_LDAP_PASSWORD"]  value  ${VAR}
    END  

Verificar o valor do campo LDPA Filtro de Pesquisa
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'LDAP Filtro de Pesquisa ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'LOGON_LDAP_SEARCH_FILTER')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_LOGON_LDAP_SEARCH_FILTER']
      Element Should Contain             ${LABEL1}    LDAP Filtro de Pesquisa 
      Element Should Contain             ${LABEL2}    LOGON_LDAP_SEARCH_FILTER
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_LOGON_LDAP_SEARCH_FILTER
    ELSE
      ${VAR}  Set Variable   
      Element Attribute Value Should Be  xpath=//input[@id="LOGON_LDAP_PASSWORD"]  value  ${VAR}
    END  

Verificar o valor do campo LDPA Sincronizar MemberOf
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'LDAP Sincronizar MemberOf')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'LOGON_LDAP_SYNC_MEMBEROF')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_LOGON_LDAP_SYNC_MEMBEROF']
      Element Should Contain             ${LABEL1}    LDAP Sincronizar MemberOf
      Element Should Contain             ${LABEL2}    LOGON_LDAP_SYNC_MEMBEROF
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_LOGON_LDAP_SYNC_MEMBEROF
    ELSE
      Element Should Contain  xpath=//select[@id="LOGON_LDAP_SYNC_MEMBEROF"]/option[1]  Não
    END  

#Aba: Diretiva de Segurança     
#Label: Configuração
Verificar a label: Configuração (Segurança)
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Configuração')]
	Element Should Contain  ${LABEL}  Configuração

Verificar o valor do campo Avisar Validade da Senha antes (Dias)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Avisar Validade da Senha antes (Dias) ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'AVISO_VALIDADE_SENHA')]
	  ${CAMPO1}      Set Variable  xpath=//input[@name='param_AVISO_VALIDADE_SENHA']
      Element Should Contain             ${LABEL1}    Avisar Validade da Senha antes (Dias) 
      Element Should Contain             ${LABEL2}    AVISO_VALIDADE_SENHA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_AVISO_VALIDADE_SENHA
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="AVISO_VALIDADE_SENHA"]  value  1
    END  

Verificar o valor do campo Desbloquear Login Em (Minutos)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Desbloquear Login Em (Minutos) ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'DESBLOQUEIO_CONTA')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_DESBLOQUEIO_CONTA']
      Element Should Contain             ${LABEL1}    Desbloquear Login Em (Minutos) 
      Element Should Contain             ${LABEL2}    DESBLOQUEIO_CONTA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_DESBLOQUEIO_CONTA
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="DESBLOQUEIO_CONTA"]  value  3
    END  

Verificar o valor do campo Mínimo de Senhas no Histórico
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Mínimo de Senhas no Histórico ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'HISTORICO_MINIMO_SENHA')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_HISTORICO_MINIMO_SENHA']
      Element Should Contain             ${LABEL1}    Mínimo de Senhas no Histórico 
      Element Should Contain             ${LABEL2}    HISTORICO_MINIMO_SENHA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_HISTORICO_MINIMO_SENHA
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="HISTORICO_MINIMO_SENHA"]  value  0
    END  

Verificar o valor do campo Permitir Reutilizar Senha Anterior
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Permitir Reutilizar Senha Anterior')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'REUTILIZA_SENHA')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_REUTILIZA_SENHA']
      Element Should Contain             ${LABEL1}    Permitir Reutilizar Senha Anterior
      Element Should Contain             ${LABEL2}    REUTILIZA_SENHA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_REUTILIZA_SENHA
    ELSE
      Element Should Contain  xpath=//select[@id="REUTILIZA_SENHA"]/option[1]  Não
    END  

Verificar o valor do campo Bloquear Login Após (Tentativas)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Bloquear Login Após (Tentativas) ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TENTATIVAS_LOGIN')]
	   ${CAMPO1}      Set Variable  xpath=//input[@name='param_TENTATIVAS_LOGIN']
      Element Should Contain             ${LABEL1}    Bloquear Login Após (Tentativas) 
      Element Should Contain             ${LABEL2}    TENTATIVAS_LOGIN
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TENTATIVAS_LOGIN
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="TENTATIVAS_LOGIN"]  value  3
    END  

Verificar o valor do campo Validade Mínima da Senha (Dias)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Validade Mínima da Senha (Dias) ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'VALIDADE_MINIMA_SENHA')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_VALIDADE_MINIMA_SENHA']
      Element Should Contain             ${LABEL1}    Validade Mínima da Senha (Dias) 
      Element Should Contain             ${LABEL2}    VALIDADE_MINIMA_SENHA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_VALIDADE_MINIMA_SENHA
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="VALIDADE_MINIMA_SENHA"]  value  0
    END  

Verificar o valor do campo Validade da Senha (Dias)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Validade da Senha (Dias) ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'VALIDADE_SENHA')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_VALIDADE_SENHA']
      Element Should Contain             ${LABEL1}    Validade da Senha (Dias) 
      Element Should Contain             ${LABEL2}    VALIDADE_SENHA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_VALIDADE_SENHA
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="VALIDADE_SENHA"]  value  365
    END  

#Label: Complexidade
Verificar a label: Complexidade
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Complexidade')]
	Element Should Contain  ${LABEL}   Complexidade  

Verificar o valor do campo Símbolos
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Símbolos ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'CARACTER_SENHA')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_CARACTER_SENHA']
      Element Should Contain             ${LABEL1}    Símbolos 
      Element Should Contain             ${LABEL2}    CARACTER_SENHA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_CARACTER_SENHA
    ELSE
      ${VAR}  Set Variable   
      Element Attribute Value Should Be  xpath=//input[@id="CARACTER_SENHA"]  value  ${VAR}
    END  

Verificar o valor do campo Máximo de caracteres idênticos (Caracteres)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Máximo de caracteres idênticos (Caracteres) ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'MAXIMO_CARACTERES_IDENTICOS')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_MAXIMO_CARACTERES_IDENTICOS']
      Element Should Contain             ${LABEL1}    Máximo de caracteres idênticos (Caracteres) 
      Element Should Contain             ${LABEL2}    MAXIMO_CARACTERES_IDENTICOS
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_MAXIMO_CARACTERES_IDENTICOS
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="MAXIMO_CARACTERES_IDENTICOS"]  value  0
    END  

Verificar o valor do campo Mínimo de caracteres não alfabéticos (Caracteres)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Mínimo de caracteres não alfabéticos (Caracteres) ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'MINIMO_CARACTERES_NAO_ALFA')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_MINIMO_CARACTERES_NAO_ALFA']
      Element Should Contain             ${LABEL1}    Mínimo de caracteres não alfabéticos (Caracteres) 
      Element Should Contain             ${LABEL2}    MINIMO_CARACTERES_NAO_ALFA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_MINIMO_CARACTERES_NAO_ALFA
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="MINIMO_CARACTERES_NAO_ALFA"]  value  0
    END  

Verificar o valor do campo Mínimo de caracteres não presentes na última senha (Caracteres)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Mínimo de caracteres não presentes na última senha (Caracteres) ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'MINIMO_CARACTERES_NAO_ULT_SENHA')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_MINIMO_CARACTERES_NAO_ULT_SENHA']
      Element Should Contain             ${LABEL1}    Mínimo de caracteres não presentes na última senha (Caracteres) 
      Element Should Contain             ${LABEL2}    MINIMO_CARACTERES_NAO_ULT_SENHA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_MINIMO_CARACTERES_NAO_ULT_SENHA
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="MINIMO_CARACTERES_NAO_ULT_SENHA"]  value  0
    END  

Verificar o valor do campo Letras em caixa alta (maiúsculo)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Letras em caixa alta (maiúsculo)')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'PERMITE_LETRAS')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_PERMITE_LETRAS']
      Element Should Contain             ${LABEL1}    Letras em caixa alta (maiúsculo)
      Element Should Contain             ${LABEL2}    PERMITE_LETRAS
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_PERMITE_LETRAS
    ELSE
      Element Should Contain  xpath=//select[@id="PERMITE_LETRAS"]/option[1]  Não
    END  

Verificar o valor do campo Letras em caixa baixa (minúsculo)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Letras em caixa baixa (minúsculo)')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'PERMITE_LETRAS_CAIXABAIXA')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_PERMITE_LETRAS_CAIXABAIXA']
      Element Should Contain             ${LABEL1}    Letras em caixa baixa (minúsculo)
      Element Should Contain             ${LABEL2}    PERMITE_LETRAS_CAIXABAIXA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_PERMITE_LETRAS_CAIXABAIXA
    ELSE
      Element Should Contain  xpath=//select[@id="PERMITE_LETRAS_CAIXABAIXA"]/option[1]  Não
    END  

Verificar o valor do campo Números
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Números')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'PERMITE_NUMEROS')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_PERMITE_NUMEROS']
      Element Should Contain             ${LABEL1}    Números
      Element Should Contain             ${LABEL2}    PERMITE_NUMEROS
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_PERMITE_NUMEROS
    ELSE
      Element Should Contain  xpath=//select[@id="PERMITE_NUMEROS"]/option[1]  Não
    END  

Verificar o valor do campo Quantidade Mínima de Dígitos da Senha (Caracteres)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Quantidade Mínima de Dígitos da Senha (Caracteres) ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'QTD_CARACTER_SENHA')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_QTD_CARACTER_SENHA']
      Element Should Contain             ${LABEL1}    Quantidade Mínima de Dígitos da Senha (Caracteres) 
      Element Should Contain             ${LABEL2}    QTD_CARACTER_SENHA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_QTD_CARACTER_SENHA
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="QTD_CARACTER_SENHA"]  value  5
    END  

#Label COnfiguração
Verificar a label: Configuração (Foto)
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Configuração')]
	Element Should Contain  ${LABEL}  Configuração

Verificar o valor do campo Altura da Foto
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Altura da Foto')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'ALTURA_FOTO')]
	    ${CAMPO1}      Set Variable  xpath=//input[@id='displayALTURA_FOTO']
      Element Should Contain             ${LABEL1}    Altura da Foto 
      Element Should Contain             ${LABEL2}    ALTURA_FOTO
 	  Element Attribute Value Should Be  ${CAMPO1}    id   displayALTURA_FOTO
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="displayALTURA_FOTO"]  value  100
    END  

Verificar o valor do campo Largura da Foto
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Largura da Foto')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'LARGURA_FOTO')]
	    ${CAMPO1}      Set Variable  xpath=//input[@id='displayLARGURA_FOTO']
      Element Should Contain             ${LABEL1}    Largura da Foto 
      Element Should Contain             ${LABEL2}    LARGURA_FOTO
 	    Element Attribute Value Should Be  ${CAMPO1}    id   displayLARGURA_FOTO
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="displayLARGURA_FOTO"]  value  100
    END  

Verificar o valor do campo Altura da Foto para Importação
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Altura da Foto para Importação')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'ALTURA_FOTO_IMPORTACAO')]
	    ${CAMPO1}      Set Variable  xpath=//input[@id='displayALTURA_FOTO_IMPORTACAO']
      Element Should Contain             ${LABEL1}    Altura da Foto para Importação 
      Element Should Contain             ${LABEL2}    ALTURA_FOTO_IMPORTACAO
 	    Element Attribute Value Should Be  ${CAMPO1}    id   displayALTURA_FOTO_IMPORTACAO
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="displayALTURA_FOTO_IMPORTACAO"]  value  100
    END  

Verificar o valor do campo Largura da Foto para Importação
    IF   "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"
      #${LABEL1}      Set Variable   xpath=//label[contains(text(),'Largura da  Foto para Importação')]
      ${LABEL2}      Set Variable   xpath=//span[contains(text(),'LARGURA_FOTO_IMPORTACAO')]
	    ${CAMPO1}      Set Variable   xpath=//input[@id='displayLARGURA_FOTO_IMPORTACAO'] 
      #Element Should Contain              ${LABEL1}    Largura da  Foto  para Importação
      Element Should Contain              ${LABEL2}    LARGURA_FOTO_IMPORTACAO
 	    Element Attribute Value Should Be   ${CAMPO1}    id   displayLARGURA_FOTO_IMPORTACAO
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="displayLARGURA_FOTO_IMPORTACAO"]  value  100
    END  

#Aba: Entrada de Visitante  
#Label: Configuração  
Verificar a label: Configuração (Visitante)
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Configuração')]
	Element Should Contain  ${LABEL}   Configuração

Verificar o valor do campo Lançador é Auto Aprovador de Visitas
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Lançador é Auto Aprovador de Visitas')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'AUTORIZARWORKFLOWAPROVADOR')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_AUTORIZARWORKFLOWAPROVADOR']
      Element Should Contain             ${LABEL1}    Lançador é Auto Aprovador de Visitas
      Element Should Contain             ${LABEL2}    AUTORIZARWORKFLOWAPROVADOR
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_AUTORIZARWORKFLOWAPROVADOR
    ELSE
      Element Should Contain  xpath=//select[@id="AUTORIZARWORKFLOWAPROVADOR"]/option[1]  Não
    END  

Verificar o valor do campo Bloquear Visitado Ausente
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Bloquear Visitado Ausente')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'BLOQUEAR_VISITADO_AUSENTE')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_BLOQUEAR_VISITADO_AUSENTE']
      Element Should Contain             ${LABEL1}    Bloquear Visitado Ausente
      Element Should Contain             ${LABEL2}    BLOQUEAR_VISITADO_AUSENTE
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_BLOQUEAR_VISITADO_AUSENTE
    ELSE
      Element Should Contain  xpath=//select[@id="BLOQUEAR_VISITADO_AUSENTE"]/option[1]  Não
    END  

Verificar o valor do campo Critica se Docto do Visitante for de Empregado
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Critica se Docto do Visitante for de Empregado')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'ENTRADA_VISITANTE_DOCUMENTO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_ENTRADA_VISITANTE_DOCUMENTO']
      Element Should Contain             ${LABEL1}    Critica se Docto do Visitante for de Empregado
      Element Should Contain             ${LABEL2}    ENTRADA_VISITANTE_DOCUMENTO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_ENTRADA_VISITANTE_DOCUMENTO
    ELSE
      Element Should Contain  xpath=//select[@id="ENTRADA_VISITANTE_DOCUMENTO"]/option[1]  Não
    END  

Verificar o valor do campo Mostrar Veículo na Entrada de Visitante
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Mostrar Veículo na Entrada de Visitante')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'ENTRADA_VISITANTE_VEICULO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_ENTRADA_VISITANTE_VEICULO']
      Element Should Contain             ${LABEL1}    Mostrar Veículo na Entrada de Visitante
      Element Should Contain             ${LABEL2}    ENTRADA_VISITANTE_VEICULO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_ENTRADA_VISITANTE_VEICULO
    ELSE
      Element Should Contain  xpath=//select[@id="ENTRADA_VISITANTE_VEICULO"]/option[1]  Não
    END

Verificar o valor do campo Mostrar Visitado na Entrada de Visitante
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Mostrar Visitado na Entrada de Visitante')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'ENTRADA_VISITANTE_VISITADO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_ENTRADA_VISITANTE_VISITADO']
      Element Should Contain             ${LABEL1}    Mostrar Visitado na Entrada de Visitante
      Element Should Contain             ${LABEL2}    ENTRADA_VISITANTE_VISITADO  
      Element Attribute Value Should Be  ${CAMPO1}    name   param_ENTRADA_VISITANTE_VISITADO
    ELSE
      Element Should Contain  xpath=//select[@id="ENTRADA_VISITANTE_VISITADO"]/option[1]  Não
    END  

Verificar o valor do campo Utilizar Workflow de Aprovação de Entrada de Visitante
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Utilizar Workflow de Aprovação de Entrada de Visitante')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'ENTRADAVISITANTEWORKFLOW')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_ENTRADAVISITANTEWORKFLOW']
      Element Should Contain             ${LABEL1}    Utilizar Workflow de Aprovação de Entrada de Visitante
      Element Should Contain             ${LABEL2}    ENTRADAVISITANTEWORKFLOW
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_ENTRADAVISITANTEWORKFLOW
    ELSE
      Element Should Contain  xpath=//select[@id="ENTRADAVISITANTEWORKFLOW"]/option[1]  Não
    END  

Verificar o valor do campo Validar Homônimo
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Validar Homônimo')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'VISITANTE_PNG_HOMONIMO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_VISITANTE_PNG_HOMONIMO']
      Element Should Contain             ${LABEL1}    Validar Homônimo
      Element Should Contain             ${LABEL2}    VISITANTE_PNG_HOMONIMO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_VISITANTE_PNG_HOMONIMO
    ELSE
      Element Should Contain  xpath=//select[@id="VISITANTE_PNG_HOMONIMO"]/option[1]  Não
    END  

#Label: Automático

Verificar a label: Automático
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Automático')]
	  Element Should Contain  ${LABEL}   Automático
      
Verificar o valor do campo Faixa de Crachá
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Faixa de Crachá')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'VISITANTE_CRACHA_AUTO')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_VISITANTE_CRACHA_AUTO']
      Element Should Contain             ${LABEL1}    Faixa de Crachá 
      Element Should Contain             ${LABEL2}    VISITANTE_CRACHA_AUTO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_VISITANTE_CRACHA_AUTO
    ELSE
      ${VAR}  Set Variable   
      Element Attribute Value Should Be  xpath=//input[@id="VISITANTE_CRACHA_AUTO"]  value  ${VAR}
    END  


#Label: Valores Padrão
Verificar a label: Valores Padrão
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Valores Padrão')]
	Element Should Contain  ${LABEL}   Valores Padrão

Verificar o campo: Empresa Terceira Padrão
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Empresa Terceira Padrão')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'EMPRESA_TERCEIRA_PADRAO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_EMPRESA_TERCEIRA_PADRAO']
      Element Should Contain             ${LABEL1}    Empresa Terceira Padrão 
      Element Should Contain             ${LABEL2}    EMPRESA_TERCEIRA_PADRAO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_EMPRESA_TERCEIRA_PADRAO

Verificar o valor do campo Empresa Padrão (Colaborador)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Empresa Padrão (Colaborador)')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'ENTRADAVISITANTEEMPRESAPADRAO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_ENTRADAVISITANTEEMPRESAPADRAO']
      Element Should Contain             ${LABEL1}    Empresa Padrão (Colaborador) 
      Element Should Contain             ${LABEL2}    ENTRADAVISITANTEEMPRESAPADRAO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_ENTRADAVISITANTEEMPRESAPADRAO
    ELSE
      Element Should Contain  xpath=//select[@id="ENTRADAVISITANTEEMPRESAPADRAO"]/option[1]  ac
    END  

Verificar o valor do campo Tipo de Colaborador Padrão
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Tipo de Colaborador Padrão')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'ENTRADAVISITANTETIPOCOLABPADRAO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_ENTRADAVISITANTETIPOCOLABPADRAO']
      Element Should Contain             ${LABEL1}    Tipo de Colaborador Padrão 
      Element Should Contain             ${LABEL2}    ENTRADAVISITANTETIPOCOLABPADRAO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_ENTRADAVISITANTETIPOCOLABPADRAO
    ELSE
      Element Should Contain  xpath=//select[@id="ENTRADAVISITANTETIPOCOLABPADRAO"]/option[1]  Empregado
    END  

Verificar o valor do campo Código Permissão Padrão
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Código Permissão Padrão')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'GRUPO_ACESSO_PADRAO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_GRUPO_ACESSO_PADRAO']
      Element Should Contain             ${LABEL1}    Código Permissão Padrão 
      Element Should Contain             ${LABEL2}    GRUPO_ACESSO_PADRAO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_GRUPO_ACESSO_PADRAO
    ELSE
      Element Should Contain  xpath=//select[@id="GRUPO_ACESSO_PADRAO"]/option[1]  CATRACA PORTARIA
    END

Verificar o valor do campo Tipo de Visita Padrão
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Tipo de Visita Padrão')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TIPO_VISITA_PADRAO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_TIPO_VISITA_PADRAO']
      Element Should Contain             ${LABEL1}    Tipo de Visita Padrão 
      Element Should Contain             ${LABEL2}    TIPO_VISITA_PADRAO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_TIPO_VISITA_PADRAO
    ELSE
      Element Should Contain  xpath=//select[@id="TIPO_VISITA_PADRAO"]/option[1]  TESTE GUI
    END  

#Aba: Monitoramento
#Label: Configuração
Verificar a label: Configuração (Monitoramento)
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Configuração')]
	Element Should Contain  ${LABEL}   Configuração

Verificar o valor do campo Intervalo Processamento
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Intervalo Processamento')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'SURICATO_MONITORAMENTO_INTERVALOPROCESSAMENTO')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_SURICATO_MONITORAMENTO_INTERVALOPROCESSAMENTO']
      Element Should Contain             ${LABEL1}    Intervalo Processamento 
      Element Should Contain             ${LABEL2}    SURICATO_MONITORAMENTO_INTERVALOPROCESSAMENTO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_SURICATO_MONITORAMENTO_INTERVALOPROCESSAMENTO
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="SURICATO_MONITORAMENTO_INTERVALOPROCESSAMENTO"]  value  60000
    END

Verificar o valor do campo Timeout Monitoramento
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Timeout Monitoramento')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'SURICATO_MONITORAMENTO_TIMEOUT')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_SURICATO_MONITORAMENTO_TIMEOUT']
      Element Should Contain             ${LABEL1}    Timeout Monitoramento 
      Element Should Contain             ${LABEL2}    SURICATO_MONITORAMENTO_TIMEOUT
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_SURICATO_MONITORAMENTO_TIMEOUT
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="SURICATO_MONITORAMENTO_TIMEOUT"]  value  5000
    END

Verificar o valor do campo Tempo Máximo Entre Registros
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Tempo Máximo Entre Registros')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'SURICATO_MONITORAMENTO_TIMEOUTENTREREGISTROS')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_SURICATO_MONITORAMENTO_TIMEOUTENTREREGISTROS']
      Element Should Contain             ${LABEL1}    Tempo Máximo Entre Registros 
      Element Should Contain             ${LABEL2}    SURICATO_MONITORAMENTO_TIMEOUTENTREREGISTROS
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_SURICATO_MONITORAMENTO_TIMEOUTENTREREGISTROS
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="SURICATO_MONITORAMENTO_TIMEOUTENTREREGISTROS"]  value  60000
    END

#Aba: Equipamento
#Label: Equipamento

Verificar a label: Equipamento
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Equipamento')]
	Element Should Contain  ${LABEL}   Equipamento

Verificar o valor do campo Status On
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Status On')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'MONITORAMENTO_COR_ON')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_MONITORAMENTO_COR_ON']
      Element Should Contain             ${LABEL1}    Status On 
      Element Should Contain             ${LABEL2}    MONITORAMENTO_COR_ON
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_MONITORAMENTO_COR_ON
    ELSE
      Element Attribute Value Should Be  xpath=//input[@name="param_MONITORAMENTO_COR_ON"]  value  \#008000
    END

Verificar o valor do campo Status Off
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Status Off')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'MONITORAMENTO_COR_OFF')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_MONITORAMENTO_COR_OFF']
      Element Should Contain             ${LABEL1}    Status Off 
      Element Should Contain             ${LABEL2}    MONITORAMENTO_COR_OFF
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_MONITORAMENTO_COR_OFF
    ELSE
      Element Attribute Value Should Be  xpath=//input[@name="param_MONITORAMENTO_COR_OFF"]  value  \#ff0000
    END

Verificar o valor do campo Status Desativado
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Status Desativado')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'MONITORAMENTO_COR_DESATIVADO')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_MONITORAMENTO_COR_DESATIVADO']
      Element Should Contain             ${LABEL1}    Status Desativado 
      Element Should Contain             ${LABEL2}    MONITORAMENTO_COR_DESATIVADO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_MONITORAMENTO_COR_DESATIVADO
    ELSE
      Element Attribute Value Should Be  xpath=//input[@name="param_MONITORAMENTO_COR_DESATIVADO"]  value  \#0000ff
    END

#Label: 
Verificar a label: Câmera
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Câmera')]
	Element Should Contain  ${LABEL}   Câmera    

Verificar o valor do campo Time out Monitoramento de Câmeras
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Time out Monitoramento de Câmeras')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'SURICATO_MONITORAMENTOCAM_TIMEOUT')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_SURICATO_MONITORAMENTOCAM_TIMEOUT']
      Element Should Contain             ${LABEL1}    Time out Monitoramento de Câmeras 
      Element Should Contain             ${LABEL2}    SURICATO_MONITORAMENTOCAM_TIMEOUT
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_SURICATO_MONITORAMENTOCAM_TIMEOUT
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="SURICATO_MONITORAMENTOCAM_TIMEOUT"]  value  1000
    END

Verificar o valor do campo Configuração de Largura da Câmera
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Configuração de Largura da Câmera')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'SURICATO_MONITORAMENTOCAM_WIDTH')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_SURICATO_MONITORAMENTOCAM_WIDTH']
      Element Should Contain             ${LABEL1}    Configuração de Largura da Câmera 
      Element Should Contain             ${LABEL2}    SURICATO_MONITORAMENTOCAM_WIDTH
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_SURICATO_MONITORAMENTOCAM_WIDTH
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="SURICATO_MONITORAMENTOCAM_WIDTH"]  value  800
    END

Verificar o valor do campo Configuração da Altura da Câmera
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Configuração da Altura da Câmera')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'SURICATO_MONITORAMENTOCAM_HEIGHT')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_SURICATO_MONITORAMENTOCAM_HEIGHT']
      Element Should Contain             ${LABEL1}    Configuração da Altura da Câmera 
      Element Should Contain             ${LABEL2}    SURICATO_MONITORAMENTOCAM_HEIGHT
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_SURICATO_MONITORAMENTOCAM_HEIGHT
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="SURICATO_MONITORAMENTOCAM_HEIGHT"]  value  600
    END

#Aba: Equipamento de Proteção Individual - EPI
#Label: Configuração

Verificar a label: Configuração (EPI)
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Configuração')]
	Element Should Contain  ${LABEL}  Configuração     

Verificar o valor do campo Codin para entrega de EPIs
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Codin para entrega de EPIs')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'CODIGOCODINENTREGAEPI')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_CODIGOCODINENTREGAEPI']
      Element Should Contain             ${LABEL1}    Codin para entrega de EPIs 
      Element Should Contain             ${LABEL2}    CODIGOCODINENTREGAEPI
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_CODIGOCODINENTREGAEPI
    ELSE
      Element Should Contain  xpath=//select[@id="CODIGOCODINENTREGAEPI"]/option[1]  MD400TSI
    END  

Verificar o valor do campo Utiliza Codin de Beneficios para entrega de EPIs
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Utiliza Codin de Beneficios para entrega de EPIs')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'EPIUTILIZACODINBENEFICIOS')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_EPIUTILIZACODINBENEFICIOS']
      Element Should Contain             ${LABEL1}    Utiliza Codin de Beneficios para entrega de EPIs
      Element Should Contain             ${LABEL2}    EPIUTILIZACODINBENEFICIOS
 	   Element Attribute Value Should Be  ${CAMPO1}    name   param_EPIUTILIZACODINBENEFICIOS
    ELSE
      Element Should Contain  xpath=//select[@id="EPIUTILIZACODINBENEFICIOS"]/option[1]  Não
    END


#Label: Email
Verificar a label: Email
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Email')]
	Element Should Contain  ${LABEL}   Email

Verificar o valor do campo Envio de Email antes do vencimento
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Utiliza Codin de Beneficios para entrega de EPIs')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'EPIUTILIZACODINBENEFICIOS')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_EPIUTILIZACODINBENEFICIOS']
      Element Should Contain             ${LABEL1}    Utiliza Codin de Beneficios para entrega de EPIs
      Element Should Contain             ${LABEL2}    EPIUTILIZACODINBENEFICIOS
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_EPIUTILIZACODINBENEFICIOS
    ELSE
      Element Should Contain  xpath=//select[@id="ENVIO_EMAIL_ANTES_VENCIMENTO_EPI"]/option[1]  Testando@teste.com
    END    

Verificar o valor do campo Envio de Email após o vencimento
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Envio de Email após o vencimento')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'ENVIO_EMAIL_APOS_VENCIMENTO_EPI')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_ENVIO_EMAIL_APOS_VENCIMENTO_EPI']
      Element Should Contain             ${LABEL1}    Envio de Email após o vencimento 
      Element Should Contain             ${LABEL2}    ENVIO_EMAIL_APOS_VENCIMENTO_EPI
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_ENVIO_EMAIL_APOS_VENCIMENTO_EPI
    ELSE
      Element Should Contain  xpath=//select[@id="ENVIO_EMAIL_APOS_VENCIMENTO_EPI"]/option[1]  Testando@teste.com
    END

Verificar o valor do campo Envio de Email no vencimento
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Envio de Email no vencimento')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'ENVIO_EMAIL_NO_VENCIMENTO_EPI')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_ENVIO_EMAIL_NO_VENCIMENTO_EPI']
      Element Should Contain             ${LABEL1}    Envio de Email no vencimento 
      Element Should Contain             ${LABEL2}    ENVIO_EMAIL_NO_VENCIMENTO_EPI
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_ENVIO_EMAIL_NO_VENCIMENTO_EPI
    ELSE
      Element Should Contain  xpath=//select[@id="ENVIO_EMAIL_NO_VENCIMENTO_EPI"]/option[1]  Testando@teste.com
    END

#Aba: Matrícula Automática
#Label: Empregado

Verificar a label: Empregado 
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Empregado')]
	Element Should Contain  ${LABEL}  Empregado     

Verificar o valor do campo Auto Incremento (Empregado)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=(//label[contains(text(),'Auto Incremento')])[1]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL1AUTOINCREMENTO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL1AUTOINCREMENTO']
      Element Should Contain             ${LABEL1}    Auto Incremento
      Element Should Contain             ${LABEL2}    COL1AUTOINCREMENTO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_COL1AUTOINCREMENTO
    ELSE
      Element Should Contain  xpath=//select[@id="COL1AUTOINCREMENTO"]/option[1]  Não
    END

Verificar o valor do campo Permissão - Domingo
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Permissão - Domingo')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL1PERMDOMINGO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL1PERMDOMINGO']
      Element Should Contain             ${LABEL1}    Permissão - Domingo 
      Element Should Contain             ${LABEL2}    COL1PERMDOMINGO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_COL1PERMDOMINGO
    ELSE
      Element Should Contain  xpath=//select[@id="COL1PERMDOMINGO"]/option[1]  CATRACA PORTARIA - ( Liberar )
    END

Verificar o valor do campo Permissão - Feriado
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Permissão - Feriado')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL1PERMFERIADO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL1PERMFERIADO']
      Element Should Contain             ${LABEL1}    Permissão - Feriado 
      Element Should Contain             ${LABEL2}    COL1PERMFERIADO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_COL1PERMFERIADO
    ELSE
      Element Should Contain  xpath=//select[@id="COL1PERMFERIADO"]/option[1]  CATRACA PORTARIA - ( Liberar )
    END

Verificar o valor do campo Permissão - Dia da Semana
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Permissão - Dia da Semana')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL1PERMNORMAL')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL1PERMNORMAL']
      Element Should Contain             ${LABEL1}    Permissão - Dia da Semana 
      Element Should Contain             ${LABEL2}    COL1PERMNORMAL
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_COL1PERMNORMAL
    ELSE
      Element Should Contain  xpath=//select[@id="COL1PERMNORMAL"]/option[1]  CATRACA PORTARIA - ( Liberar )
    END

Verificar o valor do campo Permissão - Sábado
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Permissão - Sábado')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL1PERMSABADO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL1PERMSABADO']
      Element Should Contain             ${LABEL1}    Permissão - Sábado 
      Element Should Contain             ${LABEL2}    COL1PERMSABADO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_COL1PERMSABADO
    ELSE
      Element Should Contain  xpath=//select[@id="COL1PERMSABADO"]/option[1]  CATRACA PORTARIA - ( Liberar )
    END

Verificar o valor do campo Permissão - Visitante
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Permissão - Visitante')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL1PERMVISITANTE')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL1PERMVISITANTE']
      Element Should Contain             ${LABEL1}    Permissão - Visitante 
      Element Should Contain             ${LABEL2}    COL1PERMVISITANTE
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_COL1PERMVISITANTE
    ELSE
      Element Should Contain  xpath=//select[@id="COL1PERMVISITANTE"]/option[1]  CATRACA PORTARIA - ( Liberar )
    END

#Label: Terceiro

Verificar a label: Terceiro
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Terceiro')]
	Element Should Contain  ${LABEL}   Terceiro

Verificar o valor do segundo campo Auto Incremento (Terceiro)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=(//label[contains(text(),'Auto Incremento')])[2]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL2AUTOINCREMENTO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL2AUTOINCREMENTO']
      Element Should Contain             ${LABEL1}    Auto Incremento
      Element Should Contain             ${LABEL2}    COL2AUTOINCREMENTO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_COL2AUTOINCREMENTO
    ELSE
      Element Should Contain  xpath=//select[@id="COL2AUTOINCREMENTO"]/option[1]  Não
    END

Verificar o valor do segundo campo Permissão - Domingo
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Permissão - Domingo')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL2PERMDOMINGO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL2PERMDOMINGO']
      Element Should Contain             ${LABEL1}    Permissão - Domingo 
      Element Should Contain             ${LABEL2}    COL2PERMDOMINGO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_COL2PERMDOMINGO
    ELSE
      Element Should Contain  xpath=//select[@id="COL2PERMDOMINGO"]/option[1]  CATRACA PORTARIA - ( Liberar )
    END

Verificar o valor do segundo campo Permissão - Feriado
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Permissão - Feriado')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL2PERMFERIADO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL2PERMFERIADO']
      Element Should Contain             ${LABEL1}    Permissão - Feriado 
      Element Should Contain             ${LABEL2}    COL2PERMFERIADO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_COL2PERMFERIADO
    ELSE
      Element Should Contain  xpath=//select[@id="COL2PERMFERIADO"]/option[1]  CATRACA PORTARIA - ( Liberar )
    END

Verificar o valor do segundo campo Permissão - Dia da Semana
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Permissão - Dia da Semana')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL2PERMNORMAL')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL2PERMNORMAL']
      Element Should Contain             ${LABEL1}    Permissão - Dia da Semana 
      Element Should Contain             ${LABEL2}    COL2PERMNORMAL
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_COL2PERMNORMAL
    ELSE
      Element Should Contain  xpath=//select[@id="COL2PERMNORMAL"]/option[1]  CATRACA PORTARIA - ( Liberar )
    END

Verificar o valor do segundo campo Permissão - Sábado
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Permissão - Sábado')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL2PERMSABADO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL2PERMSABADO']
      Element Should Contain             ${LABEL1}    Permissão - Sábado 
      Element Should Contain             ${LABEL2}    COL2PERMSABADO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_COL2PERMSABADO
    ELSE
      Element Should Contain  xpath=//select[@id="COL2PERMSABADO"]/option[1]  CATRACA PORTARIA - ( Liberar )
    END

Verificar o valor do segundo campo Permissão - Visitante
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Permissão - Visitante')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL2PERMVISITANTE')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL2PERMVISITANTE']
      Element Should Contain             ${LABEL1}    Permissão - Visitante 
      Element Should Contain             ${LABEL2}    COL2PERMVISITANTE
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_COL2PERMVISITANTE
    ELSE
      Element Should Contain  xpath=//select[@id="COL2PERMVISITANTE"]/option[1]  CATRACA PORTARIA - ( Liberar )
    END

#Aba: Parceiro
Verificar a label: Parceiro
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Parceiro')]
	Element Should Contain  ${LABEL}   Parceiro

Verificar o valor do terceiro campo Auto Incremento (Parceiro)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=(//label[contains(text(),'Auto Incremento')])[3]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL3AUTOINCREMENTO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL3AUTOINCREMENTO']
      Element Should Contain             ${LABEL1}    Auto Incremento
      Element Should Contain             ${LABEL2}    COL3AUTOINCREMENTO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_COL3AUTOINCREMENTO
    ELSE
      Element Should Contain  xpath=//select[@id="COL3AUTOINCREMENTO"]/option[1]  Não
    END

Verificar o valor do terceiro campo Permissão - Domingo
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Permissão - Domingo')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL3PERMDOMINGO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL3PERMDOMINGO']
      Element Should Contain             ${LABEL1}    Permissão - Domingo 
      Element Should Contain             ${LABEL2}    COL3PERMDOMINGO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_COL3PERMDOMINGO
    ELSE
      Element Should Contain  xpath=//select[@id="COL3PERMDOMINGO"]/option[1]  CATRACA PORTARIA - ( Liberar )
    END

Verificar o valor do terceiro campo Permissão - Feriado
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Permissão - Feriado')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL3PERMFERIADO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL3PERMFERIADO']
      Element Should Contain             ${LABEL1}    Permissão - Feriado 
      Element Should Contain             ${LABEL2}    COL3PERMFERIADO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_COL3PERMFERIADO
    ELSE
      Element Should Contain  xpath=//select[@id="COL3PERMFERIADO"]/option[1]  CATRACA PORTARIA - ( Liberar )
    END

Verificar o valor do terceiro campo Permissão - Dia da Semana
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Permissão - Dia da Semana')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL3PERMNORMAL')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL3PERMNORMAL']
      Element Should Contain             ${LABEL1}    Permissão - Dia da Semana 
      Element Should Contain             ${LABEL2}    COL3PERMNORMAL
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_COL3PERMNORMAL
    ELSE
      Element Should Contain  xpath=//select[@id="COL3PERMNORMAL"]/option[1]  CATRACA PORTARIA - ( Liberar )
    END  

Verificar o valor do terceiro campo Permissão - Sábado
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Permissão - Sábado')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL3PERMSABADO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL3PERMSABADO']
      Element Should Contain             ${LABEL1}    Permissão - Sábado 
      Element Should Contain             ${LABEL2}    COL3PERMSABADO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_COL3PERMSABADO
    ELSE
      Element Should Contain  xpath=//select[@id="COL3PERMSABADO"]/option[1]  CATRACA PORTARIA - ( Liberar )
    END

Verificar o valor do terceiro campo Permissão - Visitante
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Permissão - Sábado')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'COL3PERMSABADO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_COL3PERMSABADO']
      Element Should Contain             ${LABEL1}    Permissão - Sábado 
      Element Should Contain             ${LABEL2}    COL3PERMSABADO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_COL3PERMSABADO
    ELSE
      Element Should Contain  xpath=//select[@id="COL3PERMVISITANTE"]/option[1]  CATRACA PORTARIA - ( Liberar )
    END

#Aba: TOTVS
#Label: Integração TOTVS

Verificar a label: Integração TOTVS
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Integração TOTVS')]
	Element Should Contain  ${LABEL}   Integração TOTVS        

Verificar o valor campo Integração TOTVS
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Integração TOTVS')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVS')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_TOTVS']
      Element Should Contain             ${LABEL1}    Integração TOTVS
      Element Should Contain             ${LABEL2}    TOTVS
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVS
    ELSE
      Element Should Contain  xpath=//select[@id="TOTVS"]/option[1]  Não
    END  

Verificar o valor campo Sistema
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Sistema')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVS_SYSTEM')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_TOTVS_SYSTEM']
      Element Should Contain             ${LABEL1}    Sistema
      Element Should Contain             ${LABEL2}    TOTVS_SYSTEM
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVS_SYSTEM
    ELSE
      Element Should Contain  xpath=//select[@id="TOTVS_SYSTEM"]/option[1]  DATASUL
    END

Verificar o valor campo URL
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'URL ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVS_URL')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_TOTVS_URL']
      Element Should Contain             ${LABEL1}    URL 
      Element Should Contain             ${LABEL2}    TOTVS_URL
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVS_URL
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="TOTVS_URL"]  value  TOTVS_URL
    END  

Verificar o valor campo Tempo de tolerância antes do acesso da faixa de entrada (minuto)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Tempo de tolerância antes do acesso da faixa de entrada (minuto)')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVS_FAIXA_INICIO_ANTES')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_TOTVS_FAIXA_INICIO_ANTES']
      Element Should Contain             ${LABEL1}    Tempo de tolerância antes do acesso da faixa de entrada (minuto) 
      Element Should Contain             ${LABEL2}    TOTVS_FAIXA_INICIO_ANTES
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVS_FAIXA_INICIO_ANTES
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="TOTVS_FAIXA_INICIO_ANTES"]  value  0
    END

Verificar o valor campo Tempo de tolerância depois do acesso da faixa de entrada (minuto)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Tempo de tolerância depois do acesso da faixa de entrada (minuto)')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVS_FAIXA_FIM_ANTES')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_TOTVS_FAIXA_FIM_ANTES']
      Element Should Contain             ${LABEL1}    Tempo de tolerância depois do acesso da faixa de entrada (minuto) 
      Element Should Contain             ${LABEL2}    TOTVS_FAIXA_FIM_ANTES
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVS_FAIXA_FIM_ANTES
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="TOTVS_FAIXA_FIM_ANTES"]  value  0
    END

Verificar o valor campo Tempo de tolerância antes do acesso da faixa de saída (minuto)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Tempo de tolerância antes do acesso da faixa de saída (minuto)')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVS_FAIXA_INICIO_DEPOIS')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_TOTVS_FAIXA_INICIO_DEPOIS']
      Element Should Contain             ${LABEL1}    Tempo de tolerância antes do acesso da faixa de saída (minuto) 
      Element Should Contain             ${LABEL2}    TOTVS_FAIXA_INICIO_DEPOIS
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVS_FAIXA_INICIO_DEPOIS
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="TOTVS_FAIXA_INICIO_DEPOIS"]  value  0
    END

Verificar o valor campo Tempo de tolerância depois do acesso da faixa de saída (minuto)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Tempo de tolerância antes do acesso da faixa de saída (minuto)')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVS_FAIXA_INICIO_DEPOIS')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_TOTVS_FAIXA_INICIO_DEPOIS']
      Element Should Contain             ${LABEL1}    Tempo de tolerância antes do acesso da faixa de saída (minuto) 
      Element Should Contain             ${LABEL2}    TOTVS_FAIXA_INICIO_DEPOIS
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVS_FAIXA_INICIO_DEPOIS
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="TOTVS_FAIXA_FIM_DEPOIS"]  value  0
    END

Verificar o valor campo Organograma Padrão
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Organograma Padrão')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVS_CODIORGALOCA_INTEGRACAO_PADRAO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_TOTVS_CODIORGALOCA_INTEGRACAO_PADRAO']
      Element Should Contain             ${LABEL1}    Organograma Padrão 
      Element Should Contain             ${LABEL2}    TOTVS_CODIORGALOCA_INTEGRACAO_PADRAO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVS_CODIORGALOCA_INTEGRACAO_PADRAO
    ELSE
      Element Should Contain  xpath=//select[@id="TOTVS_CODIORGALOCA_INTEGRACAO_PADRAO"]/option[1]  ORGA 2
    END

Verificar o valor campo Local Padrão
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Local Padrão')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVS_LOCAORGAPAI_INTEGRACAO_PADRAO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_TOTVS_LOCAORGAPAI_INTEGRACAO_PADRAO']
      Element Should Contain             ${LABEL1}    Local Padrão 
      Element Should Contain             ${LABEL2}    TOTVS_LOCAORGAPAI_INTEGRACAO_PADRAO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVS_LOCAORGAPAI_INTEGRACAO_PADRAO
    ELSE
      Element Should Contain  xpath=//select[@id="TOTVS_LOCAORGAPAI_INTEGRACAO_PADRAO"]/option[1]  ADMINISTRACAO DE PESSOAL
    END

Verificar o valor campo Empresa Padrão
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Empresa Padrão')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVS_EMPRESA_INTEGRACAO_PADRAO')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_TOTVS_EMPRESA_INTEGRACAO_PADRAO']
      Element Should Contain             ${LABEL1}    Empresa Padrão 
      Element Should Contain             ${LABEL2}    TOTVS_EMPRESA_INTEGRACAO_PADRAO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVS_EMPRESA_INTEGRACAO_PADRAO
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="TOTVS_EMPRESA_INTEGRACAO_PADRAO"]  value  1
    END

Verificar o valor campo Grupo de Acesso Padrão
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Grupo de Acesso Padrão')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVS_ACESS_GROUP')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_TOTVS_ACESS_GROUP']
      Element Should Contain             ${LABEL1}    Grupo de Acesso Padrão 
      Element Should Contain             ${LABEL2}    TOTVS_ACESS_GROUP
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVS_ACESS_GROUP
    ELSE
      Element Should Contain  xpath=//select[@id="TOTVS_LOCAORGAPAI_INTEGRACAO_PADRAO"]/option[1]  ADMINISTRACAO DE PESSOAL
    END

Verificar o valor campo Tipo de Situação Trabalhista Padrão
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Tipo de Situação Trabalhista Padrão')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVS_INTEGRACAO_TIPO_SITUACAO')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_TOTVS_INTEGRACAO_TIPO_SITUACAO']
      Element Should Contain             ${LABEL1}    Tipo de Situação Trabalhista Padrão 
      Element Should Contain             ${LABEL2}    TOTVS_INTEGRACAO_TIPO_SITUACAO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVS_INTEGRACAO_TIPO_SITUACAO
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="TOTVS_INTEGRACAO_TIPO_SITUACAO"]  value  99
    END

Verificar o valor campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos)')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVS_ABRANGENCIA_INICIO')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_TOTVS_ABRANGENCIA_INICIO']
      Element Should Contain             ${LABEL1}    Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos) 
      Element Should Contain             ${LABEL2}    TOTVS_ABRANGENCIA_INICIO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVS_ABRANGENCIA_INICIO
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="TOTVS_ABRANGENCIA_INICIO"]  value  15
    END  

Verificar o valor campo Tempo de Tolerancia antes do acesso da faixa de saida (Minutos)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Tempo de Tolerancia antes do acesso da faixa de saida (Minutos)')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVS_ABRANGENCIA_FIM')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_TOTVS_ABRANGENCIA_FIM']
      Element Should Contain             ${LABEL1}    Tempo de Tolerancia antes do acesso da faixa de saida (Minutos) 
      Element Should Contain             ${LABEL2}    TOTVS_ABRANGENCIA_FIM
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVS_ABRANGENCIA_FIM
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="TOTVS_ABRANGENCIA_FIM"]  value  15
    END

Verificar o valor campo Turno Reduzido
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Turno Reduzido')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVS_SHORT_SHIFT')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_TOTVS_SHORT_SHIFT']
      Element Should Contain             ${LABEL1}    Turno Reduzido
      Element Should Contain             ${LABEL2}    TOTVS_SHORT_SHIFT
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVS_SHORT_SHIFT
    ELSE
      Element Should Contain  xpath=//select[@id="TOTVS_SHORT_SHIFT"]/option[1]  Não
    END

Verificar o valor campo Tipo de Controle de Refeição
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Controlar Chave Externa Refeitório')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVSEXTERNALKEYREFEITORIO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_TOTVSCONTROLEREFEICAO']
      Element Should Contain             ${LABEL1}    Controlar Chave Externa Refeitório
      Element Should Contain             ${LABEL2}    TOTVSEXTERNALKEYREFEITORIO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVSCONTROLEREFEICAO
    ELSE
      Element Should Contain  xpath=//select[@id="TOTVSCONTROLEREFEICAO"]/option[1]  Crédito de Acesso Matriz de Acesso
    END

Verificar o valor campo Controlar Chave Externa Refeitório
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Controlar Chave Externa Refeitório')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVSEXTERNALKEYREFEITORIO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_TOTVSEXTERNALKEYREFEITORIO']
      Element Should Contain             ${LABEL1}    Controlar Chave Externa Refeitório
      Element Should Contain             ${LABEL2}    TOTVSEXTERNALKEYREFEITORIO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVSEXTERNALKEYREFEITORIO
    ELSE
      Element Should Contain  xpath=//select[@id="TOTVSEXTERNALKEYREFEITORIO"]/option[1]  Não
    END

Verificar o valor campo Faixa de Acesso Mandatório
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Faixa de Acesso Mandatório')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVSHORARIOACESSO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_TOTVSHORARIOACESSO']
      Element Should Contain             ${LABEL1}    Faixa de Acesso Mandatório
      Element Should Contain             ${LABEL2}    TOTVSHORARIOACESSO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVSHORARIOACESSO
    ELSE
      Element Should Contain  xpath=//select[@id="TOTVSHORARIOACESSO"]/option[1]  Global
    END

Verificar o valor campo Faixa de Acesso Refeitório Mandatorio
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Faixa de Acesso Refeitório Mandatorio')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVSHORARIODEREFEICAOMANDATORIO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_TOTVSHORARIODEREFEICAOMANDATORIO']
      Element Should Contain             ${LABEL1}    Faixa de Acesso Refeitório Mandatorio
      Element Should Contain             ${LABEL2}    TOTVSHORARIODEREFEICAOMANDATORIO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVSHORARIODEREFEICAOMANDATORIO
    ELSE
      Element Should Contain  xpath=//select[@id="TOTVSHORARIODEREFEICAOMANDATORIO"]/option[1]  Global
    END  

Verificar o valor campo Tag do Início da Escala
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Tag do Início da Escala')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVSINICIOESCALA')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_TOTVSINICIOESCALA']
      Element Should Contain             ${LABEL1}    Tag do Início da Escala
      Element Should Contain             ${LABEL2}    TOTVSINICIOESCALA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVSINICIOESCALA
    ELSE
      Element Should Contain  xpath=//select[@id="TOTVSINICIOESCALA"]/option[1]  10
    END

Verificar o valor campo Chave Externa
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Chave Externa')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVSPESQUISAEXTERNALKEY')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_TOTVSPESQUISAEXTERNALKEY']
      Element Should Contain             ${LABEL1}    Chave Externa
      Element Should Contain             ${LABEL2}    TOTVSPESQUISAEXTERNALKEY
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVSPESQUISAEXTERNALKEY
    ELSE
      Element Should Contain  xpath=//select[@id="TOTVSPESQUISAEXTERNALKEY"]/option[1]  Que Contenha
    END

Verificar o valor campo Tipo de Tolerância
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      #${LABEL1}      Set Variable  xpath=//label[contains(text(),'Tipo de  Tolerância')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVSTIPOTOLERANCIA')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_TOTVSTIPOTOLERANCIA']
      #Element Should Contain             ${LABEL1}    Tipo de  Tolerância
      Element Should Contain             ${LABEL2}    TOTVSTIPOTOLERANCIA
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVSTIPOTOLERANCIA
    ELSE
      Element Should Contain  xpath=//select[@id="TOTVSTIPOTOLERANCIA"]/option[1]  Abrangente
    END

Verificar o valor campo Tolerância Refeição(Saida)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Tolerância Refeição(Saida)')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVSTOLERANCIAREFEENTRADA')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_TOTVSTOLERANCIAREFEENTRADA']
      Element Should Contain             ${LABEL1}    Tolerância Refeição(Saida)
      Element Should Contain             ${LABEL2}    TOTVSTOLERANCIAREFEENTRADA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVSTOLERANCIAREFEENTRADA
    ELSE
      Element Should Contain  xpath=//select[@id="TOTVSTOLERANCIAREFEENTRADA"]/option[1]  Não
    END

Verificar o valor campo Tolerância Refeição(Valor)
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Tolerância Refeição(Valor) ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'TOTVSTOLERANCIAREFEENTRADAVALOR')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_TOTVSTOLERANCIAREFEENTRADAVALOR']
      Element Should Contain             ${LABEL1}    Tolerância Refeição(Valor) 
      Element Should Contain             ${LABEL2}    TOTVSTOLERANCIAREFEENTRADAVALOR
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_TOTVSTOLERANCIAREFEENTRADAVALOR
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="TOTVSTOLERANCIAREFEENTRADAVALOR"]  value  30
    END

Verificar o valor campo Controle de Refeições Mandatórios no Sistemas
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Controle de Refeições Mandatórios no Sistemas')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'CONTROLEREFEICAOMANDATORIO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_CONTROLEREFEICAOMANDATORIO']
      Element Should Contain             ${LABEL1}    Controle de Refeições Mandatórios no Sistemas
      Element Should Contain             ${LABEL2}    CONTROLEREFEICAOMANDATORIO
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_CONTROLEREFEICAOMANDATORIO
    ELSE
      Element Should Contain  xpath=//select[@id="CONTROLEREFEICAOMANDATORIO"]/option[1]  Matriz de Acesso
    END

Verificar o valor campo Configuração Padrão de Acesso, Refeição e Biometria
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Configuração Padrão de Acesso, Refeição e Biometria')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'PARAMETROPADRAOACESSOS')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_PARAMETROPADRAOACESSOS']
      Element Should Contain             ${LABEL1}    Configuração Padrão de Acesso, Refeição e Biometria
      Element Should Contain             ${LABEL2}    PARAMETROPADRAOACESSOS
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_PARAMETROPADRAOACESSOS
    ELSE
      Element Should Contain  xpath=//select[@id="PARAMETROPADRAOACESSOS"]/option[1]  Não
    END

#Aba: Sistema
#Label: MatchOnServer
Verificar a label: MatchOnServer
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'MatchOnServer')]
	Element Should Contain  ${LABEL}  MatchOnServer

Verificar o valor campo Identificar a pessoa no sistema por biometria - MatchOnServer
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Identificar a pessoa no sistema por biometria - MatchOnServer')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'IDENTIFICACAO_POR_BIOMETRIA')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_IDENTIFICACAO_POR_BIOMETRIA']
      Element Should Contain             ${LABEL1}    Identificar a pessoa no sistema por biometria - MatchOnServer
      Element Should Contain             ${LABEL2}    IDENTIFICACAO_POR_BIOMETRIA
 	  Element Attribute Value Should Be  ${CAMPO1}    name   param_IDENTIFICACAO_POR_BIOMETRIA
    ELSE
      Element Should Contain  xpath=//select[@id="IDENTIFICACAO_POR_BIOMETRIA"]/option[1]  Não
    END

#Label: Middleware

Verificar a label: Middleware
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Middleware')]
	Element Should Contain  ${LABEL}  Middleware

Verificar o valor campo Caminho Middleware
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Caminho Middleware ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'URLSURICATOMIDDLEWARE')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_URLSURICATOMIDDLEWARE']
      Element Should Contain             ${LABEL1}    Caminho Middleware 
      Element Should Contain             ${LABEL2}    URLSURICATOMIDDLEWARE
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_URLSURICATOMIDDLEWARE
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="URLSURICATOMIDDLEWARE"]  value  http://10.105.0.4:1800/suricato-middleware/
    END

#Label: WebService Guardian - WSG
Verificar a label: WebService Guardian - WSG
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'WebService Guardian - WSG')]
	Element Should Contain  ${LABEL}  WebService Guardian - WSG

Verificar o valor campo Integração WSG
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Integração WSG')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'WSG')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_WSG']
      Element Should Contain             ${LABEL1}    Integração WSG
      Element Should Contain             ${LABEL2}    WSG
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_WSG
    ELSE
      Element Should Contain  xpath=//select[@id="WSG"]/option[1]  Não
    END  

Verificar o valor campo Url WSG
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Url WSG ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'WSG_WSDL')]
	    ${CAMPO1}      Set Variable  xpath=//input[@name='param_WSG_WSDL']
      Element Should Contain             ${LABEL1}    Url WSG 
      Element Should Contain             ${LABEL2}    WSG_WSDL
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_WSG_WSDL
    ELSE
      Element Attribute Value Should Be  xpath=//input[@id="WSG_WSDL"]  value  http://infind.toledobrasil.com.br/WS_GUARDIAN/WS_GUARDIAN_PLUS.asmx?wsdl
    END

Verificar o valor campo Debug WSG
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Debug WSG')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'WSG_DEBUG')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_WSG_DEBUG']
      Element Should Contain             ${LABEL1}    Debug WSG
      Element Should Contain             ${LABEL2}    WSG_DEBUG
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_WSG_DEBUG
    ELSE
      Element Should Contain  xpath=//select[@id="WSG_DEBUG"]/option[1]  Não
    END

#Área de Risco
Verificar a label: Área de Risco
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Área de Risco')]
	Element Should Contain  ${LABEL}  Área de Risco

Verificar o valor campo Liberar Acesso Área de Risco
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Liberar Acesso Área de Risco ')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'USE_RISK_AREA_CONTROLLER')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_USE_RISK_AREA_CONTROLLER']
      Element Should Contain             ${LABEL1}    Liberar Acesso Área de Risco  
      Element Should Contain             ${LABEL2}    USE_RISK_AREA_CONTROLLER
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_USE_RISK_AREA_CONTROLLER
    ELSE
      Element Should Contain  xpath=//select[@id="USE_RISK_AREA_CONTROLLER"]/option[1]  Não
    END

#Label: Escola
Verificar a label: Escola
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Escola')]
	Element Should Contain  ${LABEL}  Escola

Verificar o valor campo Suricato Escola
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Suricato Escola')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'ESCOLA')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_ESCOLA']
      Element Should Contain             ${LABEL1}    Suricato Escola
      Element Should Contain             ${LABEL2}    ESCOLA
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_ESCOLA
    ELSE
      Element Should Contain  xpath=//select[@id="ESCOLA"]/option[1]  Não
    END  

Verificar o valor campo Responsável recebe notificação via Sms/E-mail
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Responsável recebe notificação via Sms/E-mail')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'NOTIFICACAO_RESPONSAVEL_ALUNO')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_NOTIFICACAO_RESPONSAVEL_ALUNO']
      Element Should Contain             ${LABEL1}    Responsável recebe notificação via Sms/E-mail
      Element Should Contain             ${LABEL2}    NOTIFICACAO_RESPONSAVEL_ALUNO
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_NOTIFICACAO_RESPONSAVEL_ALUNO
    ELSE
      ${VAR}  Set Variable   
      Element Should Contain  xpath=//select[@id="NOTIFICACAO_RESPONSAVEL_ALUNO"]  ${VAR}
    END

#Label: Linha de Ônibus
Verificar a label: Linha de Ônibus
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Linha de Ônibus')]
	Element Should Contain  ${LABEL}  Linha de Ônibus

Verificar o valor campo Colab. Utiliza Transp. Empresa
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Colab. Utiliza Transp. Empresa')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'PERMI_ACESS_ONIBUS')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_PERMI_ACESS_ONIBUS']
      Element Should Contain             ${LABEL1}    Colab. Utiliza Transp. Empresa
      Element Should Contain             ${LABEL2}    PERMI_ACESS_ONIBUS
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_PERMI_ACESS_ONIBUS
    ELSE
      Element Should Contain  xpath=//select[@id="PERMI_ACESS_ONIBUS"]/option[1]  Não
    END  

#Label: Controlador de Mensagem
Verificar a label: Controlador de Mensagem
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Linha de Ônibus')]
	Element Should Contain  ${LABEL}  Linha de Ônibus

Verificar o valor campo Mensagem de Codin
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Mensagem no Codin')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'USE_MESSAGE_CONTROLLER')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_USE_MESSAGE_CONTROLLER']
      Element Should Contain             ${LABEL1}    Mensagem no Codin
      Element Should Contain             ${LABEL2}    USE_MESSAGE_CONTROLLER
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_USE_MESSAGE_CONTROLLER
    ELSE
      Element Should Contain  xpath=//select[@id="USE_MESSAGE_CONTROLLER"]/option[1]  Não
    END

#Label: Área Alfandegada
Verificar a label: Área Alfandegada
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Área Alfandegada')]
	Element Should Contain  ${LABEL}  Área Alfandegada


Verificar o valor campo Utiliza Área Alfandegada LDC 
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Utiliza Área Alfandegada LDC')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'UTILIZAAREAALFANDEGADALDC')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_UTILIZAAREAALFANDEGADALDC']
      Element Should Contain             ${LABEL1}    Utiliza Área Alfandegada LDC
      Element Should Contain             ${LABEL2}    UTILIZAAREAALFANDEGADALDC
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_UTILIZAAREAALFANDEGADALDC
    ELSE
      Element Should Contain  xpath=//select[@id="UTILIZAAREAALFANDEGADALDC"]/option[1]  Não
    END

#Label: Controle de Fumaça
Verificar a label: Controle de Fumaça
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Controle de Fumaça')]
	Element Should Contain  ${LABEL}  Controle de Fumaça

Verificar o valor campo Utiliza Controle de Validade de Fumaça
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Utiliza Área Alfandegada LDC')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'UTILIZAAREAALFANDEGADALDC')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_UTILIZAAREAALFANDEGADALDC']
      Element Should Contain             ${LABEL1}    Utiliza Área Alfandegada LDC
      Element Should Contain             ${LABEL2}    UTILIZAAREAALFANDEGADALDC
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_UTILIZAAREAALFANDEGADALDC
    ELSE
      Element Should Contain  xpath=//select[@id="UTILIZACONTROLEFUMACA"]/option[1]  Não
    END

#Label: Estacionamento
Verificar label: Estacionamento
	${LABEL}   Set Variable  xpath=//h5[contains(text(),'Estacionamento')]
	Element Should Contain  ${LABEL}  Estacionamento

Verificar o valor campo Estacionamento de Veículo
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${LABEL1}      Set Variable  xpath=//label[contains(text(),'Estacionamento de Veículo')]
      ${LABEL2}      Set Variable  xpath=//span[contains(text(),'VALORTOTALVAGAS')]
	    ${CAMPO1}      Set Variable  xpath=//select[@name='param_VALORTOTALVAGAS']
      Element Should Contain             ${LABEL1}    Estacionamento de Veículo
      Element Should Contain             ${LABEL2}    VALORTOTALVAGAS
 	    Element Attribute Value Should Be  ${CAMPO1}    name   param_VALORTOTALVAGAS
    ELSE
      Element Should Contain  xpath=//select[@id="VALORTOTALVAGAS"]/option[1]  Não
    END  

# REGISTER

Preencher o campo Idioma Padrão do Sistema "${IDIOMA}"
    Input Text  xpath=//input[@id="displayIDIOMA"]  ${IDIOMA}
    Sleep  2s
Selecionar a opção "${OPCAO}" no campo Debug 
    Select From List By Label    xpath=//select[@id="DEBUG"]  ${OPCAO}
    Sleep  2s
Selecionar a opção "${OPCAO}" no campo Utiliza Matriz de Acesso
    Execute Javascript  window.scrollTo(0,400)
    Sleep  3s
    Select From List By Label    xpath=//select[@id="MATRIZ_ACESSO"]  ${OPCAO}
Selecionar a opção "${VAR}" no campo Crachá Lógico/Físico
    Select From List By Label    xpath=//select[@id="CRACHA_LOGICO_FISICO"]  ${VAR}
Selecionar a opção "${VAR}" no campo Tipo Biometria Colaborador
    Select From List By Label    xpath=//select[@id="BIOMETRIA_COLABORADOR"]  ${VAR}
    Sleep  2s
Preencher o campo Timeout Sessão (Segundos) "${VAR}"
    Input Text  xpath=//input[@id="CNTRLTMPSESSAO"]  ${VAR}
Selecionar a opção "${VAR}" no campo Envio de Comandos On-line
    Execute Javascript  window.scrollTo(0,900)
    Sleep  3s
    Select From List By Label    xpath=//select[@id="ENVIACOMANDOONLINE"]  ${VAR}
Preencher o campo Quantidade de Processos Simultaneos (GerServ) "${VAR}"
    Input Text  xpath=//input[@id="NUMERO_COMANDOS_EXECUCAO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo É obrigatório informar o colaborador que está autorizando o desbloqueio do crachá?
    Select From List By Label    xpath=//select[@id="OBRIGATORIO_AUTORIZADOR_DESBLOQUEIO_CRACHA"]  ${VAR}
Preencher o campo Tempo de Validade da Senha "${VAR}"
    Execute Javascript  window.scrollTo(0,1200)
    Sleep  3s
    Input Text  xpath=//input[@id="PARAMTEMPOVALIDADESENHACODIN"]  ${VAR}
Selecionar a opção "${VAR}" no campo Permitir Cargo Auto-Incremento
    Select From List By Label    xpath=//select[@id="TIPOCODIGOCARGO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Remover Acentuação
    #Scroll Element Into View     xpath=//select[@id="TRATARCARACTERESESPECIAIS"]
    Select From List By Label    xpath=//select[@id="TRATARCARACTERESESPECIAIS"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Motivo Bloqueio de Documentos
    Execute Javascript  window.scrollTo(0,1700)
    Sleep  3s
    Select From List By Label    xpath=//select[@id="MOTIVO_BLOQUEIO_DOCUMENTO"]  ${VAR}
  
Selecionar a opção "${VAR}" no campo Valida Dupla Verificação de Veículos
    #Scroll Element Into View     xpath=//select[@id="CONTROLADUPLAENTRADAVEICULO"]
    Select From List By Label    xpath=//select[@id="CONTROLADUPLAENTRADAVEICULO"]  ${VAR}
    Sleep  2s
Preencher o campo Manter log de (dias) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="MANUTENCAO_LOG"]
    Input Text  xpath=//input[@id="MANUTENCAO_LOG"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Tipo de Geração de Listas
    #Scroll Element Into View     xpath=//select[@id="GERACAOLISTADOSISTEMA"]
    Select From List By Label    xpath=//select[@id="GERACAOLISTADOSISTEMA"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo 6 Credenciais
    #Scroll Element Into View     xpath=//select[@id="6CREDENCIAIS"]
    Select From List By Label    xpath=//select[@id="6CREDENCIAIS"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Obrigatório Autorizador de Desbloqueio
    #Scroll Element Into View     xpath=//select[@id="AUTODESBCRAC"]
    Select From List By Label    xpath=//select[@id="AUTODESBCRAC"]  ${VAR}
    Sleep  2s
Preencher o campo Qtde. Dias de Falta para Bloquear Acesso "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="BLOQDIAS"]
    Input Text  xpath=//input[@id="BLOQDIAS"]  ${VAR}
    Sleep  2s
Marcar a opção OP (Sagem)
    #Scroll Element Into View     xpath=//input[@name="SURICATO_CLIENT_biometria_0"][@value="OP"]
    Click Element  xpath=//input[@name="SURICATO_CLIENT_biometria_0"][@value="OP"]
    Sleep  2s
Marcar a opção OP1_OP4 ( Suprema )
    #Scroll Element Into View     xpath=//input[@name="SURICATO_CLIENT_biometria_1"][@value="OP1_OP4"]
    Click Element  xpath=//input[@name="SURICATO_CLIENT_biometria_1"][@value="OP1_OP4"]
    Sleep  2s
Marcar a opção VENA
    #Scroll Element Into View     xpath=//input[@name="SURICATO_CLIENT_biometria_2"][@value="VENA"]
    Click Element  xpath=//input[@name="SURICATO_CLIENT_biometria_2"][@value="VENA"]
    Sleep  2s
Marcar a opção Gravar 
    #Scroll Element Into View     xpath=//input[@name="SURICATO_CLIENT_smartcard_0"][@value="GRAVAR"]
    Click Element  xpath=//input[@name="SURICATO_CLIENT_smartcard_0"][@value="GRAVAR"]
    Sleep  2s
Marcar a opção Ler
    #Scroll Element Into View     xpath=//input[@name="SURICATO_CLIENT_smartcard_1"][@value="LER"]
    Click Element  xpath=//input[@name="SURICATO_CLIENT_smartcard_1"][@value="LER"]
    Sleep  2s
Marcar a opção Captura Simultânea
    #Scroll Element Into View     xpath=//input[@name="SURICATO_CLIENT_foto_0"][@value="3EM1"]
    Click Element  xpath=//input[@name="SURICATO_CLIENT_foto_0"][@value="3EM1"]
    Sleep  2s
Marcar a opção Face
    #Scroll Element Into View     xpath=//input[@name="SURICATO_CLIENT_foto_1"][@value="FACE"]
    Click Element  xpath=//input[@name="SURICATO_CLIENT_foto_1"][@value="FACE"]
    Sleep  2s
Marcar a opção Frente Doc
    #Scroll Element Into View     xpath=//input[@name="SURICATO_CLIENT_foto_2"][@value="FRENTE"]
    Click Element  xpath=//input[@name="SURICATO_CLIENT_foto_2"][@value="FRENTE"]
    Sleep  2s
Marcar a opção Verso Doc
    #Scroll Element Into View     xpath=//input[@name="SURICATO_CLIENT_foto_3"][@value="VERSO"]
    Click Element  xpath=//input[@name="SURICATO_CLIENT_foto_3"][@value="VERSO"]
    Sleep  2s
Marcar a segunda opção Face
    #Scroll Element Into View     xpath=//input[@name="SURICATO_CLIENT_upload_0"][@value="FACE"]
    Click Element  xpath=//input[@name="SURICATO_CLIENT_upload_0"][@value="FACE"]
    Sleep  2s
Marcar a segunda opção Frente Doc 
    #Scroll Element Into View     xpath=//input[@name="SURICATO_CLIENT_upload_1"][@value="FRENTE"]
    Click Element  xpath=//input[@name="SURICATO_CLIENT_upload_1"][@value="FRENTE"]
    Sleep  2s
Marcar a segunda opção Verso Doc
    #Scroll Element Into View     xpath=//input[@name="SURICATO_CLIENT_upload_2"][@value="VERSO"]
    Click Element  xpath=//input[@name="SURICATO_CLIENT_upload_2"][@value="VERSO"]
    Sleep  2s
Marcar a opção Frente
    #Scroll Element Into View     xpath=//input[@name="SURICATO_CLIENT_scanner_0"][@value="FRENTE_S"]
    Click Element  xpath=//input[@name="SURICATO_CLIENT_scanner_0"][@value="FRENTE_S"]
    Sleep  2s
Marcar a opção Verso
    #Scroll Element Into View     xpath=//input[@name="SURICATO_CLIENT_scanner_1"][@value="VERSO_S"]
    Click Element  xpath=//input[@name="SURICATO_CLIENT_scanner_1"][@value="VERSO_S"]
    Sleep  2s
Selecionar a opção "${VAR}" no campo Pad
    #Scroll Element Into View     xpath=//select[@name="SURICATO_CLIENT_pad"]
    Select From List By Label    xpath=//select[@name="SURICATO_CLIENT_pad"]  ${VAR}
    Sleep  2s
Preencher o campo Porta "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="PARAMTEMPOVALIDADESENHACODIN"]
    Input Text  xpath=//input[@id="PARAMTEMPOVALIDADESENHACODIN"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo SmartcardLF
    #Scroll Element Into View     xpath=//select[@name="SURICATO_CLIENT_smartcardLF"]
    Select From List By Label    xpath=//select[@name="SURICATO_CLIENT_smartcardLF"]  ${VAR}
    Sleep  2s
Marcar a terceira opção Face
    #Scroll Element Into View     xpath=//input[@name="SURICATO_CLIENT_facial_0"][@value="FACE"]
    Click Element  xpath=//input[@name="SURICATO_CLIENT_facial_0"][@value="FACE"]
    Sleep  2s
Selecionar a opção "${VAR}" no campo Utilizar Campos Customizados
    #Scroll Element Into View     xpath=//select[@name="param_PARAMUTILIZACAMPOSCUSTOMIZADOS"]
    Select From List By Label    xpath=//select[@name="param_PARAMUTILIZACAMPOSCUSTOMIZADOS"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Histórico de Cargos
    #Scroll Element Into View     xpath=//select[@name="param_HABILITA_HISTORICO_CARGO"]
    Select From List By Label    xpath=//select[@name="param_HABILITA_HISTORICO_CARGO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Histórico de Centro de Custos
    #Scroll Element Into View     xpath=//select[@id="HABILITA_HISTORICO_CENTRO_CUSTO"]
    Select From List By Label    xpath=//select[@id="HABILITA_HISTORICO_CENTRO_CUSTO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Histórico de Crachás
    #Scroll Element Into View     xpath=//select[@id="HABILITA_HISTORICO_CRACHA"]
    Select From List By Label    xpath=//select[@id="HABILITA_HISTORICO_CRACHA"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Histórico de Escalas
    #Scroll Element Into View     xpath=//select[@id="HABILITA_HISTORICO_ESCALA"]
    Select From List By Label    xpath=//select[@id="HABILITA_HISTORICO_ESCALA"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Histórico de Filial
    #Scroll Element Into View     xpath=//select[@id="HABILITA_HISTORICO_FILIAL"]
    Select From List By Label    xpath=//select[@id="HABILITA_HISTORICO_FILIAL"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Histórico de Organograma
    #Scroll Element Into View     xpath=//select[@id="HABILITA_HISTORICO_LOCAL_ORGANOGRAMA"]
    Select From List By Label    xpath=//select[@id="HABILITA_HISTORICO_LOCAL_ORGANOGRAMA"]  ${VAR}
    Sleep  2s
Preencher o campo E-mail Envio de Notificação de Val. do ASO "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="EMAIL_VALIDADE_ASO"]
    Input Text  xpath=//input[@id="EMAIL_VALIDADE_ASO"]  ${VAR}
    Sleep  2s
Preencher o campo Qtde Dias Para Notificação "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="NOTIFICARVENCIMENTOASO"]
    Input Text  xpath=//input[@id="NOTIFICARVENCIMENTOASO"]  ${VAR}
    Sleep  2s
Preencher o campo E-mail Envio de Notificação de Val. do Treinamento de Segurança "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="EMAIL_VALIDADE_TREINAMENTO_SEGURANCA"]
    Input Text  xpath=//input[@id="EMAIL_VALIDADE_TREINAMENTO_SEGURANCA"]  ${VAR}
    Sleep  2s
Preencher o campo Qtde Dias Para Notificação de Venc. Treinamento "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="NOTIFICARVENCTREINAMENTOSEGURANCA"]
    Input Text  xpath=//input[@id="NOTIFICARVENCTREINAMENTOSEGURANCA"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Atualiza Dados Tb. Acesso Colaborador 
    #Scroll Element Into View     xpath=//select[@id="ATUALIZADADOSTBCOLAB"]
    Select From List By Label    xpath=//select[@id="ATUALIZADADOSTBCOLAB"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Método de Autenticação
    #Scroll Element Into View     xpath=//select[@id="AUTENTICACAO_METODO"]
    Select From List By Label    xpath=//select[@id="AUTENTICACAO_METODO"]  ${VAR}
    Sleep  2s
#Preencher o campo Endereço IP do Servidor LDPA "${VAR}"

#Preencher o campo Porta do Servidor LDPA "${VAR}"

#Preencher o campo Login Administrador "${VAR}"

#Preencher o campo Password Administrador "${VAR}"

#Preencher o campo LDPA Base de Pesquisa DN "${VAR}"

#Preencher o campo LDPA Filtro de Pesquisa "${VAR}"

#Selecionar a opção "${VAR}" no campo LDPA Sincronizar MemberOf

Preencher o campo Avisar Validade da Senha antes (Dias) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="AVISO_VALIDADE_SENHA"]
    Input Text  xpath=//input[@id="AVISO_VALIDADE_SENHA"]  ${VAR}
    Sleep  2s
Preencher o campo Desbloquear Login Em (Minutos) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="DESBLOQUEIO_CONTA"]
    Input Text  xpath=//input[@id="DESBLOQUEIO_CONTA"]  ${VAR}
    Sleep  2s
Preencher o campo Mínimo de Senhas no Histórico "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="HISTORICO_MINIMO_SENHA"]
    Input Text  xpath=//input[@id="HISTORICO_MINIMO_SENHA"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Permitir Reutilizar Senha Anterior
    #Scroll Element Into View     xpath=//select[@id="REUTILIZA_SENHA"]
    Select From List By Label    xpath=//select[@id="REUTILIZA_SENHA"]  ${VAR}
    Sleep  2s
Preencher o campo Bloquear Login Após (Tentativas) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="TENTATIVAS_LOGIN"]
    Input Text  xpath=//input[@id="TENTATIVAS_LOGIN"]  ${VAR}
    Sleep  2s
Preencher o campo Validade Mínima da Senha (Dias) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="VALIDADE_SENHA"]
    Input Text  xpath=//input[@id="VALIDADE_SENHA"]  ${VAR}
    Sleep  2s
Preencher o campo Validade da Senha (Dias) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="CARACTER_SENHA"]
    Input Text  xpath=//input[@id="CARACTER_SENHA"]  ${VAR}
    Sleep  2s
Preencher o campo Símbolos "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="MAXIMO_CARACTERES_IDENTICOS"]
    Input Text  xpath=//input[@id="MAXIMO_CARACTERES_IDENTICOS"]  ${VAR}
    Sleep  2s
Preencher o campo Máximo de caracteres idênticos (Caracteres) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="MAXIMO_CARACTERES_IDENTICOS"]
    Input Text  xpath=//input[@id="MAXIMO_CARACTERES_IDENTICOS"]  ${VAR}
    Sleep  2s
Preencher o campo Mínimo de caracteres não alfabéticos (Caracteres) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="MINIMO_CARACTERES_NAO_ALFA"]
    Input Text  xpath=//input[@id="MINIMO_CARACTERES_NAO_ALFA"]  ${VAR}
    Sleep  2s
Preencher o campo Mínimo de caracteres não presentes na última senha (Caracteres) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="MINIMO_CARACTERES_NAO_ULT_SENHA"]
    Input Text  xpath=//input[@id="MINIMO_CARACTERES_NAO_ULT_SENHA"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Letras em caixa alta (maiúsculo)
    #Scroll Element Into View     xpath=//select[@id="PERMITE_LETRAS"]
    Select From List By Label    xpath=//select[@id="PERMITE_LETRAS"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Letras em caixa baixa (minúsculo)
    #Scroll Element Into View     xpath=//select[@id="PERMITE_LETRAS_CAIXABAIXA"]
    Select From List By Label    xpath=//select[@id="PERMITE_LETRAS_CAIXABAIXA"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Números
    #Scroll Element Into View     xpath=//select[@id="PERMITE_NUMEROS"]
    Select From List By Label    xpath=//select[@id="PERMITE_NUMEROS"]  ${VAR}
    Sleep  2s
Preencher o campo Quantidade Mínima de Dígitos da Senha (Caracteres) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="QTD_CARACTER_SENHA"]
    Input Text  xpath=//input[@id="QTD_CARACTER_SENHA"]  ${VAR}
    Sleep  2s
Preencher o campo Altura da Foto "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="displayALTURA_FOTO"]
    Input Text  xpath=//input[@id="displayALTURA_FOTO"]  ${VAR}
    Sleep  2s
Preencher o campo Largura da Foto "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="displayLARGURA_FOTO"]
    Input Text  xpath=//input[@id="displayLARGURA_FOTO"]  ${VAR}
    Sleep  2s
Preencher o campo Altura da Foto para Importação "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="displayALTURA_FOTO_IMPORTACAO"]
    Input Text  xpath=//input[@id="displayALTURA_FOTO_IMPORTACAO"]  ${VAR}
    Sleep  2s
Preencher o campo Largura da Foto para Importação "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="displayLARGURA_FOTO_IMPORTACAO"]
    Input Text  xpath=//input[@id="displayLARGURA_FOTO_IMPORTACAO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Lançador é Auto Aprovador de Visitas
    #Scroll Element Into View     xpath=//select[@id="AUTORIZARWORKFLOWAPROVADOR"]
    Select From List By Label    xpath=//select[@id="AUTORIZARWORKFLOWAPROVADOR"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Bloquear Visitado Ausente
    #Scroll Element Into View     xpath=//select[@id="BLOQUEAR_VISITADO_AUSENTE"]
    Select From List By Label    xpath=//select[@id="BLOQUEAR_VISITADO_AUSENTE"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Critica se Docto do Visitante for de Empregado
    #Scroll Element Into View     xpath=//select[@id="ENTRADA_VISITANTE_DOCUMENTO"]
    Select From List By Label    xpath=//select[@id="ENTRADA_VISITANTE_DOCUMENTO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Mostrar Veículo na Entrada de Visitante
    #Scroll Element Into View     xpath=//select[@id="ENTRADA_VISITANTE_VEICULO"]
    Select From List By Label    xpath=//select[@id="ENTRADA_VISITANTE_VEICULO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Mostrar Visitado na Entrada de Visitante
    #Scroll Element Into View     xpath=//select[@id="ENTRADA_VISITANTE_VISITADO"]
    Select From List By Label    xpath=//select[@id="ENTRADA_VISITANTE_VISITADO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Utilizar Workflow de Aprovação de Entrada de Visitante
    #Scroll Element Into View     xpath=//select[@id="ENTRADAVISITANTEWORKFLOW"]
    Select From List By Label    xpath=//select[@id="ENTRADAVISITANTEWORKFLOW"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Validar Homônimo
    #Scroll Element Into View     xpath=//select[@id="VISITANTE_PNG_HOMONIMO"]
    Select From List By Label    xpath=//select[@id="VISITANTE_PNG_HOMONIMO"]  ${VAR}
    Sleep  2s
Preencher o campo Faixa de Crachá "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="VISITANTE_CRACHA_AUTO"]
    Input Text  xpath=//input[@id="VISITANTE_CRACHA_AUTO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Empresa Terceira Padrão
    #Scroll Element Into View     xpath=//select[@id="EMPRESA_TERCEIRA_PADRAO"]
    Select From List By Label    xpath=//select[@id="EMPRESA_TERCEIRA_PADRAO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Empresa Padrão (Colaborador)
    #Scroll Element Into View     xpath=//select[@id="ENTRADAVISITANTEEMPRESAPADRAO"]
    Select From List By Label    xpath=//select[@id="ENTRADAVISITANTEEMPRESAPADRAO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Tipo de Colaborador Padrão
    #Scroll Element Into View     xpath=//select[@id="ENTRADAVISITANTETIPOCOLABPADRAO"]
    Select From List By Label    xpath=//select[@id="ENTRADAVISITANTETIPOCOLABPADRAO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Código Permissão Padrão
    #Scroll Element Into View     xpath=//select[@id="GRUPO_ACESSO_PADRAO"]
    Select From List By Label    xpath=//select[@id="GRUPO_ACESSO_PADRAO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Tipo de Visita Padrão
    #Scroll Element Into View     xpath=//select[@id="TIPO_VISITA_PADRAO"]
    Select From List By Label    xpath=//select[@id="TIPO_VISITA_PADRAO"]  ${VAR}
    Sleep  2s
Preencher o campo Intervalo Processamento "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="SURICATO_MONITORAMENTO_INTERVALOPROCESSAMENTO"]
    Input Text  xpath=//input[@id="SURICATO_MONITORAMENTO_INTERVALOPROCESSAMENTO"]  ${VAR}
    Sleep  2s
Preencher o campo Timeout Monitoramento "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="SURICATO_MONITORAMENTO_TIMEOUT"]
    Input Text  xpath=//input[@id="SURICATO_MONITORAMENTO_TIMEOUT"]  ${VAR}
    Sleep  2s
Preencher o campo Tempo Máximo Entre Registros "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="SURICATO_MONITORAMENTO_TIMEOUTENTREREGISTROS"]
    Input Text  xpath=//input[@id="SURICATO_MONITORAMENTO_TIMEOUTENTREREGISTROS"]  ${VAR}
    Sleep  2s
Preencher o campo Time out Monitoramento de Câmeras "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="SURICATO_MONITORAMENTOCAM_TIMEOUT"]
    Input Text  xpath=//input[@id="SURICATO_MONITORAMENTOCAM_TIMEOUT"]  ${VAR}
    Sleep  2s
Preencher o campo Configuração de Largura da Câmera "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="SURICATO_MONITORAMENTOCAM_WIDTH"]
    Input Text  xpath=//input[@id="SURICATO_MONITORAMENTOCAM_WIDTH"]  ${VAR}
    Sleep  2s
Preencher o campo Configuração da Altura da Câmera "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="SURICATO_MONITORAMENTOCAM_HEIGHT"]
    Input Text  xpath=//input[@id="SURICATO_MONITORAMENTOCAM_HEIGHT"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Codin para entrega de EPIs
    #Scroll Element Into View     xpath=//select[@id="CODIGOCODINENTREGAEPI"]
    Select From List By Label    xpath=//select[@id="CODIGOCODINENTREGAEPI"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Utiliza Codin de Beneficios para entrega de EPIs
    #Scroll Element Into View     xpath=//select[@id="EPIUTILIZACODINBENEFICIOS"]
    Select From List By Label    xpath=//select[@id="EPIUTILIZACODINBENEFICIOS"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Envio de Email antes do vencimento
    #Scroll Element Into View     xpath=//select[@id="ENVIO_EMAIL_ANTES_VENCIMENTO_EPI"]
    Select From List By Label    xpath=//select[@id="ENVIO_EMAIL_ANTES_VENCIMENTO_EPI"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Envio de Email após o vencimento
    #Scroll Element Into View     xpath=//select[@id="ENVIO_EMAIL_APOS_VENCIMENTO_EPI"]
    Select From List By Label    xpath=//select[@id="ENVIO_EMAIL_APOS_VENCIMENTO_EPI"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Envio de Email no vencimento
    #Scroll Element Into View     xpath=//select[@id="ENVIO_EMAIL_APOS_VENCIMENTO_EPI"]
    Select From List By Label    xpath=//select[@id="ENVIO_EMAIL_APOS_VENCIMENTO_EPI"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Auto Incremento
    #Scroll Element Into View     xpath=//select[@id="COL1AUTOINCREMENTO"]
    Select From List By Label    xpath=//select[@id="COL1AUTOINCREMENTO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Permissão - Domingo
    #Scroll Element Into View     xpath=//select[@id="COL1PERMDOMINGO"]
    Select From List By Label    xpath=//select[@id="COL1PERMDOMINGO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Permissão - Feriado
    #Scroll Element Into View     xpath=//select[@id="COL1PERMFERIADO"]
    Select From List By Label    xpath=//select[@id="COL1PERMFERIADO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Permissão - Dia da Semana
    #Scroll Element Into View     xpath=//select[@id="COL1PERMNORMAL"]
    Select From List By Label    xpath=//select[@id="COL1PERMNORMAL"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Permissão - Sábado
    #Scroll Element Into View     xpath=//select[@id="COL1PERMSABADO"]
    Select From List By Label    xpath=//select[@id="COL1PERMSABADO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Permissão - Visitante
    #Scroll Element Into View     xpath=//select[@id="COL1PERMVISITANTE"]
    Select From List By Label    xpath=//select[@id="COL1PERMVISITANTE"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no segundo campo Auto Incremento
    #Scroll Element Into View     xpath=//select[@id="COL2AUTOINCREMENTO"]
    Select From List By Label    xpath=//select[@id="COL2AUTOINCREMENTO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no segundo campo Permissão - Domingo
    #Scroll Element Into View     xpath=//select[@id="COL2PERMDOMINGO"]
    Select From List By Label    xpath=//select[@id="COL2PERMDOMINGO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no segundo campo Permissão - Feriado
    #Scroll Element Into View     xpath=//select[@id="COL2PERMFERIADO"]
    Select From List By Label    xpath=//select[@id="COL2PERMFERIADO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no segundo campo Permissão - Dia da Semana
    #Scroll Element Into View     xpath=//select[@id="COL2PERMNORMAL"]
    Select From List By Label    xpath=//select[@id="COL2PERMNORMAL"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no segundo campo Permissão - Sábado
    #Scroll Element Into View     xpath=//select[@id="COL2PERMSABADO"]
    Select From List By Label    xpath=//select[@id="COL2PERMSABADO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no segundo campo Permissão - Visitante
    #Scroll Element Into View     xpath=//select[@id="COL2PERMVISITANTE"]
    Select From List By Label    xpath=//select[@id="COL2PERMVISITANTE"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no terceiro campo Auto Incremento
    #Scroll Element Into View     xpath=//select[@id="COL3AUTOINCREMENTO"]
    Select From List By Label    xpath=//select[@id="COL3AUTOINCREMENTO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no terceiro campo Permissão - Domingo
    #Scroll Element Into View     xpath=//select[@id="COL3PERMDOMINGO"]
    Select From List By Label    xpath=//select[@id="COL3PERMDOMINGO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no terceiro campo Permissão - Feriado
    #Scroll Element Into View     xpath=//select[@id="COL3PERMFERIADO"]
    Select From List By Label    xpath=//select[@id="COL3PERMFERIADO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no terceiro campo Permissão - Dia da Semana
    #Scroll Element Into View     xpath=//select[@id="COL3PERMNORMAL"]
    Select From List By Label    xpath=//select[@id="COL3PERMNORMAL"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no terceiro campo Permissão - Sábado
    #Scroll Element Into View     xpath=//select[@id="COL3PERMSABADO"]
    Select From List By Label    xpath=//select[@id="COL3PERMSABADO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no terceiro campo Permissão - Visitante
    #Scroll Element Into View     xpath=//select[@id="COL3PERMVISITANTE"]
    Select From List By Label    xpath=//select[@id="COL3PERMVISITANTE"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Integração TOTVS
    #Scroll Element Into View     xpath=//select[@id="TOTVS"]
    Select From List By Label    xpath=//select[@id="TOTVS"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Sistema
    #Scroll Element Into View     xpath=//select[@id="TOTVS_SYSTEM"]
    Select From List By Label    xpath=//select[@id="TOTVS_SYSTEM"]  ${VAR}
    Sleep  2s
Preencher o campo URL "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="TOTVS_URL"]
    Input Text  xpath=//input[@id="TOTVS_URL"]  ${VAR}
    Sleep  2s
Preencher o campo Tempo de tolerância antes do acesso da faixa de entrada (minuto) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="TOTVS_FAIXA_INICIO_ANTES"]
    Input Text  xpath=//input[@id="TOTVS_FAIXA_INICIO_ANTES"]  ${VAR}
    Sleep  2s
Preencher o campo Tempo de tolerância depois do acesso da faixa de entrada (minuto) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="TOTVS_FAIXA_FIM_ANTES"]
    Input Text  xpath=//input[@id="TOTVS_FAIXA_FIM_ANTES"]  ${VAR}
    Sleep  2s
Preencher o campo Tempo de tolerância antes do acesso da faixa de saída (minuto) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="TOTVS_FAIXA_INICIO_DEPOIS"]
    Input Text  xpath=//input[@id="TOTVS_FAIXA_INICIO_DEPOIS"]  ${VAR}
    Sleep  2s
Preencher o campo Tempo de tolerância depois do acesso da faixa de saída (minuto) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="TOTVS_FAIXA_FIM_DEPOIS"]
    Input Text  xpath=//input[@id="TOTVS_FAIXA_FIM_DEPOIS"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Organograma Padrão
    #Scroll Element Into View     xpath=//select[@id="TOTVS_CODIORGALOCA_INTEGRACAO_PADRAO"]
    Select From List By Label    xpath=//select[@id="TOTVS_CODIORGALOCA_INTEGRACAO_PADRAO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Local Padrão
    #Scroll Element Into View     xpath=//select[@id="TOTVS_LOCAORGAPAI_INTEGRACAO_PADRAO"]
    Select From List By Label    xpath=//select[@id="TOTVS_LOCAORGAPAI_INTEGRACAO_PADRAO"]  ${VAR}
    Sleep  2s
Preencher o campo Empresa Padrão "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="TOTVS_EMPRESA_INTEGRACAO_PADRAO"]
    Input Text  xpath=//input[@id="TOTVS_EMPRESA_INTEGRACAO_PADRAO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Grupo de Acesso Padrão
    #Scroll Element Into View     xpath=//select[@id="TOTVS_ACESS_GROUP"]
    Select From List By Label    xpath=//select[@id="TOTVS_ACESS_GROUP"]  ${VAR}
    Sleep  2s
Preencher o campo Tipo de Situação Trabalhista Padrão "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="TOTVS_INTEGRACAO_TIPO_SITUACAO"]
    Input Text  xpath=//input[@id="TOTVS_INTEGRACAO_TIPO_SITUACAO"]  ${VAR}
    Sleep  2s
Preencher o campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="TOTVS_ABRANGENCIA_INICIO"]
    Input Text  xpath=//input[@id="TOTVS_ABRANGENCIA_INICIO"]  ${VAR}
    Sleep  2s
Preencher o campo Tempo de Tolerancia antes do acesso da faixa de saida (Minutos) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="TOTVS_ABRANGENCIA_FIM"]
    Input Text  xpath=//input[@id="TOTVS_ABRANGENCIA_FIM"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Turno Reduzido
    #Scroll Element Into View     xpath=//select[@id="TOTVS_SHORT_SHIFT"]
    Select From List By Label    xpath=//select[@id="TOTVS_SHORT_SHIFT"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Tipo de Controle de Refeição
    #Scroll Element Into View     xpath=//select[@id="TOTVSCONTROLEREFEICAO"]
    Select From List By Label    xpath=//select[@id="TOTVSCONTROLEREFEICAO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Controlar Chave Externa Refeitório
    #Scroll Element Into View     xpath=//select[@id="TOTVSEXTERNALKEYREFEITORIO"]
    Select From List By Label    xpath=//select[@id="TOTVSEXTERNALKEYREFEITORIO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Faixa de Acesso Mandatório
    #Scroll Element Into View     xpath=//select[@id="TOTVSHORARIOACESSO"]
    Select From List By Label    xpath=//select[@id="TOTVSHORARIOACESSO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Faixa de Acesso Refeitório Mandatorio
    #Scroll Element Into View     xpath=//select[@id="TOTVSHORARIODEREFEICAOMANDATORIO"]
    Select From List By Label    xpath=//select[@id="TOTVSHORARIODEREFEICAOMANDATORIO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Tag do Início da Escala
    #Scroll Element Into View     xpath=//select[@id="TOTVSINICIOESCALA"]
    Select From List By Label    xpath=//select[@id="TOTVSINICIOESCALA"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Chave Externa
    #Scroll Element Into View     xpath=//select[@id="TOTVSPESQUISAEXTERNALKEY"]
    Select From List By Label    xpath=//select[@id="TOTVSPESQUISAEXTERNALKEY"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Tipo de Tolerância 
    #Scroll Element Into View     xpath=//select[@id="TOTVSTIPOTOLERANCIA"]
    Select From List By Label    xpath=//select[@id="TOTVSTIPOTOLERANCIA"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Tolerância Refeição(Saida)
    #Scroll Element Into View     xpath=//select[@id="TOTVSTOLERANCIAREFEENTRADA"]
    Select From List By Label    xpath=//select[@id="TOTVSTOLERANCIAREFEENTRADA"]  ${VAR}
    Sleep  2s
Preencher o campo Tolerância Refeição(Valor) "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="TOTVSTOLERANCIAREFEENTRADAVALOR"]
    Input Text  xpath=//input[@id="TOTVSTOLERANCIAREFEENTRADAVALOR"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Controle de Refeições Mandatórios no Sistemas 
    #Scroll Element Into View     xpath=//select[@id="CONTROLEREFEICAOMANDATORIO"]
    Select From List By Label    xpath=//select[@id="CONTROLEREFEICAOMANDATORIO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Configuração Padrão de Acesso, Refeição e Biometria
    #Scroll Element Into View     xpath=//select[@id="PARAMETROPADRAOACESSOS"]
    Select From List By Label    xpath=//select[@id="PARAMETROPADRAOACESSOS"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Identificar a pessoa no sistema por biometria - MatchOnServer
    #Scroll Element Into View     xpath=//select[@id="IDENTIFICACAO_POR_BIOMETRIA"]
    Select From List By Label    xpath=//select[@id="IDENTIFICACAO_POR_BIOMETRIA"]  ${VAR}
    Sleep  2s
Preencher o campo Caminho Middleware "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="URLSURICATOMIDDLEWARE"]
    Input Text  xpath=//input[@id="URLSURICATOMIDDLEWARE"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Integração WSG
    #Scroll Element Into View     xpath=//select[@id="WSG"]
    Select From List By Label    xpath=//select[@id="WSG"]  ${VAR}
    Sleep  2s
Preencher o campo Url WSG "${VAR}"
    #Scroll Element Into View     xpath=//input[@id="WSG_WSDL"]
    Input Text  xpath=//input[@id="WSG_WSDL"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Debug WSG
    #Scroll Element Into View     xpath=//select[@id="WSG_DEBUG"]
    Select From List By Label    xpath=//select[@id="WSG_DEBUG"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Liberar Acesso Área de Risco
    #Scroll Element Into View     xpath=//select[@id="USE_RISK_AREA_CONTROLLER"]
    Select From List By Label    xpath=//select[@id="USE_RISK_AREA_CONTROLLER"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Suricato Escola
    #Scroll Element Into View     xpath=//select[@id="ESCOLA"]
    Select From List By Label    xpath=//select[@id="ESCOLA"]  ${VAR}
    Sleep  2s  
Selecionar a opção "${VAR}" no campo Responsável recebe notificação via Sms/E-mail
    #Scroll Element Into View     xpath=//select[@id="NOTIFICACAO_RESPONSAVEL_ALUNO"]
    Select From List By Label    xpath=//select[@id="NOTIFICACAO_RESPONSAVEL_ALUNO"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Colab. Utiliza Transp. Empresa
    #Scroll Element Into View     xpath=//select[@id="PERMI_ACESS_ONIBUS"]
    Select From List By Label    xpath=//select[@id="PERMI_ACESS_ONIBUS"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Mensagem de Codin
    #Scroll Element Into View     xpath=//select[@id="USE_MESSAGE_CONTROLLER"]
    Select From List By Label    xpath=//select[@id="USE_MESSAGE_CONTROLLER"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Utiliza Área Alfandegada LDC 
    #Scroll Element Into View     xpath=//select[@id="UTILIZAAREAALFANDEGADALDC"]
    Select From List By Label    xpath=//select[@id="UTILIZAAREAALFANDEGADALDC"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Utiliza Controle de Validade de Fumaça
    #Scroll Element Into View     xpath=//select[@id="UTILIZACONTROLEFUMACA"]
    Select From List By Label    xpath=//select[@id="UTILIZACONTROLEFUMACA"]  ${VAR}
    Sleep  2s
Selecionar a opção "${VAR}" no campo Estacionamento de Veículo
    #Scroll Element Into View     xpath=//select[@id="VALORTOTALVAGAS"]
    Select From List By Label    xpath=//select[@id="VALORTOTALVAGAS"]  ${VAR}
  