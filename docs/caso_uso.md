# Introdução
O Processo Unificado emprega casos de uso como uma maneira de declarar e especificar requisitos. Nesse contexto, é importante destacar que, antes de detalhar os casos de uso, foi essencial realizar a elicitação dos requisitos que seriam posteriormente declarados. Esse processo inicial de levantamento de requisitos desempenha um papel fundamental na construção de uma base sólida para a especificação detalhada dos casos de uso no decorrer do desenvolvimento.
## Requisitos funcionais
|ID| Declaração |
|----| ------|
|RF1| Cadastrar usuário |
|RF2| Logar usuário |
|RF3| Cadastrar até 3 contas bancárias |
|RF4| Alterar despesas |
|RF5| Deletar despesas |
|RF6| Categorizar despesas |
|RF7| Filtrar os gastos por categoria de gastos |
|RF8| Pesquisar gastos |
|RF9| Registrar despesas mensais |
|RF10| Acompanhar progresso em direção às metas de economia |
|RF11| Notificar quando estiver a 10% do teto de gastos|
|RF12| Definir teto de gastos para cada categoria de despesas |
|RF13| Definir objetivos de economia |
|RF14| Registrar os ganhos mensais |
|RF15| Registrar transferências|
|RF16| Gerar gráfico de gastos no final do mês |
|RF17| Criar gráfico sobre as transações financeiras |
|RF18| Deletar conta |
|RF19| Acessar perfil do usuário |
|RF20| Alterar conta |
|RF21| Destacar categorias de gastos mais frequentes|

## casos de Uso
### Atores

<p align="justify">&emsp;&emsp; Foi identificado 1 ator dos fluxos de eventos do nosso sistema, sendo ele: </p>

- <b>Usuário:</b> refere-se ao utilizado do app carteira control, sendo este o que usa e se beneficia do app.

### Casos de Uso Identificados

<p align="justify">&emsp;&emsp; Com base nos requisitos elicitados, foram identificados 8 casos de uso, como apresentado na Tabela abaixo: </p>

|ID| Nome do Casos de Uso| Descrição | Requisitos Envolvidos| Resultado|
|---|----|----|----|---|
|CDU-01|Gerenciar cadastro de Usuário | O usuário pode cadastrar-se no sistema, fornecendo as informações necessárias |RF1	Cadastrar usuário| Usuário cadastrado |
|CDU-02|Gerenciar login de Usuário | O usuário pode fazer login no sistema, fornecendo suas credenciais |RF2	Logar usuário| Usuário autenticado |
|CDU-03|Gerenciar cadastro de conta bancária | O usuário pode cadastrar até três contas bancárias associadas ao seu perfil |RF3	Cadastrar até 3 contas bancárias| Conta bancária cadastrada |
|CDU-04|Gerenciar Ganhos| Relata os ganhos financeiros do usuário |  RF14	Registrar os ganhos mensais | Gastos Apresentados |
|CDU-05|Manter o usuário informado | O usuário tem informações de como estão suas economias |RF10	Acompanhar progresso em direção às metas de economia, RF11	Notificar quando estiver a 10% do teto de gastos RF21	Destacar categorias de gastos mais frequentes| Usuário informado sobre suas finanças|
|CDU-06|Gerenciar acesso de perfil  | O usuário pode acessar seu perfil | RF19	Acessar perfil do usuário| Conta do usuário |
|CDU-07|Gerenciar alteração de perfil  | O usuário pode alterar seu perfil| RF20 Alterar conta | Conta do usuário |
|CDU-08|Gerenciar deleção de perfil| O usuário pode deletar seu perfil|RF18	Deletar conta | Conta do usuário |
|CDU-09|Gerenciar plano de gastos para economia | O  usuário define um plano de gastos com objetivos de economia|RF12	Definir teto de gastos para cada categoria de despesas, RF13	Definir objetivos de economia | Plano de gastos|
|CDU-10|Gerenciar Transações Financeiras | O usuário tem controle de suas transações financeiras|RF15	Registrar transferências | Gerenciamentos de Transações financeiras|
|CDU-11|Definir Estatísticas | O usuário visualiza gráficos estatísticos de suas economias|RF16	Gerar gráfico de gastos no final do mês, RF17	Criar gráfico sobre as transações financeiras | Gerar Estatísticas  |
|CDU-12 | Gerenciar alteração Despesas | O usuário pode alterar suas depesas| RF4	Alterar despesas | Despesas Apresentadas |
|CDU-13 | Gerenciar registros de despesas | O usuário pode alterar registrar suas despesas |RF9 Registrar despesas mensais| Despesas Apresentadas |
|CDU-14 | Gerenciar deleção de despesas | O usuário pode  deletar suas despesas | RF5	Deletar despesas | Despesas Apresentadas |
|CDU-15 | Gerenciar categorização de despesas | O usuário pode  categorizar suas despesas |  RF6	Categorizar despesas | Despesas Apresentadas |
|CDU-16 | Gerenciar pesquisa de despesas | O usuário pode  pesquisar suas despesas | RF8	Pesquisar gastos | Despesas Apresentadas |
|CDU-17 | Gerenciar filtro de despesas | O usuário pode filtrar suas despesas |  RF7	Filtrar os gastos por categoria de gastos | Despesas Apresentadas |



# Especificação dos Casos de Uso


# Especificação de Caso de Uso: CDU-01 Gerenciar cadastro de Usuário

| Número do Caso de Uso | CDU-01 |
| --- | --- |
| **Nome do Caso de Uso** | Gerenciar cadastro de Usuário |
| **Versão** | 1.0 |
| **Data de Criação** | 20/11/2023 |
| **Responsável** | Juan Pablo e João Lucas|

## 1. Breve Descrição

Este caso de uso permite que um usuário realize o cadastro no sistema.

## 2. Fluxo Básico de Eventos

