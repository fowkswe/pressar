module Pressar
  module Models
    class User < ActiveRecord::Base
      self.table_name = 'wp_users'
      has_many :posts, foreign_key: :post_author
      has_many :user_metas, foreign_key: :user_id

      def twitter_url
        "https://www.twitter.com/#{twitter}" unless twitter.nil?
      end

      def twitter
        user_metas.where(meta_key: :user_twitter).last.try(:meta_value)
      end
    end
  end
end