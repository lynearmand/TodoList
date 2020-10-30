# TodoList

## API 

### Step 1 : Projet Creation

Let's create the project. <br>
```
    mix phx.new nameProject --no-html --no-webpack
```

Install the necessary dependencies.
```
    mix deps.get
```

We now need to initialize the PostgreSQL database to store the application data.
```
    mix ecto.create
```
In /config/dev.exs, we have :
```
    # Configure your database
    config :bootstrap1, Bootstrap1.Repo,
      username: "postgres",
      password: "postgres",
      database: "bootstrap1_dev",
      hostname: "localhost",
      show_sensitive_data_on_connection_error: true,
      pool_size: 10
```

### Step 2 : Data Schemas

Let’s discuss the notion of relationship between two tables. <br><br>
Being a first data schema corresponding to a user :
 - a firstname 
 - a lastname 
 
A second schema corresponding to a task:

- a title
- a description 
- a staus
- a user

First, generate these two schemas by applying the proper command.
```
mix phx.gen.context Users User users username:string email:string
```

We have :
- Users is the context’s module name.
- User is the schema’s module name.
- users is the database table’s name.
- The rest is field definitions.

Then ‘migrate’ your database with :
```
    mix ecto.migrate
```
The generated migration is stored in the file :
priv/repo/migrations/

The table user_db :

| Column        | Type          |              |
|-------------- |:-------------:| ----------- :|
|id             | bigint        | user_db_pkey |
|first_name     | VARCHAR(255)  |
|last_name      | VARCHAR(255)  |


The table task_db :

| Column        | Type          |               |
|-------------- |:-------------:|------------- :|
|id             | bigint        | task_db_pkey  |
|title          | VARCHAR(255)  |
|description    | text          |
|status         | boolean       |
|user           | integer       |

### Generate Context & Schema

We create the JSON resource. <br>
To do so, we will run a generator similar to the previous one to generate the Context and Schema :
```
mix phx.gen.json Users User users username:string email:string --no-context —no-schema
```

### Routes

Once your database is properly configured and your associations made, we need to set up the routes. <br>
We want to set up a CRUD for user management.<br>
Access the router of your application in the following file : lib/bootstrap1_web/router.ex. <br><br>

For look at the routes created, we have the following command :
```
    mix phx.routes
```
