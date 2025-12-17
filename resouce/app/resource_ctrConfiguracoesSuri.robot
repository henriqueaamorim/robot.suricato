*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configurações Gerais Do Sistema

# SCREEN
Acessar Tela Configurações Gerais Do Sistema
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Configurações Gerais Do Sistema
  ${APPNAME}  Set Variable  ctrConfiguracoesSuri
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  Sleep  5s
  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.
Preencher campo TCP "${TCP}"
  ${ELEMENT}  Set Variable  xpath=//*[@id="hidden_bloco_20"]/tbody/tr[7]/td[2]/input

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${TCP}


#VERIFY

Verificar a label Área de Risco
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Área de Risco

Verificar o campo Liberar Acesso Área de Risco
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Liberar Acesso Área de Risco
 	Element Attribute Value Should Be  ${CAMPO}   name   area_risco

Verificar o campo Mensagem no Codin
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/select
	
	Element Should Contain  ${LABEL}   Mensagem no Codin
 	Element Attribute Value Should Be  ${CAMPO}   name   message_controller

Verificar a label Configuração de Exibição de Históricos
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Configuração de Exibição de Históricos

Verificar o campo Histórico de Filial
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Histórico de Filial
 	Element Attribute Value Should Be  ${CAMPO}   name   habilita_histo_filial

Verificar o campo Histórico de Organograma
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/select
	
	Element Should Contain  ${LABEL}   Histórico de Organograma
 	Element Attribute Value Should Be  ${CAMPO}   name   habilita_histo_locaorgam

Verificar o campo Histórico de Cargos
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select
	
	Element Should Contain  ${LABEL}   Histórico de Cargos
 	Element Attribute Value Should Be  ${CAMPO}   name   habilita_histo_cargo

Verificar o campo Histórico de Escalas
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/select
	
	Element Should Contain  ${LABEL}   Histórico de Escalas
 	Element Attribute Value Should Be  ${CAMPO}   name   habilita_histo_escala

Verificar o campo Histórico de Crachás
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/select
	
	Element Should Contain  ${LABEL}   Histórico de Crachás
 	Element Attribute Value Should Be  ${CAMPO}   name   habilita_histo_cracha

Verificar o campo Histórico de Centro de Custos
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/select
	
	Element Should Contain  ${LABEL}   Histórico de Centro de Custos
 	Element Attribute Value Should Be  ${CAMPO}   name   habilita_histo_centro_custo

Verificar a label Configurações Gerais
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Configurações Gerais

Verificar o campo Permitir Cargo Auto-Incremento
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Permitir Cargo Auto-Incremento
 	Element Attribute Value Should Be  ${CAMPO}   name   tipo_codi_autoinc

Verificar o campo Mensagem de Cadas. Biometria
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/select
	
	Element Should Contain  ${LABEL}   Mensagem de Cadas. Biometria
 	Element Attribute Value Should Be  ${CAMPO}   name   msg_habili_biom

Verificar o campo Bloqueio por Tentativas de Biometria Inválida
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}   Bloqueio por Tentativas de Biomentira Inválida
 	Element Attribute Value Should Be  ${CAMPO}   name   bloqtentativasinvalidas

Verificar o campo Utiliza Suricato REP
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/select
	
	Element Should Contain  ${LABEL}   Utiliza Suricato REP
 	Element Attribute Value Should Be  ${CAMPO}   name   utilizasuricatorep

Verificar o campo Utiliza Matriz de Acesso
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/select
	
	Element Should Contain  ${LABEL}   Utiliza Matriz de Acesso
 	Element Attribute Value Should Be  ${CAMPO}   name   utilizamatrizacesso

Verificar o campo Utiliza Área Alfandegada LDC
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/select
	
	Element Should Contain  ${LABEL}   Utiliza Área Alfandegada LDC
 	Element Attribute Value Should Be  ${CAMPO}   name   utilizaareaalfandegadaldc

Verificar o campo Utiliza Controle de Validade de Fumaça
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/select
	
	Element Should Contain  ${LABEL}   Utiliza Controle de Validade de Fumaça
 	Element Attribute Value Should Be  ${CAMPO}   name   utilizacontrolefumaca

