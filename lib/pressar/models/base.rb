require 'active_record'
class Pressar::Base < ActiveRecord::Base
#   establish_connection 'pressar_test'
#   Pressar.config.database_string #"pressar_#{Rails.env}"

ActiveRecord::Base.establish_connection(
  :adapter  => "sqlite3",
  :host     => "localhost",
  :username => "myuser",
  :password => "mypass",
  :database => "pressar_test"
)
end
