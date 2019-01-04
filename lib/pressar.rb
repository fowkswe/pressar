require 'active_record'
require 'php_serialize'
require 'shortcode'

module Pressar
  autoload :Connection, 'pressar/models/connection'
  autoload :Image, 'pressar/models/image'
  autoload :Option, 'pressar/models/option'
  autoload :Page, 'pressar/models/page'
  autoload :PostMeta, 'pressar/models/post_meta'
  autoload :Post, 'pressar/models/post'
  autoload :TermRelationship, 'pressar/models/term_relationship'
  autoload :TermTaxonomy, 'pressar/models/term_taxonomy'
  autoload :Term, 'pressar/models/term'
  autoload :User, 'pressar/models/user'

  class << self
    attr_accessor :database_credentials
  end
end