| Passo | Descrição |
| --- | --- |
| 2.1 | O usuário escolhe a opção de cadastrar um novo usuário (RF1). |
| 2.2 | O sistema solicita as informações necessárias para o cadastro do usuário. |
| 2.3 | O usuário fornece os dados necessários. |
| 2.4 | O sistema valida as informações e cadastra o usuário. |

## 3. Fluxos Alternativos

### 3.1 Área de Funcionalidade: Cadastro de Usuário

#### 3.1.1 A1 Primeiro Fluxo Alternativo

##### 3.1.1.1 Um Subfluxo Alternativo

- Se as informações fornecidas pelo usuário no cadastro forem inválidas, o sistema exibe uma mensagem de erro.

#### 3.1.2 A2 Segundo Fluxo Alternativo

- Se o usuário já possuir uma conta, ele pode optar por fazer login em vez de cadastrar um novo usuário.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
| --- | --- | --- |
| 4.1 | FE1 | Se houver falha na validação das informações do cadastro, o sistema notifica o usuário sobre os campos inválidos. |

## 5. Pré-Condições

| Número | Descrição |
| --- | --- |
| 5.1 | O sistema está operacional. |
| 5.2 | Não há restrições específicas para o cadastro de novos usuários. |

## 6. Pós-Condições

| Número | Descrição |
| --- | --- |
| 6.1 | O usuário está autenticado no sistema. |

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
| --- | --- | --- |
| 7.1 | - | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
| --- | --- |
| 8.1 | O sistema deve garantir a segurança das informações do usuário durante o cadastro. |

## 9. Informações Adicionais

- Nenhuma informação adicional fornecida.

# Especificação de Caso de Uso: CDU-02 Gerenciar login de Usuário

| Número do Caso de Uso | CDU-02 |
| --- | --- |
| **Nome do Caso de Uso** | Gerenciar login de Usuário |
| **Versão** | 1.0 |
| **Data de Criação** | 20/11/2023 |
| **Responsável** | Juan Pablo e João Lucas|

## 1. Breve Descrição

Este caso de uso permite que um usuário faça login no sistema.

## 2. Fluxo Básico de Eventos

| Passo | Descrição |
| --- | --- |
| 2.1 | O usuário escolhe a opção de fazer login (RF2). |
| 2.2 | O sistema solicita as credenciais do usuário. |
| 2.3 | O usuário fornece as credenciais. |
| 2.4 | O sistema valida as credenciais. |
| 2.5 | O sistema autentica o usuário e o direciona para a área logada. |

## 3. Fluxos Alternativos

### 3.1 Área de Funcionalidade: Login de Usuário

#### 3.1.1 A1 Primeiro Fluxo Alternativo

##### 3.1.1.1 Um Subfluxo Alternativo

- A1: Se o usuário não tiver uma conta no sistema:
   - O sistema não autentica o usuário.
   - O sistema exibe uma mensagem informando que o usuário não possui uma conta no sistema.
   - O usuário pode escolher criar uma nova conta.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
| --- | --- | --- |
| 4.1 | FE1 | Se houver falha na autenticação durante o login, o sistema notifica o usuário e oferece opções para recuperação de senha. |

## 5. Pré-Condições

| Número | Descrição |
| --- | --- |
| 5.1 | O sistema está operacional. |

## 6. Pós-Condições

| Número | Descrição |
| --- | --- |
| 6.1 | O usuário está autenticado no sistema. |

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
| --- | --- | --- |
| 7.1 | - | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
| --- | --- |
| 8.1 |  O sistema deve garantir a segurança das informações do usuário durante o login. |

## 9. Informações Adicionais

- Nenhuma informação adicional fornecida.

# Especificação de Caso de Uso: CDU-03 Gerenciar Cadastro de Conta Bancária

| Número do Caso de Uso | CDU-03 |
| --- | --- |
| **Nome do Caso de Uso** | Gerenciar Cadastro de Conta Bancária |
| **Versão** | 1.0 |
| **Data de Criação** | 20/11/2023 |
| **Responsável** | Juan Pablo e João Lucas|

## 1. Breve Descrição

Este caso de uso permite que um usuário cadastre até três contas bancárias associadas ao seu perfil.

## 2. Fluxo Básico de Eventos

| Passo | Descrição |
| --- | --- |
| 2.1 | O usuário escolhe a opção de cadastrar conta bancária (RF3). |
| 2.2 | O sistema solicita as informações da conta bancária. |
| 2.3 | O usuário fornece os dados necessários. |
| 2.4 | O sistema valida as informações e associa a conta bancária ao usuário. |
        

## 3. Fluxos Alternativos

### 3.1 Área de Funcionalidade: Cadastro de Conta Bancária

#### 3.1.1 A1 Primeiro Fluxo Alternativo

##### 3.1.1.1 Um Subfluxo Alternativo

- A1: Se o usuário tentar cadastrar mais de três contas bancárias:
    - O sistema não permite o cadastro da conta bancária.
    - O sistema exibe uma mensagem informando que o usuário só pode cadastrar até três contas bancárias.

#### 3.1.2 A2 Segundo Fluxo Alternativo
- A2: Se o usuário tentar cadastrar uma conta bancária de um banco que não é suportado pelo sistema:
    - O sistema não permite o cadastro da conta bancária.
    - O sistema exibe uma mensagem informando que o banco não é suportado pelo sistema.


## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
| --- | --- | --- |
| 4.1 | FE1 | Se houver falha na validação das informações do cadastro, o sistema notifica o usuário sobre os campos inválidos. |

## 5. Pré-Condições

| Número | Descrição |
| --- | --- |
| 5.1 | O sistema está operacional. |

## 6. Pós-Condições

| Número | Descrição |
| --- | --- |
| 6.1 | As informações do cadastro e as contas bancárias associadas foram registradas no sistema.|

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
| --- | --- | --- |
| 7.1 | - | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
| --- | --- |
| 8.1 |  O sistema deve garantir a segurança das informações do usuário durante o cadastro. |

## 9. Informações Adicionais

