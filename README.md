![ruby](https://img.shields.io/badge/Ruby-%23CC342D?logo=ruby)
![rails](https://img.shields.io/badge/Rails-%23CC0000?logo=rubyonrails)
![psql](https://img.shields.io/badge/PostgreSQL-%234169E1?logo=postgresql&logoColor=%23ffffff)
![docker](https://img.shields.io/badge/Docker-%232496ED?logo=docker&logoColor=%23ffffff)

# Welcome

This is a blueprint of Rails API-only project with JWT token authentication.

# 🥊 Stacks

- Rails 7.0
- Ruby 3.1
- Docker
- Postgres 14

# 🚀 How to start

Simply run

```
docker compose up
```

Setup database

```
docker exec -it rails-api-jwt-app-1 rails db:create db:migrate db:seed
```

# 🔗 Endpoint

Base URL `localhost:3000/api/v1`

```
POST /sign_in -> { email: string, password: string }

GET /products
GET /products/:id
POST /products
PUT /products/:id
DELETE /products/:id

GET /users
GET /users/:id
POST /users
PUT /users/:id
DELETE /users/:id
```
