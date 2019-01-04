module Pressar
  module Connection
    ActiveRecord::Base.establish_connection(
      adapter: Pressar.database_credentials[:adapter],
      host: Pressar.database_credentials[:host],
      username: Pressar.database_credentials[:username],
      password: Pressar.database_credentials[:password],
      database: Pressar.database_credentials[:database]
    )
  end
end
