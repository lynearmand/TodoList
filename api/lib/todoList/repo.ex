defmodule TodoList.Repo do
  use Ecto.Repo,
    otp_app: :todoList,
    adapter: Ecto.Adapters.Postgres
end