Verificar a label Config. Caminho de Gravação da Câmera
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Config. Caminho de Gravação da Câmera

Verificar o campo Configuração de Local para gravação de Fotos
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}   Configuração de Local para gravação de Fotos
 	Element Attribute Value Should Be  ${CAMPO}   name   config_camera

Verificar a label Configurações Gerador
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Configurações Gerador

Verificar o campo Configurações Crachá Manual
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Configurações Crachá Manual
 	Element Attribute Value Should Be  ${CAMPO}   name   pathcrac

Verificar o campo Caminho Gerador Relatórios
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}   Caminho Gerador Relatórios
 	Element Attribute Value Should Be  ${CAMPO}   name   path_cami

Verificar a label Processos Automaticos
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Processos Automaticos

Verificar o campo Sit. Colaborador para Import. Crachá
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Sit. Colababorador para Import. Crachá
 	Element Attribute Value Should Be  ${CAMPO}   name   verificarsituafasdemitido

Verificar o campo Atualiza Dados Tb. Acesso Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/select
	
	Element Should Contain  ${LABEL}   Atualiza Dados Tb. Acesso Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   atualizadadostbcolab

Verificar o campo N. Maximo Tentativas de Carga
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}   N. Maximo Tentativas de Carga
 	Element Attribute Value Should Be  ${CAMPO}   name   max_tentativa_carga

Verificar a label Controle de Documentos
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[7]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Controle de Documentos

Verificar o campo Motivo Bloqueio de Documentos
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[7]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[7]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Motivo Bloqueio de Documentos
 	Element Attribute Value Should Be  ${CAMPO}   name   motivobloquiodocumento

Verificar a label Controle Linhas de Ônibus
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[8]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Controle Linhas de Ônibus

Verificar o campo Colab. Utiliza Transp. Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[8]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[8]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Colab. Utiliza Transp. Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   permi_acess_onibus

Verificar a label Permissão Acesso Veiculos
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[9]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Permissão Acesso Veiculos

Verificar o campo Time out Monitoramento de Câmeras
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[9]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[9]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}   Time out Monitoramento de Câmeras
 	Element Attribute Value Should Be  ${CAMPO}   name   monitoramento_cam

Verificar o campo Configuração de Largura da Câmera
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[9]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[9]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}   Configuração de Largura da Câmera
 	Element Attribute Value Should Be  ${CAMPO}   name   width_cam

Verificar o campo Configuração da Altura da Câmera
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[9]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[9]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}   Configuração da Altura da Câmera
 	Element Attribute Value Should Be  ${CAMPO}   name   height_cam

Verificar a label Timeout Monitoramento de Câmeras
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[10]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Timeout Monitoramento de Câmeras

Verificar o campo Qtde Dias para Notificação ASO
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[10]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[10]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}   Qtde Dias Para Notificação ASO
 	Element Attribute Value Should Be  ${CAMPO}   name   notificaraso

Verificar o campo Qtde Dias Para Notificação de Venc. Treinamento
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[10]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[10]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}   Qtde Dias Para Notificação de Venc. Treinamento
 	Element Attribute Value Should Be  ${CAMPO}   name   notificartreinamento

Verificar o campo E-mail Envio de Notificação de Val. do ASO
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[10]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[10]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   E-mail Envio de Notificação de Val. do ASO
 	Element Attribute Value Should Be  ${CAMPO}   name   emailvaliaso

Verificar o campo E-mail Envio de Notificação de Val. do Treinamento de Segurança
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[10]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[10]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   E-mail Envio de Notificação de Val. do Treinamento de Segurança
 	Element Attribute Value Should Be  ${CAMPO}   name   emailvalitreinsegu

Verificar o campo Manter log de (dias)
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[10]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[10]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}   Manter log de (dias)
 	Element Attribute Value Should Be  ${CAMPO}   name   log_manutencao

Verificar a label Notificações - Envio de E-mail
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[11]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Notificações - Envio de E-mail