- Nenhuma informação adicional fornecida.


# Especificação de Caso de Uso: CDU-04 Gerenciar Ganhos

| Número do Caso de Uso | CDU-04 |
| --- | --- |
| **Nome do Caso de Uso** | Gerenciar Ganhos |
| **Versão** | 1.0 |
| **Data de Criação** | 13/11/2023 |
| **Responsável** | Juan Pablo |

## 1. Breve Descrição

Este caso de uso permite que o usuário registre seus ganhos financeiros, fornecendo uma visão detalhada de seus ingressos mensais.

## 2. Fluxo Básico de Eventos

| Passo | Descrição |
| --- | --- |
| 2.1 | O usuário acessa a área de gerenciamento de ganhos. |
| 2.2 | O usuário escolhe a opção de registrar ganhos mensais (RF14). |
| 2.3 | O sistema exibe um formulário para o usuário inserir os detalhes do ganho. |
| 2.4 | O usuário fornece as informações necessárias. |
| 2.5 | O sistema valida as informações e registra os ganhos. |

## 3. Fluxos Alternativos

### 3.1 Área de Funcionalidade: Registro de Ganhos

#### 3.1.1 A1 Primeiro Fluxo Alternativo

- Se o usuário decidir não registrar ganhos, ele pode retornar à página principal.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
| --- | --- | --- |
| 4.1 | FE1 | Se houver falha na validação das informações do ganho, o sistema notifica o usuário e destaca os campos inválidos. |

## 5. Pré-Condições

| Número | Descrição |
| --- | --- |
| 5.1 | O usuário está autenticado no sistema. |
| 5.2 | Não há restrições específicas para o registro de ganhos. |

## 6. Pós-Condições

| Número | Descrição |
| --- | --- |
| 6.1 | Os ganhos são registrados no sistema e associados ao perfil do usuário. |
| 6.2 | As estatísticas de ganhos são atualizadas para refletir as alterações. |

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
| --- | --- | --- |
| 7.1 | - | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
| --- | --- |
| 8.1 | O sistema deve fornecer uma interface intuitiva para facilitar o registro de ganhos. |

## 9. Informações Adicionais

- Os ganhos registrados serão utilizados para análises estatísticas nas funcionalidades futuras.

# Especificação de Caso de Uso: CDU-05 Manter o Usuário Informado

| Número do Caso de Uso | CDU-05 |
| --- | --- |
| **Nome do Caso de Uso** | Manter o Usuário Informado |
| **Versão** | 1.0 |
| **Data de Criação** | 13/11/2023 |
| **Responsável** | Juan Pablo|

## 1. Breve Descrição

Este caso de uso permite que o usuário acompanhe o progresso em direção às metas de economia, receba notificações quando estiver a 10% do teto de gastos e tenha insights sobre as categorias de gastos mais frequentes.

## 2. Fluxo Básico de Eventos

| Passo | Descrição |
| --- | --- |
| 2.1 | O usuário acessa a área de informações financeiras. |
| 2.2 | O sistema exibe o acompanhamento do progresso em direção às metas de economia (RF10). |
| 2.3 | O usuário visualiza notificações sobre o teto de gastos quando estiver a 10% do limite (RF11). |
| 2.4 | O sistema destaca as categorias de gastos mais frequentes (RF21). |

## 3. Fluxos Alternativos

### 3.1 Área de Funcionalidade: Acompanhar Progresso

#### 3.1.1 A1 Primeiro Fluxo Alternativo

- Se o usuário não tiver definido metas de economia, o sistema sugere a definição de metas antes de exibir o progresso.

### 3.2 Área de Funcionalidade: Notificações de Gastos

#### 3.2.1 A2 Segundo Fluxo Alternativo

- Se o usuário optar por desativar as notificações de teto de gastos, o sistema atualiza as configurações.

### 3.3 Área de Funcionalidade: Destacar Categorias de Gastos

#### 3.3.1 A3 Terceiro Fluxo Alternativo

- Se não houver dados suficientes para identificar as categorias de gastos mais frequentes, o sistema informa ao usuário.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
| --- | --- | --- |
| 4.1 | FE1 | Se houver uma falha na exibição do progresso em direção às metas, o sistema notifica o usuário e oferece suporte técnico. |
| 4.2 | FE2 | Se não for possível enviar notificações, o sistema registra a ocorrência e sugere que o usuário verifique suas configurações de notificação. |

## 5. Pré-Condições

| Número | Descrição |
| --- | --- |
| 5.1 | O usuário está autenticado no sistema. |
| 5.2 | Metas de economia foram definidas pelo usuário. |
| 5.3 | O usuário concordou em receber notificações. |

## 6. Pós-Condições

| Número | Descrição |
| --- | --- |
| 6.1 | O usuário tem informações atualizadas sobre o progresso em direção às metas de economia. |
| 6.2 | Notificações são enviadas quando o usuário está a 10% do teto de gastos. |
| 6.3 | As categorias de gastos mais frequentes são destacadas para análise. |

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
| --- | --- | --- |
| 7.1 | Aprimorar Análise de Categorias | O sistema permitirá que o usuário aprofunde a análise das categorias de gastos para obter insights mais detalhados. |

## 8. Requisitos Especiais

| Número | Descrição |
| --- | --- |
| 8.1 | O sistema deve garantir a segurança e privacidade das informações financeiras do usuário. |

## 9. Informações Adicionais

- Este caso de uso serve como base para futuras funcionalidades de análise avançada de gastos e economias.

# Especificação caso de uso-06
# CDU-06 Gerenciar Acesso de Perfil

## 1. Breve Descrição
Este caso de uso permite que o usuário acesse as informações do seu perfil na plataforma.

## 2. Fluxo Básico de Eventos
1. O usuário acessa a área de gerenciamento de conta.
2. O usuário escolhe a opção de acessar seu perfil (RF19).
3. O sistema exibe as informações do perfil do usuário.

