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
|CDU-01|Gerenciar casos de Usuário | O usuário pode cadastrar, logar e ainda cadastrar contas bancárias |RF1	Cadastrar usuário, RF2	Logar usuário, RF3	Cadastrar até 3 contas bancárias | Acesso do Usário |
|CDU-02|Gerenciar Ganhos| Relata os ganhos financeiros do usuário |  RF14	Registrar os ganhos mensais | Gastos Apresentados |
|CDU-03|Manter o suário informado | O usuário tem informações de como estão suas esconomias |RF10	Acompanhar progresso em direção às metas de economia, RF11	Notificar quando estiver a 10% do teto de gastos RF21	Destacar categorias de gastos mais frequentes| Uusário informado sobre suas finanças|
|CDU-04|Gerenciar conta do Usuário | O usuário pode alterar, acessar seu perfil e deletá-lo|RF18	Deletar conta, RF19	Acessar perfil do usuário, RF20	Alterar conta | Conta do usuário |
|CDU-05|Gerenciar plano de gastos para economia | O  usuário define um plano de gastos com objetivos de economia|RF12	Definir teto de gastos para cada categoria de despesas, RF13	Definir objetivos de economia | Plano de gastos|
|CDU-06|Gerenciar Transações Financeiras | O usuário tem controle de suas transações financeiras|RF15	Registrar transferências | Gerenciamentos de Transações financeiras|
|CDU-07|Definir Estatísticas | O usuário visulzias gráficos estatísticos de suas economias|RF16	Gerar gráfico de gastos no final do mês, RF17	Criar gráfico sobre as transações financeiras | Gerar Estatísticas  |
|CDU-08 | Gerenciar Despesas | O usuário pode alterar, deletar, registrar, categorizar, pesquisar e filtrar suas depesas | RF4	Alterar despesas, RF5	Deletar despesas, RF6	Categorizar despesas, RF9	Registrar despesas mensais, RF7	Filtrar os gastos por categoria de gastos, RF8	Pesquisar gastos | Despesas Apresentadas |

# Especificação dos Casos de Uso


# Especificação de Caso de Uso: CDU-01 Gerenciar casos de Usuário

| Número do Caso de Uso | CDU-01 |
| --- | --- |
| **Nome do Caso de Uso** | Gerenciar casos de Usuário |
| **Versão** | 1.0 |
| **Data de Criação** | 13/11/2023 |
| **Responsável** | Juan Pablo |

## 1. Breve Descrição

Este caso de uso permite que o usuário realize operações relacionadas à gestão de seu perfil, incluindo o cadastro, login e o gerenciamento de até três contas bancárias associadas.

## 2. Fluxo Básico de Eventos

| Passo | Descrição |
| --- | --- |
| 2.1 | O usuário acessa o sistema. |
| 2.2 | O usuário escolhe a opção de cadastrar um novo usuário (RF1). |
| 2.3 | O sistema solicita as informações necessárias para o cadastro do usuário. |
| 2.4 | O usuário fornece os dados necessários. |
| 2.5 | O sistema valida as informações e cadastra o usuário. |
| 2.6 | O usuário escolhe a opção de fazer login (RF2). |
| 2.7 | O sistema solicita as credenciais do usuário. |
| 2.8 | O usuário fornece as credenciais e o sistema valida. |
| 2.9 | O sistema autentica o usuário e o direciona para a área logada. |
| 2.10 | O usuário escolhe a opção de cadastrar conta bancária (RF3). |
| 2.11 | O sistema solicita as informações da conta bancária. |
| 2.12 | O usuário fornece os dados necessários. |
| 2.13 | O sistema valida as informações e associa a conta bancária ao usuário. |

## 3. Fluxos Alternativos

### 3.1 Área de Funcionalidade: Cadastro de Usuário

#### 3.1.1 A1 Primeiro Fluxo Alternativo

##### 3.1.1.1 Um Subfluxo Alternativo

- Se as informações fornecidas pelo usuário no cadastro forem inválidas, o sistema exibe uma mensagem de erro.

#### 3.1.2 A2 Segundo Fluxo Alternativo

- Se o usuário já possuir uma conta, ele pode optar por fazer login em vez de cadastrar um novo usuário.

### 3.2 Outra Área de Funcionalidade: Cadastro de Conta Bancária

#### 3.2.1 AN Outro Fluxo Alternativo

- Se as informações da conta bancária fornecidas forem inválidas, o sistema notifica o usuário e não realiza o cadastro.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
| --- | --- | --- |
| 4.1 | FE1 | Se houver falha na autenticação durante o login, o sistema notifica o usuário e oferece opções para recuperação de senha. |
| 4.2 | FE2 | Se houver falha na validação das informações do cadastro, o sistema notifica o usuário sobre os campos inválidos. |