Verificar o campo Quantidade de Acessos
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[11]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[11]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}   Quantidade de Acessos
 	Element Attribute Value Should Be  ${CAMPO}   name  numquantidadeacessos 

Verificar o campo Tempo (em segundos) para Ativação do Alarme
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[11]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[11]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}   Tempo (em segundos) para Ativação do Alarme
 	Element Attribute Value Should Be  ${CAMPO}   name   numtempo

Verificar o campo Qualidade Mínima de Captura de Biometria
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[11]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[11]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}   Qualidade Mínima de Captura de Biometria
 	Element Attribute Value Should Be  ${CAMPO}   name   qualiminibiom

Verificar o campo Valida Dupla Verificação de Veículos
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[11]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[11]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/select
	
	Element Should Contain  ${LABEL}   Valida Dupla Verificação de Veículos
 	Element Attribute Value Should Be  ${CAMPO}   name   duplentrveic

Verificar o campo Baixa de Veiculos para Visitantes
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[11]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[11]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/select
	
	Element Should Contain  ${LABEL}   Baixa de Veiculos para Visitantes
 	Element Attribute Value Should Be  ${CAMPO}   name   baixaveiculovisitante

Verificar a label Acesso com Senha
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[12]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Acesso com Senha

Verificar o campo Modelo Codin
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[12]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[12]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Modelo Codin
 	Element Attribute Value Should Be  ${CAMPO}   name   codimodecole[]

Verificar o campo Tempo de Validade da Senha
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[12]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[12]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}   Tempo de Validade da Senha
 	Element Attribute Value Should Be  ${CAMPO}   name   validadesenhacodin

Verificar a label Suricato Escola
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Suricato Escola

Verificar o campo Suricato Escola
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Suricato Escola
 	Element Attribute Value Should Be  ${CAMPO}   name   suriescola

Verificar o campo Responsável recebe notificação via Sms/E-mail
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[13]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/select
	
	Element Should Contain  ${LABEL}   Responsável recebe notificação via Sms/E-mail
 	Element Attribute Value Should Be  ${CAMPO}   name   notificarresponsavel  

Verificar a label Campos Customizados
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[14]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Campos Customizados

Verificar o campo Utilizar Campos Customizados
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[14]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[14]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Utilizar Campos Customizados
 	Element Attribute Value Should Be  ${CAMPO}   name   campos_custom

Verificar o campo Cor para Destaque
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[14]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[14]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}   Cor para Destaque
 	Element Attribute Value Should Be  ${CAMPO}   name   cordestacar

Verificar a label Config. Monitoramento Cor Status
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[15]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Config. Monitoramento Cor Status

Verificar o campo Status On
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[15]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[15]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}   Status On
 	Element Attribute Value Should Be  ${CAMPO}   name   cor_status_on

Verificar o campo Status Off
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[15]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[15]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}   Status Off
 	Element Attribute Value Should Be  ${CAMPO}   name   cor_status_off

Verificar o campo Status Desativado
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[15]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[15]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}   Status Desativado
 	Element Attribute Value Should Be  ${CAMPO}   name   cor_status_desativado

Verificar a label Suricato Techboard
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[16]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Suricato Techboard

Verificar o campo Endereço do Servidor
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[16]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[16]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}   Endereço do Servidor
 	Element Attribute Value Should Be  ${CAMPO}   name   techboardmiddlewarehost

Verificar o campo Porta do Servidor
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[16]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[16]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}   Porta do Servidor
 	Element Attribute Value Should Be  ${CAMPO}   name   techboardmiddlewareport

Verificar a label Controle de Fechamento de Agência
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[16]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Suricato Techboard

Verificar o campo Timeout(min) Antes Fechamento
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[17]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[17]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}   Timeout(min) Antes Fechamento
 	Element Attribute Value Should Be  ${CAMPO}   name   suricatobanksaidaantes

Verificar o campo Timeout(min) Depois Fechamento
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[17]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[17]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}   Timeout(min) Depois Fechamento
 	Element Attribute Value Should Be  ${CAMPO}   name   suricatobanksaidadepois