## 3. Fluxos Alternativos
- Não há
## 4. Fluxos de Exceção
1. Se houver falha no acesso ao perfil, o sistema notifica o usuário e oferece suporte técnico.

## 5. Pré-Condições
1. O usuário está autenticado no sistema.
2. O usuário possui um perfil ativo no sistema.

## 6. Pós-Condições
- O perfil do usuário é acessível e exibido corretamente.

## 7. Pontos de Extensão
- Não há pontos de extensão definidos para este caso de uso.

## 8. Requisitos Especiais
1. O sistema deve garantir a segurança durante o acesso às informações do perfil do usuário.

## 9. Informações Adicionais
Nenhuma informação adicional fornecida.

# Especificação do Caso de Uso 07
# CDU-07 Gerenciar Alteração de Perfil

## 1. Breve Descrição
Este caso de uso permite que o usuário realize alterações em seu perfil na plataforma.

## 2. Fluxo Básico de Eventos
1. O usuário acessa a área de gerenciamento de conta.
2. O usuário escolhe a opção de alterar sua conta (RF20).
3. O sistema permite que o usuário faça as alterações necessárias de senha e de nome.

## 3. Fluxos Alternativos
- Se o usuário optar por não realizar alterações, ele pode retornar à página principal.

## 4. Fluxos de Exceção
1. Se houver falha no acesso ao perfil, o sistema notifica o usuário e oferece suporte técnico.

## 5. Pré-Condições
1. O usuário está autenticado no sistema.

## 6. Pós-Condições
- As alterações na conta do usuário são refletidas no sistema.

## 7. Pontos de Extensão
- Não há pontos de extensão definidos para este caso de uso.

## 8. Requisitos Especiais
1. O sistema deve garantir a segurança durante a alteração de informações da conta do usuário.

## 9. Informações Adicionais
Nenhuma informação adicional fornecida.

# Especificação do Caso de Uso 08
# CDU-08 Gerenciar Deleção de Perfil

## 1. Breve Descrição
Este caso de uso permite que o usuário exclua permanentemente seu perfil na plataforma.

## 2. Fluxo Básico de Eventos
1. O usuário acessa a área de gerenciamento de conta.
2. O usuário escolhe a opção de deletar sua conta (RF18).
3. O sistema solicita confirmação do usuário.
4. O usuário confirma a exclusão da conta.

## 3. Fluxos Alternativos
- Se a confirmação da exclusão não for recebida, o sistema mantém a conta do usuário.

## 4. Fluxos de Exceção
1. Se houver falha no acesso ao perfil, o sistema notifica o usuário e oferece suporte técnico.

## 5. Pré-Condições
1. O usuário está autenticado no sistema.
2. O usuário possui um perfil ativo no sistema.

## 6. Pós-Condições
- A conta do usuário é deletada do sistema, se confirmada.

## 7. Pontos de Extensão
- Não há pontos de extensão definidos para este caso de uso.

## 8. Requisitos Especiais
1. O sistema deve garantir a segurança durante a deleção da conta do usuário.

## 9. Informações Adicionais
Nenhuma informação adicional fornecida.


# Especificação de Caso de Uso: CDU-09 Gerenciar Plano de Gastos para Economia

| Número do Caso de Uso | CDU-09 |
| --- | --- |
| **Nome do Caso de Uso** | Gerenciar Plano de Gastos para Economia |
| **Versão** | 1.0 |
| **Data de Criação** | 13/11/2023 |
| **Responsável** | Juan Pablo |

## 1. Breve Descrição

Este caso de uso permite que o usuário defina um plano de gastos com objetivos de economia, incluindo a definição de teto de gastos para cada categoria de despesas e objetivos de economia.

## 2. Fluxo Básico de Eventos

| Passo | Descrição |
| --- | --- |
| 2.1 | O usuário acessa a área de gerenciamento de plano de gastos. |
| 2.2 | O usuário escolhe a opção de definir teto de gastos para cada categoria de despesas (RF12). |
| 2.3 | O sistema exibe as categorias de despesas disponíveis. |
| 2.4 | O usuário define os tetos de gastos para cada categoria. |
| 2.5 | O usuário escolhe a opção de definir objetivos de economia (RF13). |
| 2.6 | O sistema exibe as opções de objetivos de economia. |
| 2.7 | O usuário define os objetivos de economia para o período desejado. |

## 3. Fluxos Alternativos

### 3.1 Área de Funcionalidade: Definir Teto de Gastos

#### 3.1.1 A1 Primeiro Fluxo Alternativo

- Se o usuário decidir não definir tetos de gastos, ele pode retornar à página principal.

### 3.2 Área de Funcionalidade: Definir Objetivos de Economia

#### 3.2.1 A2 Segundo Fluxo Alternativo

- Se o usuário decidir não definir objetivos de economia, ele pode retornar à página principal.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
| --- | --- | --- |
| 4.1 | FE1 | Se houver falha na exibição das categorias de despesas, o sistema notifica o usuário e oferece suporte técnico. |
| 4.2 | FE2 | Se a definição de tetos de gastos ou objetivos de economia não for concluída com sucesso, o sistema notifica o usuário e permite nova tentativa. |

## 5. Pré-Condições

| Número | Descrição |
| --- | --- |
| 5.1 | O usuário está autenticado no sistema. |
| 5.2 | Não há restrições específicas para a definição de tetos de gastos ou objetivos de economia. |

## 6. Pós-Condições

| Número | Descrição |
| --- | --- |
| 6.1 | Os tetos de gastos para cada categoria são registrados no sistema. |
| 6.2 | Os objetivos de economia são registrados no sistema. |

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
| --- | --- | --- |
| 7.1 | - | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
| --- | --- |
| 8.1 | O sistema deve garantir a atualização em tempo real dos tetos de gastos e objetivos de economia. |

## 9. Informações Adicionais

- Nenhuma informação adicional fornecida.

# Especificação de Caso de Uso: CDU-10 Gerenciar Transações Financeiras

