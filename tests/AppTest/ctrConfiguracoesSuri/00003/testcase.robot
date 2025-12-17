*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesSuri.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Configurações Gerais Do Sistema.

*** Test Cases ***

Testcase: Preencher todos os campos na tela Configurações Gerais Do Sistema
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações Gerais Do Sistema
  Então devo visualizar a tela: Configurações Gerais Do Sistema
  E selecionar uma opção no campo Liberar Acesso Área de Risco "Não"
  E selecionar uma opção no campo Mensagem no Codin "Não"
  E selecionar uma opção no campo Histórico de Filial "Não"
  E selecionar uma opção no campo Histórico de Organograma "Não"
  E selecionar uma opção no campo Histórico de Cargos "Não"
  E selecionar uma opção no campo Histórico de Escalas "Não"
  E selecionar uma opção no campo Histórico de Crachás "Não"
  E selecionar uma opção no campo Histórico de Centro de Custos "Não"
  E selecionar uma opção no campo Permitir Cargo Auto-Incremento "Não"
  E selecionar uma opção no campo Mensagem de Cadas. Biometria "Não"
  E preencher o campo Bloqueio por Tentativas de Biometria Inválida "1"
  E selecionar uma opção no campo Utiliza Suricato REP "Não"
  E selecionar uma opção no campo Utiliza Matriz de Acesso "Não"
  E selecionar uma opção no campo Utiliza Área Alfandegada LDC "Não"
  E selecionar uma opção no campo Utiliza Controle de Validade de Fumaça "Não"
  E preencher o campo Configuração de Local para Gravação de Fotos "path"
  E selecionar uma opção no campo Configurações Crachá Manual "Não"
  E preencher o campo Caminho Gerador Relatórios "10"
  E selecionar uma opção no campo Sit. Colaborador para Import. Crachá "Sim"
  E selecionar uma opção no campo Atualiza Dados Tb. Acesso Colaborador "Não"
  E preencher o campo N. Maximo Tentativas de Carga "2"
  E selecionar uma opção no campo Motivo Bloqueio de Documentos "Motivo do Bloqueio"
  E selecionar uma opção no campo Colab. Utiliza Transp. Empresa "Não"
  E preencher o campo Time out Monitoramento de Câmeras "20000"
  E preencher o campo Condiguração de Largura da Câmera "200"
  E preencher o campo Configurações da Altura da Câmera "300"
  E preencher o campo Qtde Dias Para Notificação ASO "14"
  E preencher o campo Qtde Dias Para Notificações de Venc. Treinamento "14"
  E preencher o campo E-mail Envio de Notificação de Val. do ASO "email@email.com"
  E preencher o campo E-mail Envio de Notificação de Val. do Treinamento de Segurança "email@email.com"
  E preencher o campo Manter log de (dias) "12"
  E preencher o campo Quantidade de Acessos "2"
  E preencher o campo Tempo (em segundos) para Ativação do Alarme "2"
  E preencher o campo Qualidade Mínima de Captura de Biometria "40"
  E selecionar uma opção no campo Valida Dupla Verificação de Veículos "Sim"
  E selecionar uma opção no campo Baixa de Veiculos para Visitantes "Não"
  E selecionar uma opção no campo Modelo Codin "Vena"
  E preencher o campo Tempo de Validade da Senha "2"
  E selecionar uma opção no campo Suricato Escola "Sim"
  E selecionar uma opção no campo Responsável recebe notificação via Sms/E-mail "SMS"
  E selecionar uma opção no campo Utilizar Campos Customizados "Sim"
  E preencher o campo Cor para Destaque "#33FF00"
  E preencher o campo Status On "#33FF00"
  E preencher o campo Status Off "#33FF00"
  E preencher o campo Status Desativado "#33FF00"
  E preencher o campo Endereço do Servidor "NA"
  E preencher o campo Porta do Servidor "NA"
  E preencher o campo Timeout(min) Antes Fechamento "12"
  E preencher o campo Timeout(min) Depois Fechamento "16"
  E preencher o campo Hora Inicial "1200"
  E preencher o campo Hora Final "1300"
  E selecionar uma opção no campo Utiliza Middleware "Sim"
  E preencher o campo Caminho Middleware "path"
  E selecionar uma opção no campo Integração WSG "Sim"
  #campo biometria ignorado  
  #campo smartcard ignorado
  #campo foto ignorado
  #campo Scanner ignorado
  E selecionar a opção Pad Assinatura
  E preencher o campo Porta TCP "200"
  E selecionar uma opção no campo Tipo de leitura de smartcard "Físico"
  E selecionar uma opção no campo Tipo de Geração de Listas "Todos"

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações Gerais Do Sistema
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configurações Gerais Do Sistema

