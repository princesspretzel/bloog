configure :development do 

  ActiveRecord::Base.establish_connection(
    adapter: "postgresql",
    host: "localhost",
    username: "Banana",
    database: "bloog",
    encoding: "utf8"
  )

end

configure :production do 
 DATABASE_URL:  HEROKU_POSTGRESQL_CYAN_URL 

  ActiveRecord::Base.establish_connection(
    adapter: "postgresql",
    host: "ec2-54-204-43-139.compute-1.amazonaws.com",
    username: "jvxcvzjvhmszkc",
    password: "18YutazGa2nsGc42jMvBDmH0Xc",
    database: "db7ofuc7kfq0k5",
    port: "5432"
  )

end