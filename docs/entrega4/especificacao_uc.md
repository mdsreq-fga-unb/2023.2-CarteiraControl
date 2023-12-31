# Especificação dos Casos de Uso - VoyageX

<p align="justify">  A especificação de casos de uso é uma técnica utilizada para capturar e descrever as interações entre um sistema e seus usuários. Eles fornecem uma visão detalhada de como o produto será utilizado na prática, ajudando a entender os requisitos funcionais. </p>

<p align="justify">  Nesta atividade foi proposto a construção dos Casos de uso do aplicativo fictício VoyageX. Com isso, segue abaixo a especificação dos Casos de Uso de Explorar Destinos, Reservar Acomodação e Realizar Login. A seguir, é apresentado o diagrama demonstrando o comportamento do sistema.  </p>


## Diagrama de Casos de Uso

<div style="width: 480px; height: 360px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:480px; height:360px" src="https://lucid.app/documents/embedded/5e68cc99-8ac2-4845-9a48-001935e25b16" id="TYXTOTEZFBK."></iframe></div>

## CDU-01 Explorar Destinos

| Número do Caso de Uso | CDU-01 |
| --- | --- |
| **Nome do Caso de Uso** | Explorar Destinos |
| **Versão** | 1.0 |
| **Data de Criação** | 06/12/2023 |
| **Responsável** | Jefferson e Tiago|

| **Breve Descrição** | O usuário explora artigos, fotografias e vídeos sobre destinos diversos para obter inspiração para suas viagens. |
| --- | --- |
| **Fluxo Básico de Eventos** | 
| Passo | Descrição |
| 1 | O usuário acessa a seção de "Explorar Destinos" no aplicativo. |
| 2 | O sistema sugere, no máximo, 10 novos destinos a serem explorados, destinos estes que devem ser parecidos com os destinos mais bem avaliados pelo usuário. |
| 3 | O usuário seleciona um destino sugerido pelo sistema. |
| 4 | O sistema apresenta as seguintes opções: <br> - fotografias, artigos e videos do destino; <br> - Atividades ocorrendo no destino.|
| 5 | O usuário seleciona fotografias, artigos e vídeos |
| 6 | O sistema mostra, no mínimo, 3 fotografias, 1 artigo(s) e 1 vídeo(s) sobre o destino.|
| 7 | O caso de uso termina |
| **Fluxos Alternativos** |
| **FA1 Primeiro Fluxo Alternativo** |No passo 3 do fluxo básico de eventos o usuário não seleciona um dos destino sugeridos, mas faz a pesquisa manualmente. <br> **Passo 3a**: Em vez de selecionar um destino sugerido pelo sistema, o usuário opta por realizar uma busca manual na seção "Explorar Destinos". <br> **Passo 3b**: O sistema permite que o usuário insira um destino específico de sua escolha, na barra de pesquisa. <br> **Passo 3c**: Volta para o passo 4 do fluxo básico de eventos |
| **FA2 Segundo Fluxo Alternativo** |No passo 4 do sistema o usuário consulta as atividades ocorrendo no local. <br> **Passo 4a**: O usuário consulta as atividades do destino ao invés de fotografias, artigos e vídeos.<br> **Passo 4b**: O sistema fornece todas as atividades que estão ocorrendo no destino explorado.<br> **Passo 4c:** O usuário filtra as atividades por preço e avaliações.<br> **Passo 4d**:O sistema fornece informações das atividades que estão ocorrendo no destino que está sendo explorado, satisfazendo os filtros selecionados. <br> **Passo 4e**:Volta para o passo 7 do fluxo básico de eventos|
| **Fluxos de Exceção** |
| Número | Descrição |
| 1 | FE1 - No passo 2, o usuário nunca ter acessado o aplicativo anteriormente e não possuir histórico. Vai para o passo **3a** do FA1. |
| 2 | FE2 - No Passo **3b** do fluxo alternativo A1, o usuário insere um destino inexistente, o sitema deve notificar o usuário para inserir destinos existentes. Vai para o passo **3b** do FA1 |
| **Pré-Condições** |
| Número | Descrição |
| 1 | O usuário realizou com sucesso o login na plataforma. |
| **Pós-Condições** |
| Número | Descrição |
|  1 | O usuário visualiza informações sobre diferentes destinos.
|  2 |O sistema está pronto para apresentar destinos sugeridos com base nas preferências e histórico do usuário.|
| **Requisitos Especiais** |
| Número | Descrição |
| 1 | O aplicativo deve ter acesso à internet para buscar informações atualizadas sobre destinos.|
| 2 |Os algoritmos de sugestão de destinos devem ser periodicamente atualizados para oferecer recomendações relevantes. |
| 


