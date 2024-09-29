# Crypto Moeda Baseada em Ativos

## Visão Geral

Este projeto visa a criação de uma criptomoeda inovadora, respaldada por ativos físicos, com ênfase em ouro. O objetivo é oferecer uma criptomoeda que forneça segurança e estabilidade através de um lastro tangível, diferenciando-se das criptomoedas tradicionais baseadas exclusivamente em algoritmos e confiança no mercado.

## Motivação

A volatilidade do mercado de criptomoedas e a falta de uma base tangível para muitas moedas digitais têm sido um desafio significativo para investidores. Ao vincular a nossa criptomoeda a ativos físicos, especialmente ouro, buscamos proporcionar uma alternativa mais estável e confiável para os investidores e entusiastas do mercado.

## Objetivos do Projeto

- **Criação da Criptomoeda**: Desenvolver uma criptomoeda descentralizada, com um suprimento inicial limitado, respaldada por ativos físicos.
- **Lastro em Ouro**: Estabelecer uma reserva inicial de ouro para garantir o valor intrínseco da moeda.
- **Transparência e Segurança**: Implementar um sistema de auditoria transparente para a reserva de ouro, garantindo que cada moeda em circulação tenha o lastro correspondente.
- **Inovação Tecnológica**: Utilizar as mais recentes tecnologias de blockchain para assegurar transações rápidas, seguras e com baixas taxas.

## Funcionalidades Planejadas

1. **Blockchain Descentralizado**: Um sistema distribuído para registrar todas as transações de maneira segura e imutável.
2. **Reserva de Ativos**: Um mecanismo de auditoria para garantir que o ouro e outros ativos estejam sempre disponíveis como garantia da moeda.
3. **Carteiras Digitais**: Desenvolvimento de carteiras seguras para armazenar e transacionar a criptomoeda.
4. **Sistema de Emissão e Queima**: Mecanismos para emitir novas moedas com base na adição de novos ativos e queimar moedas em circulação caso os ativos correspondentes sejam removidos.

## Estrutura do Projeto

- **`contracts/`**: Contém os contratos inteligentes que governam a criação e transferência da moeda.
- **`wallet/`**: Aplicativo de carteira digital para os usuários armazenarem e transacionarem a criptomoeda.
- **`audit/`**: Scripts e documentos que detalham o processo de auditoria dos ativos físicos que respaldam a moeda.
- **`docs/`**: Documentação do projeto, incluindo whitepaper, estudos de viabilidade e planos de implementação.

## Como Contribuir

1. **Clone o Repositório**:
    ```bash
    git clone https://github.com/USERNAME/REPO-NAME.git
    ```

2. **Crie uma Branch para sua Contribuição**:
    ```bash
    git checkout -b minha-contribuicao
    ```

3. **Faça suas Modificações e Commit**:
    ```bash
    git add .
    git commit -m "Descrição das mudanças"
    ```

4. **Envie sua Branch para o Repositório**:
    ```bash
    git push origin minha-contribuicao
    ```

5. **Crie um Pull Request**: Descreva suas mudanças e aguarde a revisão.

## Próximos Passos

- [ ] Finalizar o desenvolvimento do contrato inteligente.
- [ ] Conectar o contrato inteligente ao sistema de auditoria de ativos.
- [ ] Desenvolver a interface de usuário para a carteira digital.
- [ ] Realizar testes em ambientes de simulação e auditorias de segurança.
- [ ] Lançamento da fase beta para testes públicos.


## Configuração do Banco de Dados

Para configurar o banco de dados, siga os passos abaixo:

1. Certifique-se de que o MariaDB está instalado e em execução.
2. Conecte-se ao MariaDB com um usuário com permissões adequadas,normalmente o root é o usuário padrão, por exemplo:
    ```bash
    mysql -u seu_usuario -p
    ```
3. Execute o script de criação do banco de dados:
    ```sql
    source caminho/para/database_schema.sql;
    ```
4. O banco de dados `cryptoBD` e suas tabelas serão criados.




## Contato

Para mais informações ou dúvidas sobre o projeto, entre em contato com o time de desenvolvimento em [prof.othon.oliveira@gmail.com](mailto:prof.othon.oliveira@gmail.com).
