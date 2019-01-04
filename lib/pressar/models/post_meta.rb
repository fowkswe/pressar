module Pressar
  include Connection
  class PostMeta < ActiveRecord::Base
    self.table_name = 'wp_postmeta'
    self.primary_key = 'meta_id'
    belongs_to :post
  end
end