## 5. Pré-Condições

| Número | Descrição |
| --- | --- |
| 5.1 | O sistema está operacional. |
| 5.2 | Não há restrições específicas para o cadastro de novos usuários. |

## 6. Pós-Condições

| Número | Descrição |
| --- | --- |
| 6.1 | O usuário está autenticado no sistema. |
| 6.2 | As informações do cadastro e as contas bancárias associadas foram registradas no sistema. |

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
| --- | --- | --- |
| 7.1 | - | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
| --- | --- |
| 8.1 | O sistema deve garantir a segurança das informações do usuário durante o cadastro e login. |

## 9. Informações Adicionais

- Nenhuma informação adicional fornecida.




# Especificação de Caso de Uso: CDU-02 Gerenciar Ganhos

| Número do Caso de Uso | CDU-02 |
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

# Especificação de Caso de Uso: CDU-03 Manter o Usuário Informado

| Número do Caso de Uso | CDU-03 |
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

# Especificação de Caso de Uso: CDU-04 Gerenciar Conta do Usuário

| Número do Caso de Uso | CDU-04 |
| --- | --- |
| **Nome do Caso de Uso** | Gerenciar Conta do Usuário |
| **Versão** | 1.0 |
| **Data de Criação** | 13/11/2023 |
| **Responsável** | Juan Pablo|

## 1. Breve Descrição

Este caso de uso permite que o usuário altere, acesse seu perfil e delete sua conta no sistema.

## 2. Fluxo Básico de Eventos

| Passo | Descrição |
| --- | --- |
| 2.1 | O usuário acessa a área de gerenciamento de conta. |
| 2.2 | O usuário escolhe a opção de acessar seu perfil (RF19). |
| 2.3 | O sistema exibe as informações do perfil do usuário. |
| 2.4 | O usuário escolhe a opção de alterar sua conta (RF20). |
| 2.5 | O sistema permite que o usuário faça as alterações necessárias. |
| 2.6 | O usuário escolhe a opção de deletar sua conta (RF18). |
| 2.7 | O sistema solicita confirmação do usuário. |
| 2.8 | O usuário confirma a exclusão da conta. |

## 3. Fluxos Alternativos

### 3.1 Área de Funcionalidade: Alterar Conta

#### 3.1.1 A1 Primeiro Fluxo Alternativo

- Se o usuário decidir não realizar alterações, ele pode retornar à página principal.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
| --- | --- | --- |
| 4.1 | FE1 | Se houver falha no acesso ao perfil, o sistema notifica o usuário e oferece suporte técnico. |
| 4.2 | FE2 | Se a confirmação da exclusão não for recebida, o sistema mantém a conta do usuário. |

## 5. Pré-Condições

| Número | Descrição |
| --- | --- |
| 5.1 | O usuário está autenticado no sistema. |
| 5.2 | O usuário possui um perfil ativo no sistema. |

## 6. Pós-Condições

| Número | Descrição |
| --- | --- |
| 6.1 | As alterações na conta do usuário são refletidas no sistema. |
| 6.2 | O perfil do usuário é acessível e exibido corretamente. |
| 6.3 | A conta do usuário é deletada do sistema, se confirmada. |

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
| --- | --- | --- |
| 7.1 | - | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
| --- | --- |
| 8.1 | O sistema deve garantir a segurança durante o acesso e alteração de informações da conta do usuário. |

## 9. Informações Adicionais

- Nenhuma informação adicional fornecida.

# Especificação de Caso de Uso: CDU-05 Gerenciar Plano de Gastos para Economia

| Número do Caso de Uso | CDU-05 |
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

# Especificação de Caso de Uso: CDU-06 Gerenciar Transações Financeiras

| Número do Caso de Uso | CDU-06 |
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

# Especificação de Caso de Uso: CDU-07 Definir Estatísticas

| Número do Caso de Uso | CDU-07 |
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

# Especificação de Caso de Uso: CDU-08 Gerenciar Despesas

| Número do Caso de Uso | CDU-08 |
| --- | --- |
| **Nome do Caso de Uso** | Gerenciar Despesas |
| **Versão** | 1.0 |
| **Data de Criação** | 13/11/2023 |
| **Responsável** | Juan Pablo |

## 1. Breve Descrição

Este caso de uso permite que o usuário altere, delete, registre, categorize, pesquise e filtre suas despesas, proporcionando um controle detalhado sobre suas finanças.

## 2. Fluxo Básico de Eventos