Então devo visualizar a tela: Configurações Gerais Do Sistema
  resource_ctrConfiguracoesSuri.Acessar Tela Configurações Gerais Do Sistema

E selecionar uma opção no campo Liberar Acesso Área de Risco "${LIBERAR_ACESSO_ÁREA_DE_RISCO}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Liberar Acesso Área de Risco "${LIBERAR_ACESSO_ÁREA_DE_RISCO}"

E selecionar uma opção no campo Mensagem no Codin "${MENSAGEM_NO_CODIN}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Mensagem no Codin "${MENSAGEM_NO_CODIN}"

E selecionar uma opção no campo Histórico de Filial "${HISTÓRICO_DE_FILIAL}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Histórico de Filial "${HISTÓRICO_DE_FILIAL}"

E selecionar uma opção no campo Histórico de Organograma "${HISTÓRICO_DE_ORGANOGRAMA}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Histórico de Organograma "${HISTÓRICO_DE_ORGANOGRAMA}"

E selecionar uma opção no campo Histórico de Cargos "${HISTÓRICO_DE_CARGOS}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Histórico de Cargos "${HISTÓRICO_DE_CARGOS}"

E selecionar uma opção no campo Histórico de Escalas "${HISTÓRICO_DE_ESCALAS}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Histórico de Escalas "${HISTÓRICO_DE_ESCALAS}"

E selecionar uma opção no campo Histórico de Crachás "${HISTÓRICO_DE_CRACHÁS}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Histórico de Crachás "${HISTÓRICO_DE_CRACHÁS}"

E selecionar uma opção no campo Histórico de Centro de Custos "${HISTÓRICO_DE_CENTRO_DE_CUSTOS}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Histórico de Centro de Custos "${HISTÓRICO_DE_CENTRO_DE_CUSTOS}"

E selecionar uma opção no campo Permitir Cargo Auto-Incremento "${PERMITIR_CARGO_AUTO-INCREMENTO}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Permitir Cargo Auto-Incremento "${PERMITIR_CARGO_AUTO-INCREMENTO}"

E selecionar uma opção no campo Mensagem de Cadas. Biometria "${MENSAGEM_DE_CADAS._BIOMETRIA}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Mensagem de Cadas. Biometria "${MENSAGEM_DE_CADAS._BIOMETRIA}"

E preencher o campo Bloqueio por Tentativas de Biometria Inválida "${BLOQUEIO_POR_TENTATIVAS_DE_BIOMETRIA_INVÁLIDA}"
  resource_ctrConfiguracoesSuri.Preencher o campo Bloqueio por Tentativas de Biometria Inválida "${BLOQUEIO_POR_TENTATIVAS_DE_BIOMETRIA_INVÁLIDA}"

E selecionar uma opção no campo Utiliza Suricato REP "${UTILIZA_SURICATO_REP}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Utiliza Suricato REP "${UTILIZA_SURICATO_REP}"

E selecionar uma opção no campo Utiliza Matriz de Acesso "${UTILIZA_MATRIZ_DE_ACESSO}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Utiliza Matriz de Acesso "${UTILIZA_MATRIZ_DE_ACESSO}"

E selecionar uma opção no campo Utiliza Área Alfandegada LDC "${UTILIZA_ÁREA_ALFANDEGADA_LDC}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Utiliza Área Alfandegada LDC "${UTILIZA_ÁREA_ALFANDEGADA_LDC}"

