
# Pipeline jenkins-app service azure
Pipeline usada no jenkins para executar entrega continua de aplicação java em um app service da Azure





## Referência

 - https://learn.microsoft.com/pt-br/cli/azure/create-an-azure-service-principal-azure-cli
 - https://www.jenkins.io/doc/book/pipeline/jenkinsfile/

 
 


## Utilização

- Modelo de pipeline para otimizar um deploy de uma App service na azure usando a ferramente jenkins 
1. É necessario criar uma entidade de serviço do Azure e executar a instalação do CLI no servidor do jenkins
2. Crie as variaveis de credencial do azure no jenkins usando secret text.
3. Adicione um job no jenkins com pipeline 
4. Remova **** pelas informações da entidade de service e nos comandos az substitua **** pelas informações do App service.
5. É possivel automatizar este codigo para leitura de versionamento das imagens. porem esta estrutura está simples e reduzida para facilitar a adaptação em outro projetos.



