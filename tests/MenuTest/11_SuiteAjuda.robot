*** Settings ***
Resource        ../../resource/resource_login.robot
Resource        ../../resource/common/resource_mnu.robot
Suite Setup     Acessar Suricato
Suite Teardown  Fechar navegador
Test Setup      Sleep    2s


*** Test Cases ***

Cenario: Navegar No Menu Ajuda | Conteúdo da Ajuda
  Clicar No Menu Ajuda | Conteúdo da Ajuda

Cenario: Navegar No Menu Ajuda | Sobre
  Clicar No Menu Ajuda | Sobre