| Número do Caso de Uso | CDU-10 |
| --- | --- |
| **Nome do Caso de Uso** | Gerenciar Transações Financeiras |
| **Versão** | 1.0 |
| **Data de Criação** | 13/11/2023 |
| **Responsável** | Juan Pablo|

## 1. Breve Descrição

Este caso de uso permite que o usuário tenha controle de suas transações financeiras, incluindo o registro de transferências.

## 2. Fluxo Básico de Eventos

| Passo | Descrição |
| --- | --- |
| 2.1 | O usuário acessa a área de gerenciamento de transações financeiras. |
| 2.2 | O usuário escolhe a opção de registrar transferências (RF15). |
| 2.3 | O sistema exibe um formulário para o usuário inserir os detalhes da transferência. |
| 2.4 | O usuário fornece as informações necessárias. |
| 2.5 | O sistema valida as informações e registra a transferência. |

## 3. Fluxos Alternativos

### 3.1 Área de Funcionalidade: Registro de Transferências

#### 3.1.1 A1 Primeiro Fluxo Alternativo

- Se o usuário decidir não registrar transferências, ele pode retornar à página principal.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
| --- | --- | --- |
| 4.1 | FE1 | Se houver falha na validação das informações da transferência, o sistema notifica o usuário e destaca os campos inválidos. |

## 5. Pré-Condições

| Número | Descrição |
| --- | --- |
| 5.1 | O usuário está autenticado no sistema. |
| 5.2 | Não há restrições específicas para o registro de transferências. |

## 6. Pós-Condições

| Número | Descrição |
| --- | --- |
| 6.1 | A transferência é registrada no sistema e associada ao perfil do usuário. |

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
| --- | --- | --- |
| 7.1 | - | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
| --- | --- |
| 8.1 | O sistema deve garantir a segurança durante o registro e armazenamento das informações de transferências financeiras. |

## 9. Informações Adicionais

- Nenhuma informação adicional fornecida.

# Especificação de Caso de Uso: CDU-11 Definir Estatísticas

| Número do Caso de Uso | CDU-11 |
| --- | --- |
| **Nome do Caso de Uso** | Definir Estatísticas |
| **Versão** | 1.0 |
| **Data de Criação** | 13/11/2023 |
| **Responsável** | Juan Pablo |

## 1. Breve Descrição

Este caso de uso permite que o usuário visualize gráficos estatísticos de suas economias, incluindo a geração de gráfico de gastos no final do mês e a criação de gráfico sobre as transações financeiras.

## 2. Fluxo Básico de Eventos

| Passo | Descrição |
| --- | --- |
| 2.1 | O usuário acessa a área de visualização de estatísticas. |
| 2.2 | O usuário escolhe a opção de gerar gráfico de gastos no final do mês (RF16). |
| 2.3 | O sistema exibe o gráfico com a distribuição de gastos ao longo do mês. |
| 2.4 | O usuário escolhe a opção de criar gráfico sobre as transações financeiras (RF17). |
| 2.5 | O sistema permite que o usuário selecione parâmetros para o gráfico de transações financeiras. |
| 2.6 | O sistema gera e exibe o gráfico com base nos parâmetros selecionados. |

## 3. Fluxos Alternativos

### 3.1 Área de Funcionalidade: Gerar Gráfico de Gastos

#### 3.1.1 A1 Primeiro Fluxo Alternativo

- Se o usuário decidir não gerar o gráfico de gastos, ele pode retornar à página principal.

### 3.2 Área de Funcionalidade: Criar Gráfico sobre Transações Financeiras

#### 3.2.1 A2 Segundo Fluxo Alternativo

- Se o usuário não selecionar parâmetros para o gráfico de transações financeiras, o sistema exibe um gráfico padrão.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
| --- | --- | --- |
| 4.1 | FE1 | Se houver falha na geração ou exibição dos gráficos, o sistema notifica o usuário e oferece suporte técnico. |

## 5. Pré-Condições

| Número | Descrição |
| --- | --- |
| 5.1 | O usuário está autenticado no sistema. |
| 5.2 | Dados suficientes estão disponíveis para a geração dos gráficos. |

## 6. Pós-Condições

| Número | Descrição |
| --- | --- |
| 6.1 | Os gráficos são exibidos para o usuário com base nas escolhas feitas. |

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
| --- | --- | --- |
| 7.1 | - | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
| --- | --- |
| 8.1 | O sistema deve garantir a precisão e clareza na representação gráfica das estatísticas. |

## 9. Informações Adicionais

- Os gráficos gerados são destinados apenas para fins informativos e análise do usuário.

# Especificação de Caso de Uso: CDU-12 Gerenciar Alteração de Despesas

- **Número do Caso de Uso:** CDU-12
- **Nome do Caso de Uso:** Gerenciar Alteração de Despesas
- **Versão:** 1.0
- **Data de Criação:** 20/11/2023
- **Responsável:** Juan Pablo e João Lucas

## 1. Breve Descrição

Este caso de uso permite que o usuário realize alterações em suas despesas já registradas.

## 2. Fluxo Básico de Eventos

### 2.1
O usuário acessa a seção de gerenciamento de despesas.

### 2.2
Seleciona a opção de alterar despesas (RF4).

### 2.3
O sistema exibe a lista de despesas disponíveis para edição.

### 2.4
O usuário seleciona a despesa desejada e realiza as alterações necessárias.

## 3. Fluxos Alternativos

### 3.1 Área de Funcionalidade: Alteração de Despesas

#### 3.1.1 A1 Primeiro Fluxo Alternativo

##### 3.1.1.1
Se as informações fornecidas pelo usuário para a alteração forem inválidas, o sistema exibe uma mensagem de erro.

#### 3.1.2 A2 Segundo Fluxo Alternativo

##### 3.1.2.1
Se o usuário decidir não realizar alterações, ele pode retornar à página principal.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
|--------|------------------|-----------|
| 4.1    | FE1              | Se houver falha no acesso às despesas, o sistema notifica o usuário e oferece suporte técnico. |