| Passo | Descrição |
| --- | --- |
| 2.1 | O usuário acessa a área de gerenciamento de despesas. |
| 2.2 | O usuário escolhe a opção de registrar despesas mensais (RF9). |
| 2.3 | O sistema exibe um formulário para o usuário inserir os detalhes da despesa. |
| 2.4 | O usuário fornece as informações necessárias. |
| 2.5 | O sistema valida as informações e registra a despesa. |
| 2.6 | O usuário escolhe a opção de alterar despesas existentes (RF4). |
| 2.7 | O sistema lista as despesas existentes e permite que o usuário selecione a despesa a ser alterada. |
| 2.8 | O usuário realiza as alterações desejadas. |
| 2.9 | O usuário escolhe a opção de deletar despesas (RF5). |
| 2.10 | O sistema lista as despesas existentes e permite que o usuário selecione a despesa a ser deletada. |
| 2.11 | O usuário confirma a exclusão da despesa. |
| 2.12 | O usuário escolhe a opção de categorizar despesas (RF6). |
| 2.13 | O sistema exibe as despesas e permite que o usuário atribua categorias a cada uma. |
| 2.14 | O usuário escolhe a opção de pesquisar gastos (RF8). |
| 2.15 | O sistema exibe um campo de pesquisa onde o usuário insere os termos desejados. |
| 2.16 | O sistema lista as despesas que correspondem à pesquisa. |
| 2.17 | O usuário escolhe a opção de filtrar gastos por categoria de gastos (RF7). |
| 2.18 | O sistema exibe as opções de categorias de gastos disponíveis. |
| 2.19 | O usuário seleciona uma categoria e o sistema filtra as despesas correspondentes. |

## 3. Fluxos Alternativos

### 3.1 Área de Funcionalidade: Registro de Despesas

#### 3.1.1 A1 Primeiro Fluxo Alternativo

- Se o usuário decidir não registrar despesas, ele pode retornar à página principal.

### 3.2 Área de Funcionalidade: Alterar Despesas

#### 3.2.1 A2 Segundo Fluxo Alternativo

- Se o usuário decidir não realizar alterações, ele pode retornar à página principal.

### 3.3 Área de Funcionalidade: Deletar Despesas

#### 3.3.1 A3 Terceiro Fluxo Alternativo

- Se o usuário não confirmar a exclusão da despesa, o sistema mantém a despesa.

### 3.4 Área de Funcionalidade: Categorizar Despesas

#### 3.4.1 A4 Quarto Fluxo Alternativo

- Se o usuário decidir não categorizar as despesas, ele pode retornar à página principal.

### 3.5 Área de Funcionalidade: Pesquisar Gastos

#### 3.5.1 A5 Quinto Fluxo Alternativo

- Se o usuário não encontrar resultados correspondentes à pesquisa, o sistema notifica o usuário.

### 3.6 Área de Funcionalidade: Filtrar Gastos por Categoria

#### 3.6.1 A6 Sexto Fluxo Alternativo

- Se o usuário decidir não filtrar os gastos por categoria, ele pode retornar à página principal.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
| --- | --- | --- |
| 4.1 | FE1 | Se houver falha na validação das informações da despesa, o sistema notifica o usuário e destaca os campos inválidos. |

## 5. Pré-Condições

| Número | Descrição |
| --- | --- |
| 5.1 | O usuário está autenticado no sistema. |
| 5.2 | Não há restrições específicas para o registro, alteração, deleção, categorização, pesquisa e filtro de despesas. |

## 6. Pós-Condições

| Número | Descrição |
| --- | --- |
| 6.1 | As despesas são registradas, alteradas, deletadas, categorizadas, pesquisadas e filtradas no sistema conforme as escolhas do usuário. |

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
| --- | --- | --- |
| 7.1 | - | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
| --- | --- |
| 8.1 | O sistema deve garantir a segurança durante o registro, alteração, deleção, categorização, pesquisa e filtro de despesas. |

## 9. Informações Adicionais

- Nenhuma informação adicional fornecida.

### MVP

Com base nos objetivos a serem atingidos no projeto, os Casos de Uso a fazerem parte do MVP foram selecionados:

| Casos de Uso do MVP |
|:----:|
|CDU-01 - Gerenciar casos de Usuário |
|CDU-02 - Gerenciar Ganhos|
|CDU-04 - Gerenciar conta do Usuário |
|CDU-06 - Gerenciar Transações Financeiras |
|CDU-07 - Definir Estatísticas |
|CDU-08 - Gerenciar Despesas |






## Histórico de versão

| Versão  | Autor| Descrição | Data |
| :---: | :----: | :-------: | :---: |
| 1.0| Juan Pablo |  Declaração dos Casos de Uso | 06/11/2023 |
| 1.1| Juan Pablo |  Especificação dos Casos de Uso | 14/11/2023 |
| 1.2| Juan Pablo | Atualiza MVP | 16/11/2023 |