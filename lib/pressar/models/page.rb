module Pressar
  include Connection
  class Page < Post
    has_many :children, class_name: 'Page', foreign_key: :post_parent

    self.inheritance_column = :post_type

    class << self
      def sti_name
        'page'
      end

      def find_sti_class(type_name)
        type_name = self.name
        super
      end

      def home_page
        find(Option.where(option_name: 'page_on_front').first.option_value)
      end
    end
  end
end