## 5. Pré-Condições

| Número | Descrição |
|--------|-----------|
| 5.1    | O usuário está autenticado no sistema. |
| 5.2    | Existem despesas registradas. |

## 6. Pós-Condições

| Número | Descrição |
|--------|-----------|
| 6.1    | As alterações nas despesas são refletidas no sistema. |

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
|--------|---------------------------|-----------|
| 7.1    | -                         | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
|--------|-----------|
| 8.1    | O sistema deve garantir a segurança durante a alteração das informações de despesas. |

## 9. Informações Adicionais

Nenhuma informação adicional fornecida.

# Especificação de Caso de Uso: CDU-13 Gerenciar Registros de Despesas

- **Número do Caso de Uso:** CDU-13
- **Nome do Caso de Uso:** Gerenciar Registros de Despesas
- **Versão:** 1.0
- **Data de Criação:** 20/11/2023
- **Responsável:** Juan Pablo e João Lucas

## 1. Breve Descrição

Este caso de uso permite que o usuário registre suas despesas mensais.

## 2. Fluxo Básico de Eventos

### 2.1
O usuário acessa a seção de registro de despesas mensais.

### 2.2
Seleciona a opção de registrar despesas mensais (RF9).

### 2.3
O sistema exibe um formulário para o usuário preencher as informações referentes às despesas do mês.

## 3. Fluxos Alternativos

### 3.1 Área de Funcionalidade: Registro de Despesas Mensais

#### 3.1.1 A1 Primeiro Fluxo Alternativo

##### 3.1.1.1
Se o usuário decidir não registrar despesas mensais, ele pode cancelar o processo.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
|--------|------------------|-----------|
| 4.1    | FE1              | Se houver falha no acesso ao formulário de registro, o sistema notifica o usuário e oferece suporte técnico. |

## 5. Pré-Condições

| Número | Descrição |
|--------|-----------|
| 5.1    | O usuário está autenticado no sistema. |

## 6. Pós-Condições

| Número | Descrição |
|--------|-----------|
| 6.1    | As despesas mensais são registradas no sistema. |

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
|--------|---------------------------|-----------|
| 7.1    | -                         | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
|--------|-----------|
| 8.1    | O sistema deve garantir a segurança durante o registro das despesas mensais. |

## 9. Informações Adicionais

Nenhuma informação adicional fornecida.

# Especificação de Caso de Uso: CDU-14 Gerenciar Deleção de Despesas

- **Número do Caso de Uso:** CDU-14
- **Nome do Caso de Uso:** Gerenciar Deleção de Despesas
- **Versão:** 1.0
- **Data de Criação:** 20/11/2023
- **Responsável:** Juan Pablo e João Lucas

## 1. Breve Descrição

Este caso de uso permite que o usuário exclua despesas previamente registradas.

## 2. Fluxo Básico de Eventos

### 2.1
O usuário acessa a seção de gerenciamento de despesas.

### 2.2
Seleciona a opção de deletar despesas (RF5).

### 2.3
O sistema exibe a lista de despesas disponíveis para exclusão.

### 2.4
O usuário seleciona a despesa que deseja excluir.

### 2.5
O sistema solicita confirmação do usuário.

### 2.6
O usuário confirma a exclusão da despesa.

## 3. Fluxos Alternativos

- Se a confirmação da exclusão não for recebida, o sistema mantém a despesa.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
|--------|------------------|-----------|
| 4.1    | FE1              | Se houver falha no acesso às despesas, o sistema notifica o usuário e oferece suporte técnico. |

## 5. Pré-Condições

| Número | Descrição |
|--------|-----------|
| 5.1    | O usuário está autenticado no sistema. |
| 5.2    | Existem despesas registradas. |

## 6. Pós-Condições

| Número | Descrição |
|--------|-----------|
| 6.1    | A despesa é removida do sistema, se confirmada. |

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
|--------|---------------------------|-----------|
| 7.1    | -                         | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
|--------|-----------|
| 8.1    | O sistema deve garantir a segurança durante a exclusão das despesas. |

## 9. Informações Adicionais

Nenhuma informação adicional fornecida.

# Especificação de Caso de Uso: CDU-15 Gerenciar Categorização de Despesas

- **Número do Caso de Uso:** CDU-15
- **Nome do Caso de Uso:** Gerenciar Categorização de Despesas
- **Versão:** 1.0
- **Data de Criação:** 20/11/2023
- **Responsável:** Juan Pablo e João Lucas

## 1. Breve Descrição

Este caso de uso permite que o usuário atribua categorias às suas despesas para melhor organização.

## 2. Fluxo Básico de Eventos

### 2.1
O usuário acessa a seção de gerenciamento de despesas.

### 2.2
Seleciona a opção de categorizar despesas (RF6).

### 2.3
O sistema exibe a lista de despesas disponíveis para categorização.

### 2.4
O usuário seleciona a despesa e escolhe a categoria desejada.

## 3. Fluxos Alternativos

- Se o usuário decidir não categorizar uma despesa, ele pode retornar à página principal.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
|--------|------------------|-----------|
| 4.1    | FE1              | Se houver falha no acesso às despesas, o sistema notifica o usuário e oferece suporte técnico. |

## 5. Pré-Condições

| Número | Descrição |
|--------|-----------|
| 5.1    | O usuário está autenticado no sistema. |
| 5.2    | Existem despesas registradas. |

## 6. Pós-Condições

| Número | Descrição |
|--------|-----------|
| 6.1    | A categoria é atribuída à despesa no sistema. |

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
|--------|---------------------------|-----------|
| 7.1    | -                         | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
|--------|-----------|
| 8.1    | O sistema deve garantir a segurança durante a categorização das despesas. |

## 9. Informações Adicionais

Nenhuma informação adicional fornecida.

