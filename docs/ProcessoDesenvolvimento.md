## 3. Processo de desenvolvimento de software

### 3.1 Critérios Sommerville

<p align="justify"> &emsp;&emsp;

Ao optarmos por uma estratégia de desenvolvimento de software, seguimos os critérios delineados por Sommerville (2018), cujo método compreende uma lista de perguntas abrangendo aspectos técnicos, humanos e organizacionais. Abaixo, é exibida a Figura 1, que ilustra os fatores de Sommerville (2018) acompanhados das suas respectivas soluções.</p>

<div align="center" style="text-align: center">
<img src="https://raw.githubusercontent.com/mdsreq-fga-unb/2023.2-ChaosManager/main/docs/assets/processo/sommerville.png">

<p>Figura 1: Fatores que influenciam a escolha do desenvolvimento dirigido a plano. Sommerville (2018).</p>
</div>

#### Questões Técnicas

- **Qual é o tamanho do sistema que está sendo desenvolvido?** É um sistema pequeno, mas com alta complexidade.

- **Que tipo de sistema está sendo desenvolvido?** Um app..

- **Qual é a vida útil prevista para o sistema?** Vida útil de média duração.

- **O sistema está sujeito a controle externo?** Sim.

#### Questões Humanas

- **Qual é o nível de competência dos projetistas e programadores do time de desenvolvimento?** Médio.

- **Como está organizado o time de desenvolvimento?** O time contém 6 pessoas.