Verificar a label Período Permitido de Carga de Biometria Automático
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[18]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Período Permitido de Carga de Biometria Automático

Verificar o campo Hora Inicial
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[18]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[18]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}   Hora Inicial
 	Element Attribute Value Should Be  ${CAMPO}   name   horainicioger

Verificar o campo Hora Final
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[18]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[18]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}   Hora Final
 	Element Attribute Value Should Be  ${CAMPO}   name   horafimger

Verificar a label Configurações do Middleware
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[19]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Configurações do Middleware

Verificar o campo Utiliza Middleware
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[19]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[19]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Utiliza Middleware
 	Element Attribute Value Should Be  ${CAMPO}   name   utilizamiddleware

Verificar o campo Caminho Middleware
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[19]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[19]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}   Caminho Middleware
 	Element Attribute Value Should Be  ${CAMPO}   name   urlmiddleware

Verificar a label WebService Guardian
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[20]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   WebService Guardian

Verificar o campo Integração WSG
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[20]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[20]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Integração WSG
 	Element Attribute Value Should Be  ${CAMPO}   name   wsg

Verificar a label Tipo de Autenticação
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Tipo de Autenticação

Verificar o campo Biometria
	${LABEL}   		 Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CHECKBOX1}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/input
	${CHECKBOX2}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[2]/input
	${CHECKBOX3}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[3]/input
	
	Element Should Contain  ${LABEL}   Biometria
 	Element Attribute Value Should Be  ${CHECKBOX1}   name   suricatoclientbiometria[0]
	Element Attribute Value Should Be  ${CHECKBOX2}   name   suricatoclientbiometria[1]
	Element Attribute Value Should Be  ${CHECKBOX3}   name   suricatoclientbiometria[2]

Verificar o campo Smartcard
	${LABEL}   		 Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CHECKBOX1}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/input
	${CHECKBOX2}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[2]/input
	
	Element Should Contain  ${LABEL}   Smartcard
 	Element Attribute Value Should Be  ${CHECKBOX1}   name   suricatoclientsmartcard[0]
	Element Attribute Value Should Be  ${CHECKBOX2}   name   suricatoclientsmartcard[1]

Verificar o campo Foto
	${LABEL}   		 Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CHECKBOX1}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/input
	${CHECKBOX2}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[2]/input
	${CHECKBOX3}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[3]/input
	${CHECKBOX4}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[4]/input
	
	Element Should Contain  ${LABEL}   Foto
 	Element Attribute Value Should Be  ${CHECKBOX1}   name   suricatoclientfoto[0]
	Element Attribute Value Should Be  ${CHECKBOX2}   name   suricatoclientfoto[1]
	Element Attribute Value Should Be  ${CHECKBOX3}   name   suricatoclientfoto[2]
	Element Attribute Value Should Be  ${CHECKBOX4}   name   suricatoclientfoto[3]

Verificar o campo Scanner
	${LABEL}       Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CHECKBOX1}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/input
	${CHECKBOX2}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[2]/input
	
	Element Should Contain  ${LABEL}   Scanner
 	Element Attribute Value Should Be  ${CHECKBOX1}   name   suricatoclientscanner[0]
	Element Attribute Value Should Be  ${CHECKBOX2}   name   suricatoclientscanner[1]

Verificar o campo Pad Assinatura
	${LABEL}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Pad Assinatura
 	Element Attribute Value Should Be  ${CHECKBOX}   name   suricatoclientpad

Verificar o campo Porta TCP
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}   Porta TCP
 	Element Attribute Value Should Be  ${CAMPO}   name   suricatoclientporta

Verificar o campo Tipo de leitura de smartcard
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[21]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/select
	
	Element Should Contain  ${LABEL}   Tipo de leitura de smartcard
 	Element Attribute Value Should Be  ${CAMPO}   name   suricatoclienttiposmart

Verificar a label Tipo de Gravação de Listas
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[22]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Tipo de Gravação de Listas

Verificar o campo Tipo de Geração de Listas
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[22]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[22]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Tipo de Geração de Listas
 	Element Attribute Value Should Be  ${CAMPO}   name   tipogeracaolistas