E selecionar uma opção no campo Utiliza Controle de Validade de Fumaça "${UTILIZA_CONTROLE_DE_VALIDADE_DE_FUMAÇA}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Utiliza Controle de Validade de Fumaça "${UTILIZA_CONTROLE_DE_VALIDADE_DE_FUMAÇA}"

E preencher o campo Configuração de Local para Gravação de Fotos "${CONFIGURAÇÃO_DE_LOCAL_PARA_GRAVAÇÃO_DE_FOTOS}"
  resource_ctrConfiguracoesSuri.Preencher o campo Configuração de Local para Gravação de Fotos "${CONFIGURAÇÃO_DE_LOCAL_PARA_GRAVAÇÃO_DE_FOTOS}"

E selecionar uma opção no campo Configurações Crachá Manual "${CONFIGURAÇÕES_CRACHÁ_MANUAL}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Configurações Crachá Manual "${CONFIGURAÇÕES_CRACHÁ_MANUAL}"

E preencher o campo Caminho Gerador Relatórios "${CAMINHO_GERADOR_RELATÓRIOS}"
  resource_ctrConfiguracoesSuri.Preencher o campo Caminho Gerador Relatórios "${CAMINHO_GERADOR_RELATÓRIOS}"

E selecionar uma opção no campo Sit. Colaborador para Import. Crachá "${SIT._COLABORADOR_PARA_IMPORT._CRACHÁ}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Sit. Colaborador para Import. Crachá "${SIT._COLABORADOR_PARA_IMPORT._CRACHÁ}"

E selecionar uma opção no campo Atualiza Dados Tb. Acesso Colaborador "${ATUALIZA_DADOS_TB._ACESSO_COLABORADOR}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Atualiza Dados Tb. Acesso Colaborador "${ATUALIZA_DADOS_TB._ACESSO_COLABORADOR}"

E preencher o campo N. Maximo Tentativas de Carga "${N._MAXIMO_TENTATIVAS_DE_CARGA}"
  resource_ctrConfiguracoesSuri.Preencher o campo N. Maximo Tentativas de Carga "${N._MAXIMO_TENTATIVAS_DE_CARGA}"

E selecionar uma opção no campo Motivo Bloqueio de Documentos "${MOTIVO_BLOQUEIO_DE_DOCUMENTOS}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Motivo Bloqueio de Documentos "${MOTIVO_BLOQUEIO_DE_DOCUMENTOS}"

E selecionar uma opção no campo Colab. Utiliza Transp. Empresa "${COLAB._UTILIZA_TRANSP._EMPRESA}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Colab. Utiliza Transp. Empresa "${COLAB._UTILIZA_TRANSP._EMPRESA}"

E preencher o campo Time out Monitoramento de Câmeras "${TIME_OUT_MONITORAMENTO_DE_CÂMERAS}"
  resource_ctrConfiguracoesSuri.Preencher o campo Time out Monitoramento de Câmeras "${TIME_OUT_MONITORAMENTO_DE_CÂMERAS}"

E preencher o campo Condiguração de Largura da Câmera "${CONDIGURAÇÃO_DE_LARGURA_DA_CÂMERA}"
  resource_ctrConfiguracoesSuri.Preencher o campo Condiguração de Largura da Câmera "${CONDIGURAÇÃO_DE_LARGURA_DA_CÂMERA}"

E preencher o campo Configurações da Altura da Câmera "${CONFIGURAÇÕES_DA_ALTURA_DA_CÂMERA}"
  resource_ctrConfiguracoesSuri.Preencher o campo Configurações da Altura da Câmera "${CONFIGURAÇÕES_DA_ALTURA_DA_CÂMERA}"

E preencher o campo Qtde Dias Para Notificação ASO "${QTDE_DIAS_PARA_NOTIFICAÇÃO_ASO}"
  resource_ctrConfiguracoesSuri.Preencher o campo Qtde Dias Para Notificação ASO "${QTDE_DIAS_PARA_NOTIFICAÇÃO_ASO}"