# Especificação de Caso de Uso: CDU-16 Gerenciar Pesquisa de Despesas

- **Número do Caso de Uso:** CDU-16
- **Nome do Caso de Uso:** Gerenciar Pesquisa de Despesas
- **Versão:** 1.0
- **Data de Criação:** 20/11/2023
- **Responsável:** Juan Pablo e João Lucas

## 1. Breve Descrição

Este caso de uso permite que o usuário pesquise suas despesas com base em termos específicos.

## 2. Fluxo Básico de Eventos

### 2.1
O usuário acessa a seção de gerenciamento de despesas.

### 2.2
Seleciona a opção de pesquisar gastos (RF8).

### 2.3
O sistema exibe uma barra de pesquisa.

### 2.4
O usuário insere os termos de pesquisa desejados.

### 2.5
O sistema exibe as despesas que correspondem aos termos de pesquisa.

## 3. Fluxos Alternativos

- Se o usuário decidir não realizar uma pesquisa, ele pode continuar visualizando a lista padrão de despesas.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
|--------|------------------|-----------|
| 4.1    | FE1              | Se houver falha no acesso às despesas ou na execução da pesquisa, o sistema notifica o usuário e oferece suporte técnico. |

## 5. Pré-Condições

| Número | Descrição |
|--------|-----------|
| 5.1    | O usuário está autenticado no sistema. |
| 5.2    | Existem despesas registradas. |

## 6. Pós-Condições

O sistema exibe as despesas de acordo com os resultados da pesquisa.

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
|--------|---------------------------|-----------|
| 7.1    | -                         | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
|--------|-----------|
| 8.1    | O sistema deve garantir a segurança das informações do usuário durante a pesquisa de despesas. |

## 9. Informações Adicionais

Nenhuma informação adicional fornecida.

# Especificação de Caso de Uso: CDU-17 Gerenciar Filtro de Despesas

- **Número do Caso de Uso:** CDU-17
- **Nome do Caso de Uso:** Gerenciar Filtro de Despesas
- **Versão:** 1.0
- **Data de Criação:** 20/11/2023
- **Responsável:** Juan Pablo e João Lucas

## 1. Breve Descrição

Este caso de uso permite que o usuário filtre suas despesas com base em categorias específicas.

## 2. Fluxo Básico de Eventos

### 2.1
O usuário acessa a seção de gerenciamento de despesas.

### 2.2
Seleciona a opção de filtrar os gastos por categoria de gastos (RF7).

### 2.3
O sistema exibe uma lista de categorias disponíveis.

### 2.4
O usuário escolhe a categoria desejada.

### 2.5
O sistema exibe as despesas associadas à categoria selecionada.

## 3. Fluxos Alternativos

- Se o usuário decidir não aplicar um filtro, a lista padrão de despesas é exibida.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
|--------|------------------|-----------|
| 4.1    | FE1              | Se houver falha no acesso às categorias ou despesas, o sistema notifica o usuário e oferece suporte técnico. |

## 5. Pré-Condições

| Número | Descrição |
|--------|-----------|
| 5.1    | O usuário está autenticado no sistema. |
| 5.2    | Existem despesas categorizadas. |

## 6. Pós-Condições

O sistema exibe as despesas de acordo com o filtro aplicado.

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
|--------|---------------------------|-----------|
| 7.1    | -                         | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
|--------|-----------|
| 8.1    | O sistema deve garantir a segurança das informações do usuário durante o uso do filtro de despesas. |

## 9. Informações Adicionais

Nenhuma informação adicional fornecida.







## Critério de priorização
Os campos de valor de négocio, viabilidade e complexidade podem variar de 1 a 5, sendo 0 o valor mínimo e 5 o valor máximo. O caso de uso será priorizado se seu MVP for maior ou igual 6 (MVP >= 6).

    MVP = Valor de negócio + Viabilidade - Complexidade

 - Valor de negócio: O quanto o caso de uso agrega valor ao produto, se um caso de uso tem valor de negócio 5 significa que ele é um ponto vital do sistema, não podendo ficar fora do MVP. Se um caso de uso tem valor de negócio 1 , significa que não agrega valor algum ao sistema, não pertencendo ao MVP. <b>É validado pelo cliente</b>.
 - Viabilidade: Se refere a viabilidade de desenvolvimento do caso de uso no tempo disponível. Quanto mais perto de 5, mais viável é o caso de uso, quanto mais perto de 1, menos viável.
 - Complexidade: O quão difícil os integrantes consideram o caso de uso. Quanto mais perto de 5, maior é a complexidade, quanto mais perto de 1, menos complexo.

### Valor de negócio
|escala| prioridade|                                                                                                  
| ----- | ------------| 
| 1 | Muito baixa |
| 2 | Baixa |
| 3 | Média |
| 4 | Alta |
| 5 | Muito alta, vital |       

### Viabilidade
|escala| Viabilidade no tempo disponível|                                                                                                  
| ----- | ------------| 
| 1 | Muito baixa |
| 2 | Baixa |
| 3 | Média |
| 4 | Alta |
| 5 | Muito alta | 

### Complexidade
|escala| Nível de complexidade|                                                                                                  
| ----- | ------------| 
| 1 | Muito baixa |
| 2 | Baixa |
| 3 | Média |
| 4 | Alta |
| 5 | Muito alta, não fazemos ideia de como implementar | 

## Priorização de Backlog