Verificar a segunda label Tipo de Gravação de Listas
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[23]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Tipo de Gravação de Listas

Verificar o campo Método de Autenticação 
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[23]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[23]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Método de Autenticação 
 	Element Attribute Value Should Be  ${CAMPO}   name   auten_metodo



#FIELD
Selecionar uma opção no campo Liberar Acesso Área de Risco "${LIBERAR_ACESSO_ÁREA_DE_RISCO}"
	Select From List By Label  xpath=//*[@name="area_risco"]  ${LIBERAR_ACESSO_ÁREA_DE_RISCO}

Selecionar uma opção no campo Mensagem no Codin "${MENSAGEM_NO_CODIN}"
	Select From List By Label  xpath=//*[@name="message_controller"]  ${MENSAGEM_NO_CODIN}

Selecionar uma opção no campo Histórico de Filial "${HISTÓRICO_DE_FILIAL}"
	Select From List By Label  xpath=//*[@name="habilita_histo_filial"]  ${HISTÓRICO_DE_FILIAL}

Selecionar uma opção no campo Histórico de Organograma "${HISTÓRICO_DE_ORGANOGRAMA}"
	Select From List By Label  xpath=//*[@name="habilita_histo_locaorgam"]  ${HISTÓRICO_DE_ORGANOGRAMA}

Selecionar uma opção no campo Histórico de Cargos "${HISTÓRICO_DE_CARGOS}"
	Select From List By Label  xpath=//*[@name="habilita_histo_cargo"]  ${HISTÓRICO_DE_CARGOS}

Selecionar uma opção no campo Histórico de Escalas "${HISTÓRICO_DE_ESCALAS}"
	Select From List By Label  xpath=//*[@name="habilita_histo_escala"]  ${HISTÓRICO_DE_ESCALAS}

Selecionar uma opção no campo Histórico de Crachás "${HISTÓRICO_DE_CRACHÁS}"
	Select From List By Label  xpath=//*[@name="habilita_histo_cracha"]  ${HISTÓRICO_DE_CRACHÁS}

Selecionar uma opção no campo Histórico de Centro de Custos "${HISTÓRICO_DE_CENTRO_DE_CUSTOS}"
	Select From List By Label  xpath=//*[@name="habilita_histo_centro_custo"]  ${HISTÓRICO_DE_CENTRO_DE_CUSTOS}

Selecionar uma opção no campo Permitir Cargo Auto-Incremento "${PERMITIR_CARGO_AUTO-INCREMENTO}"
	Select From List By Label  xpath=//*[@name="tipo_codi_autoinc"]  ${PERMITIR_CARGO_AUTO-INCREMENTO}

Selecionar uma opção no campo Mensagem de Cadas. Biometria "${MENSAGEM_DE_CADAS._BIOMETRIA}"
	Select From List By Label  xpath=//*[@name="msg_habili_biom"]  ${MENSAGEM_DE_CADAS._BIOMETRIA}

Preencher o campo Bloqueio por Tentativas de Biometria Inválida "${BLOQUEIO_POR_TENTATIVAS_DE_BIOMETRIA_INVÁLIDA}"
	Input Text  xpath=//*[@name="bloqtentativasinvalidas"][@type="text"]  ${BLOQUEIO_POR_TENTATIVAS_DE_BIOMETRIA_INVÁLIDA}

Selecionar uma opção no campo Utiliza Suricato REP "${UTILIZA_SURICATO_REP}"
	Select From List By Label  xpath=//*[@name="utilizasuricatorep"]  ${UTILIZA_SURICATO_REP}

Selecionar uma opção no campo Utiliza Matriz de Acesso "${UTILIZA_MATRIZ_DE_ACESSO}"
	Select From List By Label  xpath=//*[@name="utilizamatrizacesso"]  ${UTILIZA_MATRIZ_DE_ACESSO}

Selecionar uma opção no campo Utiliza Área Alfandegada LDC "${UTILIZA_ÁREA_ALFANDEGADA_LDC}"
	Select From List By Label  xpath=//*[@name="utilizaareaalfandegadaldc"]  ${UTILIZA_ÁREA_ALFANDEGADA_LDC}