## CDU-02 Reservar Acomodações

| Número do Caso de Uso | CDU-02 |
| --- | --- |
| **Nome do Caso de Uso** | Reservar Acomodações |
| **Versão** | 1.0 |
| **Data de Criação** | 06/12/2023 |
| **Responsável** | Jefferson e Tiago|

| **Breve Descrição** | O usuário realiza a reserva da viagem diretamente pelo aplicativo. |
| --- | --- |
| **Fluxo Básico de Eventos** | 
| Passo | Descrição |
| 1 | O usuário, após explorar destinos, decide reservar acomodações para um período específico da viagem. |
| 2 | O sistema filtra todas as opções de hotéis, pousadas e atrações culturais disponíveis para o período determinado. |
| 3 | O usuário examina as opções disponíveis e seleciona, pelo menos, uma pousada de interesse. |
| 4 | O sistema apresenta, no mínimo, 3 foto(s) e uma descrição detalhada do local, bem como as opções de pacotes: <br> - pacotes pré-definidos; <br> - pacotes personalizados. |
| 5 | O usuário escolhe um pacote pré-definido, considerando características como comodidades, refeições incluídas e políticas de cancelamento. |
| 6 | Após a escolha do pacote, o sistema solicita a confirmação da reserva. |
| 7 | O usuário confirma a reserva, indicando a quantidade de hóspedes, forma de pagamento e quaisquer preferências adicionais. |
| 8| O sistema processa a reserva e fornece uma confirmação detalhada, incluindo as datas da estadia, custos associados e informações sobre a pousada. |
| 9 | Para facilitar a comunicação, o sistema disponibiliza um contato direto com o anfitrião, caso o usuário tenha perguntas ou solicitações específicas antes da chegada. |
| 10 | O caso de uso termina |
| **Fluxos Alternativos** |
| **A1 Primeiro Fluxo Alternativo** |No passo 5, o usuário não escolhe nenhum dos pacotes pré-definidos, mas faz a solicitação de um pacote personalizado. <br> **Passo 5a**: Após o usuário selecionar uma pousada e visualizar os pacotes padrão oferecidos, ele decide personalizar sua reserva. <br> **Passo 5b**: Em vez de escolher um dos pacotes padrão, o usuário opta por personalizar a estadia selecionando serviços adicionais, como serviço de quarto, pacotes especiais de comemoração, ou tours locais.<br> **Passo 5c**: O sistema oferece opções de personalização, apresentando preços adicionais para cada serviço escolhido. <br> **Passo 5d**  O usuário faz suas escolhas personalizadas e adiciona os serviços desejados à reserva.  <br> **Passo 5e** Após a personalização, o sistema recalcula o custo total da reserva com base nas escolhas feitas pelo usuário.      <br> **Passo 5f** O usuário confirma a reserva com os pacotes personalizados e procede ao pagamento. <br> **Passo 5g** Volta para o passo 6 do fluxo básico de eventos. |
| **Fluxos de Exceção** |
| Número | Descrição |
| 1 - Reserva Indisponível| FE1 - No passo 3, se a pousada selecionada não tiver disponibilidade para o período escolhido, o sistema exibe uma mensagem informando que não há vagas. Volta para o passo 3 do fluxo básico de eventos. |
| 2 - Falha na Confirmação de Reserva| FE2 - no passo 7, Após a confirmação da reserva, se houver uma falha no processamento, o sistema exibe uma mensagem de erro "falha na confirmação, tente novamente!". Volta para o passo 6 do fluxo básico de eventos. | 
| **Pré-Condições** |
| Número | Descrição |
| 1 | O usuário realizou com sucesso o login na plataforma. |
| 2 | O usuário pesquisou e selecionou um destino específico para a viagem |
| **Pós-Condições** |
| Número | Descrição |
| 1 | A reserva foi concluída com sucesso, e o usuário recebeu uma confirmação detalhada. |
| 2 | O sistema está pronto para apresentar destinos sugeridos com base nas preferências e histórico do usuário para futuras viagens. |
| **Requisitos Especiais** |
| Número | Descrição |
| 1 | O aplicativo deve integrar-se a sistemas de reservas de hotéis e pousadas para fornecer informações em tempo real sobre disponibilidade. |
| 2 | Medidas de segurança robustas devem ser implementadas para proteger as informações de pagamento do usuário durante o processo de reserva. |
| 3 | O sistema deve fornecer uma interface de fácil utilização para garantir uma experiência de reserva eficiente. |
| |

