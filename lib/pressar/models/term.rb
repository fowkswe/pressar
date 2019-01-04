module Pressar
  include Connection
  class Term < ActiveRecord::Base
    self.table_name = 'wp_terms'
    self.primary_key = 'term_id'

    has_one :term_taxonomy
  end
end