Selecionar uma opção no campo Utiliza Controle de Validade de Fumaça "${UTILIZA_CONTROLE_DE_VALIDADE_DE_FUMAÇA}"
	Select From List By Label  xpath=//*[@name="utilizacontrolefumaca"]  ${UTILIZA_CONTROLE_DE_VALIDADE_DE_FUMAÇA}

Preencher o campo Configuração de Local para Gravação de Fotos "${CONFIGURAÇÃO_DE_LOCAL_PARA_GRAVAÇÃO_DE_FOTOS}"
	Input Text  xpath=//*[@name="config_camera"][@type="text"]  ${CONFIGURAÇÃO_DE_LOCAL_PARA_GRAVAÇÃO_DE_FOTOS}

Selecionar uma opção no campo Configurações Crachá Manual "${CONFIGURAÇÕES_CRACHÁ_MANUAL}"
	Select From List By Label  xpath=//*[@name="pathcrac"]  ${CONFIGURAÇÕES_CRACHÁ_MANUAL}

Preencher o campo Caminho Gerador Relatórios "${CAMINHO_GERADOR_RELATÓRIOS}"
	Input Text  xpath=//*[@name="path_cami"][@type="text"]  ${CAMINHO_GERADOR_RELATÓRIOS}

Selecionar uma opção no campo Sit. Colaborador para Import. Crachá "${SIT._COLABORADOR_PARA_IMPORT._CRACHÁ}"
	Select From List By Label  xpath=//*[@name="verificarsituafasdemitido"]  ${SIT._COLABORADOR_PARA_IMPORT._CRACHÁ}

Selecionar uma opção no campo Atualiza Dados Tb. Acesso Colaborador "${ATUALIZA_DADOS_TB._ACESSO_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="atualizadadostbcolab"]  ${ATUALIZA_DADOS_TB._ACESSO_COLABORADOR}

Preencher o campo N. Maximo Tentativas de Carga "${N._MAXIMO_TENTATIVAS_DE_CARGA}"
	Input Text  xpath=//*[@name="max_tentativa_carga"][@type="text"]  ${N._MAXIMO_TENTATIVAS_DE_CARGA}

Selecionar uma opção no campo Motivo Bloqueio de Documentos "${MOTIVO_BLOQUEIO_DE_DOCUMENTOS}"
	Select From List By Label  xpath=//*[@name="motivobloquiodocumento"]  ${MOTIVO_BLOQUEIO_DE_DOCUMENTOS}

Selecionar uma opção no campo Colab. Utiliza Transp. Empresa "${COLAB._UTILIZA_TRANSP._EMPRESA}"
	Select From List By Label  xpath=//*[@name="permi_acess_onibus"]  ${COLAB._UTILIZA_TRANSP._EMPRESA}

Preencher o campo Time out Monitoramento de Câmeras "${TIME_OUT_MONITORAMENTO_DE_CÂMERAS}"
	Input Text  xpath=//*[@name="monitoramento_cam"][@type="text"]  ${TIME_OUT_MONITORAMENTO_DE_CÂMERAS}

Preencher o campo Condiguração de Largura da Câmera "${CONDIGURAÇÃO_DE_LARGURA_DA_CÂMERA}"
	Input Text  xpath=//*[@name="width_cam"][@type="text"]  ${CONDIGURAÇÃO_DE_LARGURA_DA_CÂMERA}

Preencher o campo Configurações da Altura da Câmera "${CONFIGURAÇÕES_DA_ALTURA_DA_CÂMERA}"
	Input Text  xpath=//*[@name="height_cam"][@type="text"]  ${CONFIGURAÇÕES_DA_ALTURA_DA_CÂMERA}

Preencher o campo Qtde Dias Para Notificação ASO "${QTDE_DIAS_PARA_NOTIFICAÇÃO_ASO}"
	Input Text  xpath=//*[@name="notificaraso"][@type="text"]  ${QTDE_DIAS_PARA_NOTIFICAÇÃO_ASO}