## CDU-03 Realizar Login

| Número do Caso de Uso | CDU-03 |
| --- | --- |
| **Nome do Caso de Uso** | Realizar Login |
| **Versão** | 1.0 |
| **Data de Criação** | 06/12/2023 |
| **Responsável** | Jefferson e Tiago|

| **Breve Descrição** | Este caso de uso descreve o processo de um usuário autenticar-se no aplicativo para acessar funcionalidades personalizadas. |
| --- | --- |
| **Fluxo Básico de Eventos** | 
| Passo | Descrição |
| 1 | O usuário abre o aplicativo no dispositivo |
| 2 | O sistema exibe a tela de login, solicitando nome de usuário ou e-mail e senha. |
| 3 | O usuário insere seu nome de usuário ou endereço de e-mail e senha |
| 4 | O sistema valida as credenciais inseridas |
| 5 | O aplicativo exibe a tela inicial personalizada com base no perfil do usuário. |
| 6 | O caso de uso termina |
| **Fluxos Alternativos** |
| **1. Recuperação de Senha** | No passo 2, o usuário esqueceu a senha definida anteriormente. <br> **Passo 2a**: O usuário esqueceu a senha e seleciona a opção "Esqueceu a senha?". <br> **Passo 2b**: O sistema envia um link de redefinição de senha para o e-mail registrado<br> **Passo 2c**: O usuário acessa o link e redefine a senha. |
| **Fluxos de Exceção** |
| Número | Descrição |
| 1 - Credenciais Inválidas | FE1 - No passo 4, se as credenciais inseridas (nome de usuário ou senha) não coincidirem com os registros do sistema, o sistema exibe uma mensagem de erro. Volta para o passo 3 do fluxo básico de eventos. |
| 2 - Conta Bloqueada | FE2 - No passo 3, Se houver várias tentativas de login com falha, o sistema bloqueia temporariamente a conta por motivos de segurança e exibe a mensagem "conta bloqueada temporariamente, tente novamente em alguns instantes". Volta para o passo 2 do fluxo básico de eventos.|
| **Pré-Condições** |
| Número | Descrição |
| 1 | O usuário possui uma conta registrada no aplicativo. |
| **Pós-Condições** |
| Número | Descrição |
| 1 | O usuário é autenticado com sucesso e tem acesso às funcionalidades personalizadas do aplicativo. |
| 2 | O sistema registra a última atividade de login para fins de segurança e auditoria. |
| **Requisitos Especiais** |
| Número | Descrição |
| 1 | O sistema deve armazenar de forma segura as informações de login dos usuários, utilizando práticas de segurança adequadas, como criptografia de senha. |
| 2 | O aplicativo deve fornecer uma opção de "Lembrar-me" para usuários que desejam permanecer autenticados entre sessões. |
| |


## Histórico de versão

| Versão  | Autor| Descrição | Data |
| :---: | :----: | :-------: | :---: |
| 1.0| Jefferson e Tiago |  Especificação dos casos de uso do VoyageX | 06/12 |
| 1.1| João e Tiago | Correção da Especificação dos casos de uso do VoyageX | 10/12 |