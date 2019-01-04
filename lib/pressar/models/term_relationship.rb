module Pressar
  include Connection
  class TermRelationship < ActiveRecord::Base
    self.table_name = 'wp_term_relationships'
    self.primary_key = 'object_id'

    belongs_to :posts
    belongs_to :term_taxonomy
  end
end