| ID | Descrição                                        | Valor de negócio | Viabilidade | Complexidade | Pontuação | MVP |
| :----: | ------------------------------------------- | :--------------: | :---------: | :----------: | :-------: | :------: |
|CDU-01| O usuário pode cadastrar-se no sistema, fornecendo as informações necessárias  |        5         |      5      |      2       |     8     | ✅ |
|CDU-02| O usuário pode fazer login no sistema, fornecendo suas credenciais  |      5     |   5|    2      |     8    |✅|
|CDU-03| O usuário pode cadastrar até três contas bancárias associadas ao seu perfil |   4   |      5   |    2   |     5  |❌ |
|CDU-04|Relata os ganhos financeiros do usuário  |        5         |     5      |    2       |    8     |✅ |
|CDU-05| O usuário tem informações de como estão suas economias |     4       |   5       |      1      |  5   |❌ |
|CDU-06  | O usuário pode acessar seu perfil |      5 |       5 |      4 | 6    |✅ |
|CDU-07| O usuário pode alterar seu perfil |    4 |   5      |   3   |    6    |✅ |
|CDU-08 |O usuário pode deletar seu perfil  |        4         |      5      |      2       |     7     |✅|
|CDU-09|O  usuário define um plano de gastos com objetivos de economia |        4         |      2      |      2       |     5     |❌|
|CDU-10| O usuário tem controle de suas transações financeiras|     4         |      5      |      2       |     7     |✅|
|CDU-11| O usuário visualiza gráficos estatísticos de suas economias|     4         |      5      |      2       |     7     |✅|
|CDU-12 |  O usuário pode alterar suas depesas|     4         |      5      |      2       |     7     |✅|
|CDU-13 |  O usuário pode alterar registrar suas despesas |     4         |      5      |      3      |     78    |✅|
|CDU-14 | O usuário pode  deletar suas despesas |      4         |      5      |      2       |     3     |✅|
|CDU-15 |  O usuário pode  categorizar suas despesas |      4         |      5      |      2       |     8     |✅|
|CDU-16 | O usuário pode  pesquisar suas despesas |      4         |      5      |      2       |     7     |✅|
|CDU-17 | O usuário pode filtrar suas despesas |     4         |      5      |      23      |     8     |✅|


### MVP

Com base nos objetivos a serem atingidos no projeto, os Casos de Uso a fazerem parte do MVP foram selecionados:

|Objetivos| Casos de Uso do MVP |
|---|----|
|Aprimorar controle Financeiro| CDU-06 O usuário pode acessar seu perfil,CDU-07 O usuário pode alterar seu perfil,CDU-08 O usuário pode deletar seu perfil, CDU-10 O usuário tem controle de suas transações financeiras, CDU-04 Relata os ganhos financeiros do usuário  |
| Relatar gastos excessivos | CDU-01 O usuário pode cadastrar-se no sistema, fornecendo as informações necessárias,  CDU-02 O usuário pode fazer login no sistema, fornecendo suas credenciais|
|garantindo a análise de suas finanças| CDU-11 O usuário visualiza gráficos estatísticos de suas economias, CDU-12 O usuário pode alterar suas depesas,CDU-13   O usuário pode alterar registrar suas despesas, CDU-14  O usuário pode  deletar suas despesas, CDU-15   O usuário pode  categorizar suas despesas , CDU-16 O usuário pode  pesquisar suas despesas , CDU-17 O usuário pode filtrar suas despesas
|



### Definição de Preparado (DOR)

<p align="justify">&emsp;&emsp; A Declaração de Pronto (DOR) é um compromisso essencial estabelecido entre o time de desenvolvimento e o cliente, delineando meticulosamente o momento preciso em que um requisito estará plenamente preparado para ser integrado a uma iteração. Este acordo abrange diversos critérios que asseguram a qualidade e a prontidão do trabalho a ser realizado, visando uma execução eficiente e eficaz.</p>

 - O requisito, devidamente representado em um caso de uso, é considerado integral e passível de ser abordado de maneira completa e efetiva;
 - O caso de uso é minuciosamente especificado, atendendo de maneira abrangente a todos os requisitos necessários para ser trabalhado com sucesso;
 - A equipe de desenvolvimento alcançou um consenso unânime de que este caso de uso específico é não apenas viável, mas altamente recomendado para ser incorporado à iteração de desenvolvimento em questão;
 - A representação visual do caso de uso, através de uma interface ou protótipo, está completamente alinhada com as expectativas e requisitos do cliente;
 - Quaisquer dependências inerentes aos requisitos foram cuidadosamente identificadas e estão prontas para serem gerenciadas de forma eficiente durante o processo.

 ### Aplicação do Dor:

 <iframe src="https://docs.google.com/document/d/e/2PACX-1vS5KZdv4hQQmB5BJv66ZwuD_BLHH-PNOBlegvrOsHHuFBpH5mnt4AyURZ9xsJ_qE6KdbeAVaPwWR4cd/pub?embedded=true"></iframe>

### Definição de Pronto (DOD)

<p align="justify">&emsp;&emsp; A Declaração de Pronto (DOD) é um compromisso crucial que atesta não apenas a conclusão, mas a qualidade inquestionável do requisito produzido. A expressão "Done" vai além de uma mera confirmação; é a validação coletiva da satisfação integral com o trabalho realizado. Em conformidade com os mais elevados padrões de excelência, um requisito que não atenda aos rigorosos critérios de "Done" não apenas é retido, mas é excluído da possibilidade de ser liberado ou apresentado na iteração em curso.</p>

- Os casos de uso não apenas oferecem um incremento ao produto, mas proporcionam uma experiência palpável que foi validada e aprovada pelo cliente;
- Todos os fluxos de eventos e condições do caso de uso são seguidos de maneira meticulosa, garantindo uma implementação precisa e completa;
- O código relacionado às funcionalidades vinculadas ao caso de uso passa por uma revisão detalhada e é submetido à aprovação de pelo menos outro membro experiente da equipe, assegurando uma qualidade consistente e elevada.









## Histórico de versão

| Versão  | Autor| Descrição | Data |
| :---: | :----: | :-------: | :---: |
| 1.0| Juan Pablo |  Declaração dos Casos de Uso | 06/11/2023 |
| 1.1| Juan Pablo |  Especificação dos Casos de Uso | 14/11/2023 |
| 1.2| Juan Pablo | Atualiza MVP | 16/11/2023 |
| 1.3| João Lucas | Atualização de especificação dos Casos de Uso | 20/11/2023|