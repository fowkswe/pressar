module Pressar
  module Models
    class PostMeta < Base
      self.table_name = 'wp_postmeta'  
      belongs_to :post
    end
  end
end
