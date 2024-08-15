# Integração de Modelos LLM com SwiftUI - Sabicao App

Este projeto é parte dos meus estudos contínuos de desenvolvimento com SwiftUI, focando na integração com dois dos modelos de linguagem de grande destaque atualmente: #ChatGPT e #Gemini.

## Objetivo do Projeto

O principal objetivo deste projeto é demonstrar como integrar e utilizar modelos de linguagem de grande escala (LLMs) em uma aplicação iOS utilizando SwiftUI. Através deste projeto, exploro diferentes APIs e padrões de arquitetura para otimizar a interação com esses modelos de IA.

## Tecnologias Utilizadas

- **SwiftUI**: Framework utilizado para construir a interface gráfica do aplicativo.
- **MVVM**: Arquitetura base do projeto, facilitando a separação de responsabilidades e a manutenção do código.
- **NavigationStack, State, Observable**: APIs essenciais do SwiftUI utilizadas na construção da interface.
- **Swift Package Manager (SPM)**: Ferramenta utilizada para gerenciar as dependências do projeto.

## Pacotes Integrados

O projeto faz uso de dois pacotes principais, que facilitam a integração com os modelos de linguagem:

- **generative-ai-swift**: Biblioteca que fornece interfaces para interagir com modelos generativos.
- **OpenAI**: Biblioteca que facilita a comunicação com o modelo ChatGPT.

## Estrutura do Projeto

A estrutura do projeto segue o padrão MVVM (Model-View-ViewModel), onde:

- **Model**: Representa os dados e a lógica de negócios.
- **View**: Responsável pela camada de interface com o usuário.
- **ViewModel**: Intermedia a comunicação entre o Model e o View, gerenciando o estado e as interações.

## Como Executar o Projeto

Para executar o projeto localmente, siga os passos abaixo:

1. Clone este repositório para o seu ambiente local.
2. Abra o projeto no Xcode.
3. Certifique-se de que todas as dependências estão corretamente instaladas. Para isso, utilize o Swift Package Manager (SPM) para baixar e integrar os pacotes necessários.
4. Selecione o dispositivo ou simulador desejado e execute o projeto.

## Contribuições

Contribuições são bem-vindas! Se você deseja contribuir com este projeto, sinta-se à vontade para abrir uma issue ou enviar um pull request.

## Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE).