Preencher o campo Qtde Dias Para Notificações de Venc. Treinamento "${QTDE_DIAS_PARA_NOTIFICAÇÕES_DE_VENC._TREINAMENTO}"
	Input Text  xpath=//*[@name="notificartreinamento"][@type="text"]  ${QTDE_DIAS_PARA_NOTIFICAÇÕES_DE_VENC._TREINAMENTO}

Preencher o campo E-mail Envio de Notificação de Val. do ASO "${E-MAIL_ENVIO_DE_NOTIFICAÇÃO_DE_VAL._DO_ASO}"
	Input Text  xpath=//*[@name="emailvaliaso"][@type="text"]  ${E-MAIL_ENVIO_DE_NOTIFICAÇÃO_DE_VAL._DO_ASO}

Preencher o campo E-mail Envio de Notificação de Val. do Treinamento de Segurança "${E-MAIL_ENVIO_DE_NOTIFICAÇÃO_DE_VAL._DO_TREINAMENTO_DE_SEGURANÇA}"
	Input Text  xpath=//*[@name="emailvalitreinsegu"][@type="text"]  ${E-MAIL_ENVIO_DE_NOTIFICAÇÃO_DE_VAL._DO_TREINAMENTO_DE_SEGURANÇA}

Preencher o campo Manter log de (dias) "${MANTER_LOG_DE_(DIAS)}"
	Input Text  xpath=//*[@name="log_manutencao"][@type="text"]  ${MANTER_LOG_DE_(DIAS)}

Preencher o campo Quantidade de Acessos "${QUANTIDADE_DE_ACESSOS}"
	Input Text  xpath=//*[@name="numquantidadeacessos"][@type="text"]  ${QUANTIDADE_DE_ACESSOS}

Preencher o campo Tempo (em segundos) para Ativação do Alarme "${TEMPO_(EM_SEGUNDOS)_PARA_ATIVAÇÃO_DO_ALARME}"
	Input Text  xpath=//*[@name="numtempo"][@type="text"]  ${TEMPO_(EM_SEGUNDOS)_PARA_ATIVAÇÃO_DO_ALARME}

Preencher o campo Qualidade Mínima de Captura de Biometria "${QUALIDADE_MÍNIMA_DE_CAPTURA_DE_BIOMETRIA}"
	Input Text  xpath=//*[@name="qualiminibiom"][@type="text"]  ${QUALIDADE_MÍNIMA_DE_CAPTURA_DE_BIOMETRIA}

Selecionar uma opção no campo Valida Dupla Verificação de Veículos "${VALIDA_DUPLA_VERIFICAÇÃO_DE_VEÍCULOS}"
	Select From List By Label  xpath=//*[@name="duplentrveic"]  ${VALIDA_DUPLA_VERIFICAÇÃO_DE_VEÍCULOS}

Selecionar uma opção no campo Baixa de Veiculos para Visitantes "${BAIXA_DE_VEICULOS_PARA_VISITANTES}"
	Select From List By Label  xpath=//*[@name="baixaveiculovisitante"]  ${BAIXA_DE_VEICULOS_PARA_VISITANTES}

Selecionar uma opção no campo Modelo Codin "${MODELO_CODIN}"
	Select From List By Label  xpath=//*[@name="codimodecole[]"]  ${MODELO_CODIN}

Preencher o campo Tempo de Validade da Senha "${TEMPO_DE_VALIDADE_DA_SENHA}"
	Input Text  xpath=//*[@name="validadesenhacodin"][@type="text"]  ${TEMPO_DE_VALIDADE_DA_SENHA}

Selecionar uma opção no campo Suricato Escola "${SURICATO_ESCOLA}"
	Select From List By Label  xpath=//*[@name="suriescola"]  ${SURICATO_ESCOLA}

Selecionar uma opção no campo Responsável recebe notificação via Sms/E-mail "${RESPONSÁVEL_RECEBE_NOTIFICAÇÃO_VIA_SMS/E-MAIL}"
	Select From List By Label  xpath=//*[@name="notificarresponsavel"]  ${RESPONSÁVEL_RECEBE_NOTIFICAÇÃO_VIA_SMS/E-MAIL}