- **Quais são as tecnologias disponíveis para apoiar o desenvolvimento do sistema?** Descrito no [tópico 1.4](#14-tecnologias-a-serem-utilizadas).

#### Questões Organizacionais

- **É importante ter uma especificação e um projeto (design) bem detalhados antes de passar para a implementação — talvez por motivos contratuais?** Sim,há uma quantidade de funcionalidades estáveis mas complexas, o que torna essencial especificar adequadamente o que estará dentro do escopo do projeto solicitado pelo cliente em decorrência do tempo de desenvolvimento disponível.

- **É realista uma estratégia de entrega iterativa-incremental, na qual o software é entregue aos clientes ou outros stakeholders e um rápido feedback é obtido?** Sim.

- **Os representantes do cliente estarão disponíveis e dispostos a participar do time de desenvolvimento?** Estão disponiveis de maneira parcial. Tendo mais liberdade no começo do projeto.

- **Existem questões culturais que possam afetar o desenvolvimento do sistema?** Não.

<p align="justify"> &emsp;&emsp;
Diante das proposições do Sommerville, concluimos os seguintes pontos:

&emsp;&emsp;O sistema é pequeno, mas complexo, há uma média quantidade de funcionalidades, o que torna essencial especificar adequadamente o que estará dentro do escopo do projeto em decorrência do tempo de desenvolvimento disponível, além de o grupo não possui completo conhecimento em todas as ferramentas a serem utilizadas, o que requer um alto grau de organização para um bom desempenho e desenvolver do projeto. </p>

### 3.2 Abordagem, Ciclo de Vida e Processo de Software

<p align = "justify"> &emsp;&emsp;
Após a análise das respostas chegamos ao resultado final de uma abordagem dirigida a plano baseado no processo UP (Processo Unificado). A Figura 2 valida o funcionamento do Processo Unificado:</p>

<div align="center" style="text-align: center">
<img src="https://raw.githubusercontent.com/mdsreq-fga-unb/2023.2-ChaosManager/main/docs/assets/processo/up.png">
<p>Figura 2: Diagrama do Processo Unificado.</p>
</div>

<p align = "justify"> &emsp;&emsp;
&emsp;&emsp;O Processo Unificado foi selecionado por tornar claro a necessidade de atribuições de tarefas aos envolvidos diretamente no desenvolvimento do projeto.
</p>

<p align="justify"> &emsp;&emsp;

Para desenvolver as atividades do projeto é necessário escolher uma abordagem que se adeque às especificidades do software, e para isso utilizaremos um método proposto pela IREB (2022) no qual é apresentado diferentes facetas e configurações 'típicas' para um processo de ER, representado na Figura 4. </p>

<div align="center" style="text-align: center">
<img src="https://raw.githubusercontent.com/mdsreq-fga-unb/2023.2-ChaosManager/main/docs/assets/processo/facetasireb.png">

<p>Figura 4: Facetas do processo de ER. IREB (2023).</p>
</div>

<p align="justify"> &emsp;&emsp;
Com base no que foi avaliado no sommerville e na abordagem de desenvolvimento ja definida, identificamos que faceta do <b>Processo de ER Contratual</b>  compartilhava seus principais pontos. Os pontos para análise foram:

<ul>
  <li>Customer-specific: o produto foi encomendado por um cliente específico, onde o cliente é a principal fonte de requisitos.</li>
  <li>Linear para Iterativo: devido ser um produto pequeno mas complexo, dividí-lo em pequenas iterações se torna uma forma de gerenciar e minimizar os riscos, as vezes, mas manter um constante linear de entregas é útil, em virtude das dependências entre as funcionalidades.</li>
  <li>Prescritivo: é um contrato e o dono do produto exige que as funcionalidades sejam implementadas.</li>
</ul>
</p>

### 3.3 Atividades

&emsp;&emsp;Por fim, diante do processo de desenvolvimento estabelecido, foi criado tabelas para orientar a realização das atividades, orientado pelo ciclo de vida do processo UP.</p>

#### TABELAS

#### Engenharia de requisitos do processo unificado

Conversão da Engenharia de Requisitos do Processo Unificado para novo modelo

O Processo Unificado já possui uma ER, com determinadas tarefas a serem seguidas.

|Atividades|Objetivo|
| :-: | :-: |
|[Captar um Vocabulário Comum](https://www.cin.ufpe.br/~gta/rup-vc/core.base_rup/tasks/capture_common_vocabulary_9BA76DA7.html)|Na disciplina Requisitos, você deve definir um vocabulário comum que utilize os termos e as expressões mais frequentes do domínio de problemas.|
|[Desenvolver a Visão](https://www.cin.ufpe.br/~gta/rup-vc/core.base_rup/tasks/develop_vision_D9584F04.html)|Esta tarefa descreve como desenvolver a visão geral para o sistema, incluindo o problema a ser resolvido, as partes interessadas chave, o escopo/limite do sistema, os recursos-chave do sistema e quaisquer restrições.|
|[Desenvolver Especificações Suplementares](https://www.cin.ufpe.br/~gta/rup-vc/core.base_rup/tasks/develop_supplementary_specification_52FC4CAE.html)|Capturar os requisitos que não são prontamente capturados em Casos de Uso, como requisitos de conformidade, de documentação, qualidades do sistema ou restrições.|
|[Desenvolver Plano de Gerenciamento de Requisitos](https://www.cin.ufpe.br/~gta/rup-vc/core.base_rup/tasks/develop_rm_plan_89FFEB9A.html)|A finalidade dessa tarefa é desenvolver um [Plano de Desenvolvimento de Requisitos](https://www.cin.ufpe.br/~gta/rup-vc/core.base_rup/workproducts/rup_requirements_management_plan_1CA2ED11.html) que especifique as informações e os mecanismos de controle que serão coletados e utilizados para medir, reportar e controlar mudanças nos requisitos de produtos. |
|[Detalhar os Requisitos de Software](https://www.cin.ufpe.br/~gta/rup-vc/core.base_rup/tasks/detail_software_requirements_A7F0A215.html)|A finalidade dessa tarefa é coletar, detalhar e organizar o conjunto (pacote) de produtos de trabalho que descrevem completamente os requisitos de software do sistema.|
|[Detalhar um Caso de Uso](https://www.cin.ufpe.br/~gta/rup-vc/core.base_rup/tasks/detail_a_use_case_D9BECBF4.html)|<p>Descrever um ou mais dos fluxos de eventos do caso de uso em detalhes suficientes para permitir que o desenvolvimento do software seja iniciado nele.</p><p>Detalhar o caso de uso para a compreensão e satisfação do representante agente ou cliente.</p>|
|[Estruturar o Modelo de Caso de Uso](https://www.cin.ufpe.br/~gta/rup-vc/core.base_rup/tasks/structure_use_case_model_93D8F44.html)|Esta tarefa é onde o modelo de casos de uso é estruturado, para tornar os requisitos mais fáceis de compreender e de manter. Isso inclui alavancar a semelhança entre casos de usos e agentes e identificar o comportamento excepcional e opcional.|
|[Gerenciar Dependências](https://www.cin.ufpe.br/~gta/rup-vc/core.base_rup/tasks/manage_dependencies_4F6CEFAA.html)|A finalidade dessa tarefa é utilizar os atributos e a rastreabilidade dos requisitos do projeto para auxiliar no gerenciamento do escopo do projeto e gerenciar os requisitos variáveis.|
|[Identificar Pedidos dos Envolvidos](https://www.cin.ufpe.br/~gta/rup-vc/value_creation/tasks/elicit_stakeholder_requests_vc_5B7948C2.html)|Pedidos dos Investidores são obtidos e reunidos ativamente a partir de origens existentes para obter uma "lista de desejos" do que os diferentes investidores do projeto (clientes, usuários, patrocinadores do produto) esperam ou desejam que o sistema inclua, juntamente com informações sobre como cada pedido foi considerado pelo projeto.|
|[Localizar Atores e Casos de Uso](https://www.cin.ufpe.br/~gta/rup-vc/core.base_rup/tasks/find_actors_and_use_cases_1ACB35F0.html)|Essa tarefa é onde os agentes e casos de uso são identificados para suportar os requisitos que estão sendo implementados. Identificar os agentes e os casos de uso explicitamente define o escopo do sistema.|
|[Priorizar Casos de Uso](https://www.cin.ufpe.br/~gta/rup-vc/value_creation/tasks/prioritize_use_cases_vc_5D6764AD.html)|Essa tarefa é onde os agentes e casos de uso são identificados para suportar os requisitos que estão sendo implementados. Identificar os agentes e os casos de uso explicitamente define o escopo do sistema.|
|[Revisar Requisitos](https://www.cin.ufpe.br/~gta/rup-vc/core.base_rup/tasks/review_requirements_5DF661FE.html)|A finalidade dessa tarefa é garantir formalmente que os resultados das tarefas dos requisitos estejam em conformidade com a visão que o cliente tem do sistema.|


## Etapas do Processo Unificado Aliadas às tarefas do Processo de Engenharia de Requisitos
Com o propósito de facilitar a execução das tarefas durante o desenvolvimento do projeto, foram identificadas as tarefas a serem realizadas nas 4 fazes do Processo Unificado. 

| Iniciação/Concepção | Elaboração| Construção | Transição |
| :---: | :----: | :-------: | :---: |
|   Elicitação e Descoberta|   Analise e Consenso, Organização e Atualização, Declaração e Representação   |   Organização e Atualização, Verificação e Validação |  Verificação e Validação |




### 3.4 Referências

> Handbook IREB CPRE Foundation Level, Version 1.1.0, september 2022.

> SCOTT, Kendall. The Unified process explained. Nov 26, 2001. Disponível em: <https://www.informit.com/articles/article.aspx?p=24671&seqNum=8>

> MARSICANO, George. Requisitos de Software: Introdução a Engenharia de Requisitos (ER). Brasília, 2023. Disponível em: <https://aprender3.unb.br/course/view.php?id=20236>. Acesso em: 16 set. 2023.

> SOMMERVILLE, Ian. Engenharia de software. 10.ed. São Paulo: Pearson Education do Brasil, 2018.

## Histórico de versão

| Versão  | Autor| Descrição | Data |
| :---: | :----: | :-------: | :---: |
|    1.0   |   Juan Pablo    |   Implementação do documento inicial |  27/09 |