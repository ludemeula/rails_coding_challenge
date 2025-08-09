
# Rails Coding Challenge

Este projeto é uma aplicação Rails 5.2 com PostgreSQL que contém erros propositais e funcionalidades incompletas para você corrigir e implementar.

## Setup

1. Instale as gems:
   ```
   bundle install
   ```
2. Configure o PostgreSQL localmente (atenção que a porta está configurada errada propositalmente em config/database.yml)
3. Crie os bancos:
   ```
   rails db:create
   rails db:migrate
   ```
4. Execute os testes:
   ```
   rspec
   ```

## Funcionalidades para corrigir e implementar

- Corrigir a configuração do banco (porta errada) ok
- Ajustar as validações do model User (atualmente permite usuários sem email)
- Corrigir os controllers para seguirem boas práticas (exemplo: falta de strong params, ações incompletas)
- Implementar corretamente a autenticação com Devise (atualmente não permite login)
- Completar a associação entre User e Post, corrigir erros nos controllers de Post
- Ajustar e completar os testes que estão falhando

---

Boa sorte! Divirta-se corrigindo e aprendendo.
