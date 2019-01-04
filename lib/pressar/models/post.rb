module Pressar
  include Connection
  class Post < ActiveRecord::Base
    self.table_name = 'wp_posts'
    self.primary_key = 'ID'

    # paginates_per 5
    has_many :post_metas
    has_many :term_relationships, foreign_key: :object_id

    belongs_to :author, class_name: 'WpUser', foreign_key: :post_author

    scope :published, -> { where(post_status: 'publish').order(post_date: :desc) }

    def primary_image
      if image_id = post_metas.where(meta_key: '_thumbnail_id').first&.meta_value
        Image.find(image_id)
      else
        nil
      end
    end

    def url
      "/blog/#{date_directory}#{post_name}"
    end

    def date_directory
      post_date.strftime('%Y/%m/%d/')
    end

    def tags
      term_relationships.map(&:term_taxonomy).select{|tt| tt.taxonomy == 'post_tag'}.map(&:term)
    end

  end
end