E preencher o campo Qtde Dias Para Notificações de Venc. Treinamento "${QTDE_DIAS_PARA_NOTIFICAÇÕES_DE_VENC._TREINAMENTO}"
  resource_ctrConfiguracoesSuri.Preencher o campo Qtde Dias Para Notificações de Venc. Treinamento "${QTDE_DIAS_PARA_NOTIFICAÇÕES_DE_VENC._TREINAMENTO}"

E preencher o campo E-mail Envio de Notificação de Val. do ASO "${E-MAIL_ENVIO_DE_NOTIFICAÇÃO_DE_VAL._DO_ASO}"
  resource_ctrConfiguracoesSuri.Preencher o campo E-mail Envio de Notificação de Val. do ASO "${E-MAIL_ENVIO_DE_NOTIFICAÇÃO_DE_VAL._DO_ASO}"

E preencher o campo E-mail Envio de Notificação de Val. do Treinamento de Segurança "${E-MAIL_ENVIO_DE_NOTIFICAÇÃO_DE_VAL._DO_TREINAMENTO_DE_SEGURANÇA}"
  resource_ctrConfiguracoesSuri.Preencher o campo E-mail Envio de Notificação de Val. do Treinamento de Segurança "${E-MAIL_ENVIO_DE_NOTIFICAÇÃO_DE_VAL._DO_TREINAMENTO_DE_SEGURANÇA}"

E preencher o campo Manter log de (dias) "${MANTER_LOG_DE_(DIAS)}"
  resource_ctrConfiguracoesSuri.Preencher o campo Manter log de (dias) "${MANTER_LOG_DE_(DIAS)}"

E preencher o campo Quantidade de Acessos "${QUANTIDADE_DE_ACESSOS}"
  resource_ctrConfiguracoesSuri.Preencher o campo Quantidade de Acessos "${QUANTIDADE_DE_ACESSOS}"

E preencher o campo Tempo (em segundos) para Ativação do Alarme "${TEMPO_(EM_SEGUNDOS)_PARA_ATIVAÇÃO_DO_ALARME}"
  resource_ctrConfiguracoesSuri.Preencher o campo Tempo (em segundos) para Ativação do Alarme "${TEMPO_(EM_SEGUNDOS)_PARA_ATIVAÇÃO_DO_ALARME}"

E preencher o campo Qualidade Mínima de Captura de Biometria "${QUALIDADE_MÍNIMA_DE_CAPTURA_DE_BIOMETRIA}"
  resource_ctrConfiguracoesSuri.Preencher o campo Qualidade Mínima de Captura de Biometria "${QUALIDADE_MÍNIMA_DE_CAPTURA_DE_BIOMETRIA}"

E selecionar uma opção no campo Valida Dupla Verificação de Veículos "${VALIDA_DUPLA_VERIFICAÇÃO_DE_VEÍCULOS}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Valida Dupla Verificação de Veículos "${VALIDA_DUPLA_VERIFICAÇÃO_DE_VEÍCULOS}"

E selecionar uma opção no campo Baixa de Veiculos para Visitantes "${BAIXA_DE_VEICULOS_PARA_VISITANTES}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Baixa de Veiculos para Visitantes "${BAIXA_DE_VEICULOS_PARA_VISITANTES}"

E selecionar uma opção no campo Modelo Codin "${MODELO_CODIN}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Modelo Codin "${MODELO_CODIN}"

E preencher o campo Tempo de Validade da Senha "${TEMPO_DE_VALIDADE_DA_SENHA}"
  resource_ctrConfiguracoesSuri.Preencher o campo Tempo de Validade da Senha "${TEMPO_DE_VALIDADE_DA_SENHA}"

E selecionar uma opção no campo Suricato Escola "${SURICATO_ESCOLA}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Suricato Escola "${SURICATO_ESCOLA}"

