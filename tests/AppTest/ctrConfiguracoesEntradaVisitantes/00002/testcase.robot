*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesEntradaVisitantes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Configurações - Entrada de Visitantes
${APPNAME}     ctrConfiguracoesEntradaVisitantes
${OBJETIVO}    Verificar todos os campos na tela Configurações - Entrada de Visitantes.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Configurações - Entrada de Visitantes
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Entrada de Visitantes
  Então devo visualizar a tela: Configurações - Entrada de Visitantes
  E verificar a label Gerais
  E verificar o campo Critica se Docto do Visitante for de Empregado
  E verificar o campo Qtde. Dias de Visita na Semana para Critica
  E verificar o campo Critica Visitado Ausente
  E verificar o campo Visitante usa RFID
  E verificar o campo Mostrar Visitado na Entrada de Visitante
  E verificar o campo Mostrar Veículo na Entrada de Visitante
  E verificar o campo Utilizar somente uma câmera
  E verificar o campo Utilizar Câmeras Individuais
  E verificar o campo Utilizar Workflow de Aprovação de Entrada de Visitante
  E verificar o campo Lançador é Auto Aprovador de Visitas
  E verificar a label Aviso/Liberação de Visitante
  E verificar o campo Controlar Aviso/Liberação de Visitante
  E verificar o campo Notificar Visitado por E-mail
  E verificar o campo Notificar Visitado por Popup
  E verificar o campo Notificar Visitado por Mobile
  E verificar o campo Gravar Cartão SmartCard
  E verificar a label Valores Padrão
  E verificar o campo Empresa Terceira Padrão
  E verificar o campo Tipo de Visita Padrão
  E verificar o campo Código Permissão Padrão
  E verificar o campo Empresa Padrão (Colaborador)
  E verificar o campo Tipo de Colaborador Padrão
  E verificar a label Entrada Automatizadas
  E verificar o campo Faixa de Gravação de Crachás Aleatórios
  E verificar o campo Período para Reutilização de Crachás em Dias
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Entrada de Visitantes
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Entrada de Visitantes

Então devo visualizar a tela: Configurações - Entrada de Visitantes
  resource_ctrConfiguracoesEntradaVisitantes.Acessar Tela Configurações - Entrada de Visitantes

E verificar a label Gerais
  resource_ctrConfiguracoesEntradaVisitantes.Verificar a label Gerais

E verificar o campo Critica se Docto do Visitante for de Empregado
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Critica se Docto do Visitante for de Empregado

E verificar o campo Qtde. Dias de Visita na Semana para Critica
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Qtde. Dias de Visita na Semana para Critica

E verificar o campo Critica Visitado Ausente
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Critica Visitado Ausente

E verificar o campo Visitante usa RFID
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Visitante usa RFID

E verificar o campo Mostrar Visitado na Entrada de Visitante
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Mostrar Visitado na Entrada de Visitante

E verificar o campo Mostrar Veículo na Entrada de Visitante
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Mostrar Veículo na Entrada de Visitante

E verificar o campo Utilizar somente uma câmera
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Utilizar somente uma câmera

E verificar o campo Utilizar Câmeras Individuais
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Utilizar Câmeras Individuais

E verificar o campo Utilizar Workflow de Aprovação de Entrada de Visitante
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Utilizar Workflow de Aprovação de Entrada de Visitante

E verificar o campo Lançador é Auto Aprovador de Visitas
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Lançador é Auto Aprovador de Visitas

E verificar a label Aviso/Liberação de Visitante
  resource_ctrConfiguracoesEntradaVisitantes.Verificar a label Aviso/Liberação de Visitante

E verificar o campo Controlar Aviso/Liberação de Visitante
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Controlar Aviso/Liberação de Visitante

E verificar o campo Notificar Visitado por E-mail
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Notificar Visitado por E-mail

E verificar o campo Notificar Visitado por Popup
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Notificar Visitado por Popup

E verificar o campo Notificar Visitado por Mobile
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Notificar Visitado por Mobile

E verificar o campo Gravar Cartão SmartCard
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Gravar Cartão SmartCard

E verificar a label Valores Padrão
  resource_ctrConfiguracoesEntradaVisitantes.Verificar a label Valores Padrão

E verificar o campo Empresa Terceira Padrão
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Empresa Terceira Padrão

E verificar o campo Tipo de Visita Padrão
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Tipo de Visita Padrão

E verificar o campo Código Permissão Padrão
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Código Permissão Padrão

E verificar o campo Empresa Padrão (Colaborador)
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Empresa Padrão (Colaborador)

E verificar o campo Tipo de Colaborador Padrão
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Tipo de Colaborador Padrão

E verificar a label Entrada Automatizadas
  resource_ctrConfiguracoesEntradaVisitantes.Verificar a label Entrada Automatizadas

E verificar o campo Faixa de Gravação de Crachás Aleatórios
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Faixa de Gravação de Crachás Aleatórios

E verificar o campo Período para Reutilização de Crachás em Dias
  resource_ctrConfiguracoesEntradaVisitantes.Verificar o campo Período para Reutilização de Crachás em Dias

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
