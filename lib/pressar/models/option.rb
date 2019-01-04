module Pressar
  include Connection
  class Option < ActiveRecord::Base
    self.table_name = 'wp_options'
    self.primary_key = 'option_id'
  end
end