E selecionar uma opção no campo Responsável recebe notificação via Sms/E-mail "${RESPONSÁVEL_RECEBE_NOTIFICAÇÃO_VIA_SMS/E-MAIL}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Responsável recebe notificação via Sms/E-mail "${RESPONSÁVEL_RECEBE_NOTIFICAÇÃO_VIA_SMS/E-MAIL}"

E selecionar uma opção no campo Utilizar Campos Customizados "${UTILIZAR_CAMPOS_CUSTOMIZADOS}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Utilizar Campos Customizados "${UTILIZAR_CAMPOS_CUSTOMIZADOS}"

E preencher o campo Cor para Destaque "${COR_PARA_DESTAQUE}"
  resource_ctrConfiguracoesSuri.Preencher o campo Cor para Destaque "${COR_PARA_DESTAQUE}"

E preencher o campo Status On "${STATUS_ON}"
  resource_ctrConfiguracoesSuri.Preencher o campo Status On "${STATUS_ON}"

E preencher o campo Status Off "${STATUS_OFF}"
  resource_ctrConfiguracoesSuri.Preencher o campo Status Off "${STATUS_OFF}"

E preencher o campo Status Desativado "${STATUS_DESATIVADO}"
  resource_ctrConfiguracoesSuri.Preencher o campo Status Desativado "${STATUS_DESATIVADO}"

E preencher o campo Endereço do Servidor "${ENDEREÇO_DO_SERVIDOR}"
  resource_ctrConfiguracoesSuri.Preencher o campo Endereço do Servidor "${ENDEREÇO_DO_SERVIDOR}"

E preencher o campo Porta do Servidor "${PORTA_DO_SERVIDOR}"
  resource_ctrConfiguracoesSuri.Preencher o campo Porta do Servidor "${PORTA_DO_SERVIDOR}"

E preencher o campo Timeout(min) Antes Fechamento "${TIMEOUT(MIN)_ANTES_FECHAMENTO}"
  resource_ctrConfiguracoesSuri.Preencher o campo Timeout(min) Antes Fechamento "${TIMEOUT(MIN)_ANTES_FECHAMENTO}"

E preencher o campo Timeout(min) Depois Fechamento "${TIMEOUT(MIN)_DEPOIS_FECHAMENTO}"
  resource_ctrConfiguracoesSuri.Preencher o campo Timeout(min) Depois Fechamento "${TIMEOUT(MIN)_DEPOIS_FECHAMENTO}"

E preencher o campo Hora Inicial "${HORA}"
  resource_ctrConfiguracoesSuri.Preencher o campo Hora Inicial "${HORA}"

E preencher o campo Hora Final "${HORA}"
  resource_ctrConfiguracoesSuri.Preencher o campo Hora Final "${HORA}"

E selecionar uma opção no campo Utiliza Middleware "${UTILIZA_MIDDLEWARE}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Utiliza Middleware "${UTILIZA_MIDDLEWARE}"

E preencher o campo Caminho Middleware "${CAMINHO_MIDDLEWARE}"
  resource_ctrConfiguracoesSuri.Preencher o campo Caminho Middleware "${CAMINHO_MIDDLEWARE}"

E selecionar uma opção no campo Integração WSG "${INTEGRAÇÃO_WSG}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Integração WSG "${INTEGRAÇÃO_WSG}"

E preencher o campo Porta TCP "${PORTA_TCP}"
  resource_ctrConfiguracoesSuri.Preencher o campo Porta TCP "${PORTA_TCP}"

E selecionar a opção Pad Assinatura
  resource_ctrConfiguracoesSuri.Selecionar a opção Pad Assinatura

E selecionar uma opção no campo Tipo de leitura de smartcard "${TIPO_DE_LEITURA_DE_SMARTCARD}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Tipo de leitura de smartcard "${TIPO_DE_LEITURA_DE_SMARTCARD}"

E selecionar uma opção no campo Tipo de Geração de Listas "${TIPO_DE_GERAÇÃO_DE_LISTAS}"
  resource_ctrConfiguracoesSuri.Selecionar uma opção no campo Tipo de Geração de Listas "${TIPO_DE_GERAÇÃO_DE_LISTAS}"
