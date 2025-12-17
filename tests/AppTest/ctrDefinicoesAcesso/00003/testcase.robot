*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrDefinicoesAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Definições de Acesso.

*** Test Cases ***

Testcase: Preencher todos os campos na tela Definições de Acesso
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Crachá
  Então devo visualizar a tela: Definições de Acesso
  E preencher o campo Qtde. Dias de Falta para Bloquear Acesso "20"
  E preencher o campo Código Motivo de Bloqueio Padrão "2000"
  E preencher o campo Altura da Foto "300"
  E preencher o campo Largura da Foto "200"
  E preencher o campo Altura da Foto para Importação "300"
  E preencher o campo Largura da Foto para Importação "200"
  E selecionar uma opção no campo Tipo Biometria Colaborador "OP1/OP4"
  E preencher o campo Quantidade de Processos Simultaneos (GerServ) "3"
  E preencher o campo Timeout Sessão (Segundos) "3000"
  E selecionar a opção no campo Estacionamento de Veículo "Sim"
  E selecionar a opção no campo Coleta de Templates Codin Vena "Somente Padrão"
  E selecionar a opção no campo Tipo de Crachá Para Vínculo do Template "Lógico e Físico"
  E preencher o campo Intervalo de Processamento "20000"
  E preencher o campo Tempo Máximo entre Registros "2000"
  E preencher o campo Timeout Monitoramento "50000"
  E selecionar a opção Obrigatório Autorizador de Desbloqueio
  E selecionar a opção Leitora de Barras Serial 
  E selecionar a opção Bloqueia SmartCard por Serial
  E selecionar a opção Captura de Fotos Simultâneas
  E selecionar a opção Utiliza ReP
  E selecionar a opção Envio de Comandos On Line
  E selecionar a opção Crachás Customizados
  E selecionar a opção Utiliza Biometria sem Validação de Crachá
  E selecionar a opção Utiliza Leitora Codin Vena 
  E selecionar a opção Controle de Multi Acesso                   

*** Keywords ***
Dado que eu acesse o menu: Configurações | Crachá
  resource_mnu.Clicar No Menu Configurações | Crachá

Então devo visualizar a tela: Definições de Acesso
  resource_ctrDefinicoesAcesso.Acessar Tela Definições de Acesso

E preencher o campo Qtde. Dias de Falta para Bloquear Acesso "${QTDE_DIAS_DE_FALTA_PARA_BLOQUEAR_ACESSO}"
  resource_ctrDefinicoesAcesso.Preencher o campo Qtde. Dias de Falta para Bloquear Acesso "${QTDE_DIAS_DE_FALTA_PARA_BLOQUEAR_ACESSO}"

E preencher o campo Código Motivo de Bloqueio Padrão "${CÓDIGO_MOTIVO_DE_BLOQUEIO_PADRÃO}"
  resource_ctrDefinicoesAcesso.Preencher o campo Código Motivo de Bloqueio Padrão "${CÓDIGO_MOTIVO_DE_BLOQUEIO_PADRÃO}"

E preencher o campo Altura da Foto "${ALTURA_DA_FOTO}"
  resource_ctrDefinicoesAcesso.Preencher o campo Altura da Foto "${ALTURA_DA_FOTO}"

E preencher o campo Largura da Foto "${LARGURA_DA_FOTO}"
  resource_ctrDefinicoesAcesso.Preencher o campo Largura da Foto "${LARGURA_DA_FOTO}"

E preencher o campo Altura da Foto para Importação "${ALTURA_DA_FOTO_PARA_IMPORTAÇÃO}"
  resource_ctrDefinicoesAcesso.Preencher o campo Altura da Foto para Importação "${ALTURA_DA_FOTO_PARA_IMPORTAÇÃO}"

E preencher o campo Largura da Foto para Importação "${LARGURA_DA_FOTO_PARA_IMPORTAÇÃO}"
  resource_ctrDefinicoesAcesso.Preencher o campo Largura da Foto para Importação "${LARGURA_DA_FOTO_PARA_IMPORTAÇÃO}"

E selecionar uma opção no campo Tipo Biometria Colaborador "${TIPO_BIOMETRIA_COLABORADOR}"
  resource_ctrDefinicoesAcesso.Selecionar uma opção no campo Tipo Biometria Colaborador "${TIPO_BIOMETRIA_COLABORADOR}"

