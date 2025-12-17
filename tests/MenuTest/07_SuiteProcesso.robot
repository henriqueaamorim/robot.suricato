*** Settings ***
Resource        ../../resource/resource_login.robot
Resource        ../../resource/common/resource_mnu.robot
Suite Setup     Acessar Suricato
Suite Teardown  Fechar navegador
Test Setup      Sleep    2s


*** Test Cases ***
Cenario: Navegar No Menu Processo | Geração de Lista
  Clicar No Menu Processo | Geração de Lista

Cenário: Navegar No Menu Processo | Layout de Arquivo
  Clicar No Menu Processo | Layout de Arquivo

Cenário: Navegar No Menu Processo | Layout de Relatório
  Clicar No Menu Processo | Layout de Relatório

Cenário: Navegar No Menu Processo | Importação
  Clicar No Menu Processo | Importação

Cenário: Navegar No Menu Processo | Exportação
  Clicar No Menu Processo | Exportação

Cenário: Navegar No Menu Processo | Relatório
  Clicar No Menu Processo | Relatório

Cenário: Navegar No Menu Processo | Email
  Clicar No Menu Processo | Email

Cenário: Navegar No Menu Processo | Online
  Clicar No Menu Processo | Online

Cenário: Navegar No Menu Processo | Foto | Visitante
  Clicar No Menu Processo | Foto | Visitante

Cenário: Navegar No Menu Processo | Foto | Colaborador
  Clicar No Menu Processo | Foto | Colaborador