Selecionar uma opção no campo Utilizar Campos Customizados "${UTILIZAR_CAMPOS_CUSTOMIZADOS}"
	Select From List By Label  xpath=//*[@name="campos_custom"]  ${UTILIZAR_CAMPOS_CUSTOMIZADOS}

Preencher o campo Cor para Destaque "${COR_PARA_DESTAQUE}"
	Input Text  xpath=//*[@name="cordestacar"][@type="text"]  ${COR_PARA_DESTAQUE}

Preencher o campo Status On "${STATUS_ON}"
	Input Text  xpath=//*[@name="cor_status_on"][@type="text"]  ${STATUS_ON}

Preencher o campo Status Off "${STATUS_OFF}"
	Input Text  xpath=//*[@name="cor_status_off"][@type="text"]  ${STATUS_OFF}

Preencher o campo Status Desativado "${STATUS_DESATIVADO}"
	Input Text  xpath=//*[@name="cor_status_desativado"][@type="text"]  ${STATUS_DESATIVADO}

Preencher o campo Endereço do Servidor "${ENDEREÇO_DO_SERVIDOR}"
	Input Text  xpath=//*[@name="techboardmiddlewarehost"][@type="text"]  ${ENDEREÇO_DO_SERVIDOR}

Preencher o campo Porta do Servidor "${PORTA_DO_SERVIDOR}"
	Input Text  xpath=//*[@name="techboardmiddlewareport"][@type="text"]  ${PORTA_DO_SERVIDOR}

Preencher o campo Timeout(min) Antes Fechamento "${TIMEOUT(MIN)_ANTES_FECHAMENTO}"
	Input Text  xpath=//*[@name="suricatobanksaidaantes"][@type="text"]  ${TIMEOUT(MIN)_ANTES_FECHAMENTO}

Preencher o campo Timeout(min) Depois Fechamento "${TIMEOUT(MIN)_DEPOIS_FECHAMENTO}"
	Input Text  xpath=//*[@name="suricatobanksaidadepois"][@type="text"]  ${TIMEOUT(MIN)_DEPOIS_FECHAMENTO}

Preencher o campo Hora Inicial "${HORA}"
	Input Text  xpath=//*[@name="horainicioger"][@type="text"]  ${HORA}

Preencher o campo Hora Final "${HORA}"
	Input Text  xpath=//*[@name="horafimger"][@type="text"]  ${HORA}

Selecionar uma opção no campo Utiliza Middleware "${UTILIZA_MIDDLEWARE}"
	Select From List By Label  xpath=//*[@name="utilizamiddleware"]  ${UTILIZA_MIDDLEWARE}

Preencher o campo Caminho Middleware "${CAMINHO_MIDDLEWARE}"
	Input Text  xpath=//*[@name="urlmiddleware"][@type="text"]  ${CAMINHO_MIDDLEWARE}

Selecionar uma opção no campo Integração WSG "${INTEGRAÇÃO_WSG}"
	Select From List By Label  xpath=//*[@name="wsg"]  ${INTEGRAÇÃO_WSG}

Selecionar a opção Pad Assinatura
	Click Element  xpath=//*[@name="suricatoclientpad"]

Preencher o campo Porta TCP "${PORTA_TCP}"
	Input Text  xpath=//*[@name="suricatoclientporta"][@type="text"]  ${PORTA_TCP}

Selecionar uma opção no campo Tipo de leitura de smartcard "${TIPO_DE_LEITURA_DE_SMARTCARD}"
	Select From List By Label  xpath=//*[@name="suricatoclienttiposmart"]  ${TIPO_DE_LEITURA_DE_SMARTCARD}

Selecionar uma opção no campo Tipo de Geração de Listas "${TIPO_DE_GERAÇÃO_DE_LISTAS}"
	Select From List By Label  xpath=//*[@name="tipogeracaolistas"]  ${TIPO_DE_GERAÇÃO_DE_LISTAS}