E preencher o campo Quantidade de Processos Simultaneos (GerServ) "${QUANTIDADE_DE_PROCESSOS_SIMULTANEOS_(GERSERV)}"
  resource_ctrDefinicoesAcesso.Preencher o campo Quantidade de Processos Simultaneos (GerServ) "${QUANTIDADE_DE_PROCESSOS_SIMULTANEOS_(GERSERV)}"

E preencher o campo Timeout Sessão (Segundos) "${TIMEOUT_SESSÃO_(SEGUNDOS)}"
  resource_ctrDefinicoesAcesso.Preencher o campo Timeout Sessão (Segundos) "${TIMEOUT_SESSÃO_(SEGUNDOS)}"

E selecionar a opção no campo Estacionamento de Veículo "${ESTACIONAMENTO_DE_VEÍCULO}"
  resource_ctrDefinicoesAcesso.Selecionar a opção no campo Estacionamento de Veículo "${ESTACIONAMENTO_DE_VEÍCULO}"

E selecionar a opção no campo Coleta de Templates Codin Vena "${COLETA_DE_TEMPLATES_CODIN_VENA}"
  resource_ctrDefinicoesAcesso.Selecionar a opção no campo Coleta de Templates Codin Vena "${COLETA_DE_TEMPLATES_CODIN_VENA}"

E selecionar a opção no campo Tipo de Crachá Para Vínculo do Template "${TIPO_DE_CRACHÁ_PARA_VÍNCULO_DO_TEMPLATE}"
  resource_ctrDefinicoesAcesso.Selecionar a opção no campo Tipo de Crachá Para Vínculo do Template "${TIPO_DE_CRACHÁ_PARA_VÍNCULO_DO_TEMPLATE}"

E preencher o campo Intervalo de Processamento "${INTERVALO_DE_PROCESSAMENTO}"
  resource_ctrDefinicoesAcesso.Preencher o campo Intervalo de Processamento "${INTERVALO_DE_PROCESSAMENTO}"

E preencher o campo Tempo Máximo entre Registros "${TEMPO_MÁXIMO_ENTRE_REGISTROS}"
  resource_ctrDefinicoesAcesso.Preencher o campo Tempo Máximo entre Registros "${TEMPO_MÁXIMO_ENTRE_REGISTROS}"

E preencher o campo Timeout Monitoramento "${TIMEOUT_MONITORAMENTO}"
  resource_ctrDefinicoesAcesso.Preencher o campo Timeout Monitoramento "${TIMEOUT_MONITORAMENTO}"

E selecionar a opção Obrigatório Autorizador de Desbloqueio
  resource_ctrDefinicoesAcesso.Selecionar a opção Obrigatório Autorizador de Desbloqueio

E selecionar a opção Leitora de Barras Serial 
  resource_ctrDefinicoesAcesso.Selecionar a opção Leitora de Barras Serial 

E selecionar a opção Bloqueia SmartCard por Serial
  resource_ctrDefinicoesAcesso.Selecionar a opção Bloqueia SmartCard por Serial

E selecionar a opção Captura de Fotos Simultâneas
  resource_ctrDefinicoesAcesso.Selecionar a opção Captura de Fotos Simultâneas

E selecionar a opção Utiliza ReP
  resource_ctrDefinicoesAcesso.Selecionar a opção Utiliza ReP

E selecionar a opção Envio de Comandos On Line
  resource_ctrDefinicoesAcesso.Selecionar a opção Envio de Comandos On Line

E selecionar a opção Crachás Customizados
  resource_ctrDefinicoesAcesso.Selecionar a opção Crachás Customizados

E selecionar a opção Utiliza Biometria sem Validação de Crachá
  resource_ctrDefinicoesAcesso.Selecionar a opção Utiliza Biometria sem Validação de Crachá

E selecionar a opção Utiliza Leitora Codin Vena 
  resource_ctrDefinicoesAcesso.Selecionar a opção Utiliza Leitora Codin Vena 

E selecionar a opção Controle de Multi Acesso
  resource_ctrDefinicoesAcesso.Selecionar a opção Controle de Multi Acesso