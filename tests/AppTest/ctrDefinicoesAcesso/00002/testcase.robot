*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrDefinicoesAcesso.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Definições de Acesso
${APPNAME}     ctrDefinicoesAcesso
${OBJETIVO}    Verificar todos os campos na tela Definições de Acesso.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Definições de Acesso
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Crachá
  Então devo visualizar a tela: Definições de Acesso
  E verificar o campo Obrigatório Autorizador de Desbloqueio
  E verificar o campo Qtde. Dias de Falta para Bloquear
  E verificar o campo Leitora de Barras Serial
  E verificar o campo Bloqueia SmartCard por Serial
  E verificar o campo Código Motivo de Bloqueio Padrão
  #E verificar o campo Tecnologia SmartCard
  #E verificar o campo Tecnologia para Foto
  E verificar o campo Altura da Foto
  E verificar o campo Largura da Foto
  E verificar o campo Altura da Foto para Importação
  E verificar o campo Largura da Foto para Importação
  E verificar o campo Captura de Fotos Simultâneas
  E verificar o campo Tipo Biometria Colaborador
  E verificar o campo Utiliza ReP
  E verificar o campo Envio de Comandos On Line
  #E verificar o campo Utiliza Leitura de SmartCard (Somente ActiveX)
  E verificar o campo Quantidade de Processos Simultaneos (GerServ)
  #E verificar o campo Utiliza Leitora HID
  E verificar o campo Timeout Sessão (Segundos)
  E verificar o campo Crachás Customizados
  E verificar a label Controle de Estacionamento
  E verificar o campo Estacionamento de Veículo
  E verificar a label Biometria
  E verificar o campo Utiliza Leitora Codin Vena
  E verificar o campo Coleta de Templates Codin Vena
  E verificar o campo Tipo de Crachá Para Vínculo do Template
  E verificar a label Monitoramento
  E verificar o campo Intervalo de Processamento
  E verificar o campo Tempo Máximo entre Registros
  E verificar o campo Timeout Monitoramento
  E verificar o campo Controle de Multi Acesso
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configurações | Crachá
  resource_mnu.Clicar No Menu Configurações | Crachá

Então devo visualizar a tela: Definições de Acesso
  resource_ctrDefinicoesAcesso.Acessar Tela Definições de Acesso

E verificar o campo Obrigatório Autorizador de Desbloqueio
  resource_ctrDefinicoesAcesso.Verificar o campo Obrigatório Autorizador de Desbloqueio

E verificar o campo Qtde. Dias de Falta para Bloquear
  resource_ctrDefinicoesAcesso.Verificar o campo Qtde. Dias de Falta para Bloquear

E verificar o campo Leitora de Barras Serial
  resource_ctrDefinicoesAcesso.Verificar o campo Leitora de Barras Serial

E verificar o campo Bloqueia SmartCard por Serial
  resource_ctrDefinicoesAcesso.Verificar o campo Bloqueia SmartCard por Serial

E verificar o campo Código Motivo de Bloqueio Padrão
  resource_ctrDefinicoesAcesso.Verificar o campo Código Motivo de Bloqueio Padrão

E verificar o campo Tecnologia SmartCard
  resource_ctrDefinicoesAcesso.Verificar o campo Tecnologia SmartCard

E verificar o campo Tecnologia para Foto
  resource_ctrDefinicoesAcesso.Verificar o campo Tecnologia para Foto

E verificar o campo Altura da Foto
  resource_ctrDefinicoesAcesso.Verificar o campo Altura da Foto

E verificar o campo Largura da Foto
  resource_ctrDefinicoesAcesso.Verificar o campo Largura da Foto

E verificar o campo Altura da Foto para Importação
  resource_ctrDefinicoesAcesso.Verificar o campo Altura da Foto para Importação

E verificar o campo Largura da Foto para Importação
  resource_ctrDefinicoesAcesso.Verificar o campo Largura da Foto para Importação

E verificar o campo Captura de Fotos Simultâneas
  resource_ctrDefinicoesAcesso.Verificar o campo Captura de Fotos Simultâneas

E verificar o campo Tipo Biometria Colaborador
  resource_ctrDefinicoesAcesso.Verificar o campo Tipo Biometria Colaborador

E verificar o campo Utiliza ReP
  resource_ctrDefinicoesAcesso.Verificar o campo Utiliza ReP

E verificar o campo Envio de Comandos On Line
  resource_ctrDefinicoesAcesso.Verificar o campo Envio de Comandos On Line

E verificar o campo Utiliza Leitura de SmartCard (Somente ActiveX)
  resource_ctrDefinicoesAcesso.Verificar o campo Utiliza Leitura de SmartCard (Somente ActiveX)

E verificar o campo Quantidade de Processos Simultaneos (GerServ)
  resource_ctrDefinicoesAcesso.Verificar o campo Quantidade de Processos Simultaneos (GerServ)

E verificar o campo Utiliza Leitora HID
  resource_ctrDefinicoesAcesso.Verificar o campo Utiliza Leitora HID

E verificar o campo Timeout Sessão (Segundos)
  resource_ctrDefinicoesAcesso.Verificar o campo Timeout Sessão (Segundos)

E verificar o campo Crachás Customizados
  resource_ctrDefinicoesAcesso.Verificar o campo Crachás Customizados

E verificar a label Controle de Estacionamento
  resource_ctrDefinicoesAcesso.Verificar a label Controle de Estacionamento

E verificar o campo Estacionamento de Veículo
  resource_ctrDefinicoesAcesso.Verificar o campo Estacionamento de Veículo

E verificar a label Biometria
  resource_ctrDefinicoesAcesso.Verificar a label Biometria

E verificar o campo Utiliza Leitora Codin Vena
  resource_ctrDefinicoesAcesso.Verificar o campo Utiliza Leitora Codin Vena

E verificar o campo Coleta de Templates Codin Vena
  resource_ctrDefinicoesAcesso.Verificar o campo Coleta de Templates Codin Vena

E verificar o campo Tipo de Crachá Para Vínculo do Template
  resource_ctrDefinicoesAcesso.Verificar o campo Tipo de Crachá Para Vínculo do Template

E verificar a label Monitoramento
  resource_ctrDefinicoesAcesso.Verificar a label Monitoramento

E verificar o campo Intervalo de Processamento
  resource_ctrDefinicoesAcesso.Verificar o campo Intervalo de Processamento

E verificar o campo Tempo Máximo entre Registros
  resource_ctrDefinicoesAcesso.Verificar o campo Tempo Máximo entre Registros

E verificar o campo Timeout Monitoramento
  resource_ctrDefinicoesAcesso.Verificar o campo Timeout Monitoramento

E verificar o campo Controle de Multi Acesso
  resource_ctrDefinicoesAcesso.Verificar o campo Controle de Multi Acesso

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"