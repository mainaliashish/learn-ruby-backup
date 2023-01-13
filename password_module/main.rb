require_relative 'crud'

users = [
          { username: "ashish", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]


Crud.create_secure_users(users)
puts Crud.authenticate_user("ashish", "password1", users)