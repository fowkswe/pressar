module Pressar
  module Models
    class TermTaxonomy < Base
      self.table_name = 'wp_term_taxonomy'
      self.primary_key = 'term_taxonomy_id'
      has_one :term_relationship
      belongs_to :term
    end
  end
end