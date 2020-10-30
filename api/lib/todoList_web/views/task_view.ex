defmodule TodoListWeb.TaskView do
  use TodoListWeb, :view
  alias TodoListWeb.TaskView

  def render("index.json", %{tasks: tasks}) do
    %{data: render_many(tasks, TaskView, "task.json")}
  end

  def render("show.json", %{task: task}) do
    %{data: render_one(task, TaskView, "task.json")}
  end

  def render("task.json", %{task: task}) do
    %{id: task.id,
      title: task.title,
      description: task.description,
      status: task.status,
      user_id: task.user_id
    }
  end
end
