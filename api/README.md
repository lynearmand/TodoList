# TodoList

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
  
## Routes enables
```
    GET /api/users :index
    POST /api/users :create

    GET /api/users/:id :show
    PATH /api/users/:id :update
    PUT /api/users/:id :update
    DELETE /api/users/:id :delete

    GET /api/tasks :index
    POST /api/tasks :create

    GET /api/tasks/:id :show
    PATH /api/tasks/:id :update
    PUT /api/tasks/:id :update
    DELETE /api/tasks/:id :delete
```
