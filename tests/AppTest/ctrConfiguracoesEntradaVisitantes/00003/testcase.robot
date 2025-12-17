*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesEntradaVisitantes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Configurações - Entrada de Visitantes.

*** Test Cases ***

Testcase: Preencher todos os campos na tela Configurações - Entrada de Visitantes
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Entrada de Visitantes
  Então devo visualizar a tela: Configurações - Entrada de Visitantes
  E selecionar a opção Critica se Docto do Visitante for de Empregado
  E preencher o campo Qtde. Dias de Visita na Semana para Critica "2"
  E selecionar a opção Critica Visitado Ausente
  E selecionar a opção Visitante usa RFID
  E selecionar a opção Mostrar Visitado na Entrada de Visitante
  E selecionar a opção Mostrar Veículo na Entrada de Visitante
  E selecionar a opção Utilizar somente uma câmera
  E selecionar a opção Utilizar Câmeras Individuais
  E selecionar a opção Utilizar Workflow de Aprovação de Entrada de Visitante
  E selecionar a opção Lançador é Auto Aprovador de Visitas 
  E selecionar a opção Controlar Aviso/Liberação de Visitante
  E selecionar a opção Notificar Visitado por E-mail
  E selecionar a opção Notificar Visitado por Popup
  E selecionar a opção Notificar Visitado por Mobile
  E selecionar a opção Gravar Cartão SmartCard
  E selecionar uma opção no campo Empresa Terceira Padrão "10AAB"
  E selecionar uma opção no campo Tipo de Visita Padrão "DESCRIÇÃO"
  E selecionar uma opção no campo Código Permissão Padrão "ACESSO"
  E selecionar uma opção no campo Empresa Padrão (Colaborador) "FIBRASA"
  E selecionar uma opção no campo Tipo de Colaborador Padrão "Terceiro"
  E preencher o campo Faixa de Gravação de Crachás Aleatórios "asd"
  E preencher o campo Período para Reutilização de Crachás em Dias "1"
 
*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Entrada de Visitantes
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Entrada de Visitantes

Então devo visualizar a tela: Configurações - Entrada de Visitantes
  resource_ctrConfiguracoesEntradaVisitantes.Acessar Tela Configurações - Entrada de Visitantes

E selecionar a opção Critica se Docto do Visitante for de Empregado
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar a opção Critica se Docto do Visitante for de Empregado

E preencher o campo Qtde. Dias de Visita na Semana para Critica "2"
  resource_ctrConfiguracoesEntradaVisitantes.Preencher o campo Qtde. Dias de Visita na Semana para Critica "2"

E selecionar a opção Critica Visitado Ausente
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar a opção Critica Visitado Ausente

E selecionar a opção Visitante usa RFID
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar a opção Visitante usa RFID

E selecionar a opção Mostrar Visitado na Entrada de Visitante
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar a opção Mostrar Visitado na Entrada de Visitante

E selecionar a opção Mostrar Veículo na Entrada de Visitante
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar a opção Mostrar Veículo na Entrada de Visitante

E selecionar a opção Utilizar somente uma câmera
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar a opção Utilizar somente uma câmera

E selecionar a opção Utilizar Câmeras Individuais
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar a opção Utilizar Câmeras Individuais

E selecionar a opção Utilizar Workflow de Aprovação de Entrada de Visitante
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar a opção Utilizar Workflow de Aprovação de Entrada de Visitante

E selecionar a opção Lançador é Auto Aprovador de Visitas 
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar a opção Lançador é Auto Aprovador de Visitas 

E selecionar a opção Controlar Aviso/Liberação de Visitante
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar a opção Controlar Aviso/Liberação de Visitante

E selecionar a opção Notificar Visitado por E-mail
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar a opção Notificar Visitado por E-mail

E selecionar a opção Notificar Visitado por Popup
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar a opção Notificar Visitado por Popup

E selecionar a opção Notificar Visitado por Mobile
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar a opção Notificar Visitado por Mobile

E selecionar a opção Gravar Cartão SmartCard
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar a opção Gravar Cartão SmartCard

E selecionar uma opção no campo Empresa Terceira Padrão "${EMPRESA}"
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar uma opção no campo Empresa Terceira Padrão "${EMPRESA}"

E selecionar uma opção no campo Tipo de Visita Padrão "${TIPO}"
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar uma opção no campo Tipo de Visita Padrão "${TIPO}"

E selecionar uma opção no campo Código Permissão Padrão "${CODIGO}"
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar uma opção no campo Código Permissão Padrão "${CODIGO}"

E selecionar uma opção no campo Empresa Padrão (Colaborador) "${EMPRESA}"
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar uma opção no campo Empresa Padrão (Colaborador) "${EMPRESA}"

E selecionar uma opção no campo Tipo de Colaborador Padrão "${TIPO}"
  resource_ctrConfiguracoesEntradaVisitantes.Selecionar uma opção no campo Tipo de Colaborador Padrão "${TIPO}"

E preencher o campo Faixa de Gravação de Crachás Aleatórios "${GRAVACAO}"
  resource_ctrConfiguracoesEntradaVisitantes.Preencher o campo Faixa de Gravação de Crachás Aleatórios "${GRAVACAO}"

E preencher o campo Período para Reutilização de Crachás em Dias "${PERIODO}"
  resource_ctrConfiguracoesEntradaVisitantes.Preencher o campo Período para Reutilização de Crachás em Dias "${PERIODO}"
